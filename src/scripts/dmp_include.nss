//:: dmp_include
#include "tokenizer_inc"
#include "x0_i0_transport"

object oMod = GetModule();

void dmpSetPortalTokens();
void dmp_RemoveLink(object oPortal);
void dmp_DeletePortalFromList(string sToken, string sPortalList);
int dmpGetPortalCount();
void dmpCreatePortal();
void dmpPortPlayer(object oPC);
void dmpOnActivate();
void dmpOnPortalUsed();
void dmpSetPortalTag(object oDM, int nPortal);
void dmpSetPortalLink(object oDM, int nPortal);
void dmpDestroyPortal(object oDM);

//--------------------------------------------------------------------------------------------------
//:: Sets the custom token strings used in the Portal creation conversation.
void dmpSetPortalTokens()
{
    object oPortal;
    string sPortalTag, sPortalList;
    int i, nCount;

    sPortalList = GetLocalString(oMod, "dmp_portal_list"); // List of stored portal tags.
    nCount = GetTokenCount(sPortalList, "#"); // Number of tags stored
    for(i=1;i<=nCount;i++) // Loop through each one and set a custom token
    {
        sPortalTag = GetTokenFromString(i, sPortalList, "#");
        if(sPortalTag != "")
        {
            oPortal = GetObjectByTag(sPortalTag);
            if(oPortal != OBJECT_INVALID) // Make sure portal exists
            {
                object oArea = GetArea(oPortal);
                string sToken = sPortalTag+ " in " +GetName(oArea);
                SetCustomToken(303030+i, sToken);
                SetLocalString(OBJECT_SELF, "dmp_portal_"+IntToString(i), sPortalTag);
            } else { // Portal doesn't exist
                DeleteLocalString(OBJECT_SELF, "dmp_portal_"+IntToString(i));
                dmp_DeletePortalFromList(sPortalTag, sPortalList);
            }
        } //else { // Portal Tag is empty?  Don't think this will ever happen
        //    DeleteLocalString(OBJECT_SELF, "dmp_portal_"+IntToString(i));
        //    DeleteTokenFromString(sPortalTag, sPortalList, "#");
        //}
    }
    DeleteStringFromTokenCache(sPortalList); //Clear this string from the cache
}

void dmp_RemoveLink(object oPortal)
{
    DeleteLocalString(oPortal, "dmp_link");
}

void dmp_DeletePortalFromList(string sToken, string sPortalList)
{
    string sNewList = DeleteTokenFromString(sToken, sPortalList, "#");
    SetLocalString(oMod, "dmp_portal_list", sNewList);
}

//:: Returns the number of portal tags stored in the token list
int dmpGetPortalCount()
{
    string sPortalList = GetLocalString(oMod, "dmp_portal_list");
    int nCount = GetTokenCount(sPortalList, "#");
    return nCount;
}

//:: Creates the portal using the variables stored on the user.  The created portal is given a tag of
//:: "dmp_portal_" + Hour + Seconds.
void dmpCreatePortal()
{
    string sPortal = GetLocalString(OBJECT_SELF, "dmp_portal_tag"); //Tag of portal to link to, if any
    string sType = GetLocalString(OBJECT_SELF, "dmp_type"); // Type of portal to create
    location lLoc = GetLocalLocation(OBJECT_SELF, "dmp_location"); // Location to create the portal
    string sPortalTag = "dmp_portal_" +IntToString(GetTimeHour())+IntToString(GetTimeSecond()); //New tag for portal
    object oPortal = CreateObject(OBJECT_TYPE_PLACEABLE, "dmp_portal_"+sType, lLoc, FALSE, sPortalTag); // Create the portal
    SetLocalString(oPortal, "dmp_link", sPortal); // Set the variable to link this new portal to an existing portal
    SendMessageToPC(OBJECT_SELF, "This portal is " +sPortalTag); // Send the creator a message so they know which portal this is
    string sPortalList = GetLocalString(oMod, "dmp_portal_list"); //Get the list stored in module so we can append this tag to it
    DeleteLocalString(OBJECT_SELF, "dmp_portal_tag");
    if(sPortalList == "")
        SetLocalString(oMod, "dmp_portal_list", sPortalTag); //No list stored yet
    else
        SetLocalString(oMod, "dmp_portal_list", sPortalList+ "#" + sPortalTag); //Append to existing list

}

//:: Teleport the player + companions to other portal.
void dmpPortPlayer(object oPC)
{
    string sPortal = GetLocalString(OBJECT_SELF, "dmp_link");
    location lLoc = GetLocation(GetObjectByTag(sPortal));
    effect eEffect = EffectVisualEffect(VFX_FNF_SUMMON_MONSTER_1);
    DelayCommand(3.0, TransportToLocation(oPC, lLoc));
    if(!GetIsDM(oPC))
        DelayCommand(3.1, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eEffect, lLoc));
}

//:: On Activate script.  Start the create portal conversation.
void dmpOnActivate()
{
    object oDM = GetItemActivator();
    location lLoc = GetItemActivatedTargetLocation();

    if(!GetIsDM(oDM)) return;
    SetLocalLocation(oDM, "dmp_location", lLoc);
    AssignCommand(oDM, ActionStartConversation(OBJECT_SELF, "dmp_conv", TRUE, FALSE));
}

//:: If a DM uses the portal, start conversation.  If it's a player then port them.
void dmpOnPortalUsed()
{
    object oPC = GetLastUsedBy();
    if(GetIsDM(oPC))
    {
        ActionStartConversation(oPC, "dmp_conv", TRUE, FALSE);
        SetLocalString(oPC, "dmp_portal", GetTag(OBJECT_SELF));
    }
    else
    {
        effect eEffect = EffectVisualEffect(VFX_IMP_UNSUMMON);
        location lLoc = GetLocation(OBJECT_SELF);
        AssignCommand(oPC, JumpToLocation(lLoc));
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eEffect, OBJECT_SELF);
        dmpPortPlayer(oPC);
    }
}

//:: Set the tag of the portal used later to link the newly created portal too.
void dmpSetPortalTag(object oDM, int nPortal)
{
    string sPortal = GetLocalString(oDM, "dmp_portal_" +IntToString(nPortal));
    SetLocalString(oDM, "dmp_portal_tag", sPortal);
}

//:: Link this portal to another.
void dmpSetPortalLink(object oDM, int nPortal)
{
    string sPortal = GetLocalString(oDM, "dmp_portal_" +IntToString(nPortal));
    SetLocalString(OBJECT_SELF, "dmp_link", sPortal);
    SendMessageToPC(oDM, "This portal is now linked to " +sPortal);
}

//:: Destroy portal from conv.  Remove the portals tag from the token list as well.
void dmpDestroyPortal(object oDM)
{
    string sPortalTag = GetTag(OBJECT_SELF);
    string sPortalList = GetLocalString(oMod, "dmp_portal_list");
    dmp_DeletePortalFromList(sPortalTag, sPortalList);
    DeleteStringFromTokenCache(sPortalList);
    DestroyObject(OBJECT_SELF);
}

//void main() {}
