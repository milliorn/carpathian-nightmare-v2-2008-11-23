#include "nwnx_realtime"
#include "aps_include"
#include "_colour_codes"
#include "jail_timer"
#include "sf_hack_inc"

int HastheItem(object oCreature, string s)
{
    return  GetIsObjectValid(GetItemPossessedBy(oCreature, s));
}

void DestroyItems(object oPC, string sItem)
{
    if(HastheItem(oPC, sItem) == TRUE)
    {
        string sName = GetName(oPC);
        string sCDKEY = GetPCPublicCDKey(oPC);

        SpeakString("<cú>ATTENTION!!!</c> PLAYER: <cú>"+sName+
        "</c> CDKEY <cú>"+sCDKEY+"</c> duped item detected an destroyed!", TALKVOLUME_SHOUT);
        SendMessageToPC(oPC, "<cú>SERVER Message: </c>Duplicate Item Destroyed!"+
        " Action reported to <cú>SERVER </c>an <cú>{DM}'s.");
        DestroyObject(GetItemPossessedBy(oPC, sItem));
    }
}

void Apollo(object oPC)
{
    if (GetPersistentInt(oPC, "WAS_CRAFTING", "Hermes") == TRUE)
    {
        string sCraftedItem = GetPersistentString(oPC, "CRAFT_OBJECT", "Hermes");
        DestroyItems(oPC, sCraftedItem);
        DeletePersistentVariable(oPC, "WAS_CRAFTING", "Hermes");
        DeletePersistentVariable(oPC, "CRAFT_OBJECT", "Hermes");
    }
}

void NameChecker(object oPC)
{
    object oServer = GetObjectByTag("server_npc");
    string sName = GetStringUpperCase(GetName(oPC));

    if (FindSubString(sName, "SERVER")      >= 0  ||
        FindSubString(sName, "BITCH")       >= 0  ||
        FindSubString(sName, "BASTARD")     >= 0  ||
        FindSubString(sName, "FUCK")        >= 0  ||
        FindSubString(sName, "SHIT")        >= 0  ||
        FindSubString(sName, "RAPIST")      >= 0  ||
        FindSubString(sName, "HITLER")      >= 0  ||
        FindSubString(sName, "WHORE")       >= 0  ||
        FindSubString(sName, "ASSHOLE")     >= 0  ||
        FindSubString(sName, "CRAP")        >= 0)
    {
        AssignCommand(oServer, SpeakString("<cÌwþ> Entering Player: " + sName+
       "<có  > NAME IS PROHIBITED.", TALKVOLUME_SHOUT));
        ClearAllActions(FALSE);
        PopUpDeathGUIPanel(oPC, FALSE, FALSE, 0, "<c > Error!!!!  NAMES (SERVER"+
        " BITCH, BASTARD, FUCK, SHIT, RAPIST, HITLER, WHORE, ASSHOLE, CRAP"+
        " IS PROHIBITED");
        EffectCutsceneGhost();
        EffectCutsceneImmobilize();
    }
}




/*void DMCheck(object oPC)
{
    string sName = GetPCPublicCDKey(oPC);
    string sLogin = GetPCPlayerName(oPC);
    string sTime = GetServerDateTime();

    if (sName == "QG6CXEYC" || //milliorn
        sName == "Q76A43RL" || //milliorn
        sName == "QG6QREW7" || //fooshwa
        sName == "QC79CL3G" || //Elwoodini
        sName == "QVR9HDJH" || //Elwoodini
        sName == "QV69QWHT" || //The Bloodless
        sName == "Q76AMR3T" || //darryhick
        sName == "QG6L7N3D" || //goldenpanda
        sName == "QGM9NWGF" || //Jasper Tbe Swift
        sName == "QGML66J4" || //Lady Mistress of ACN & Yoda
        sName == "FFUCKG7Y" || //vvn
        sName == "QCRWUXFF")   //Bassbastard
    {

        SendMessageToAllDMs("Entering DM's CD Key has been VERIFIED: " + sName+" Account: "+GetPCPlayerName(GetEnteringObject())+ " IP: "+GetPCIPAddress(oPC));
        WriteTimestampedLogEntry("Entering DM's CD Key has been VERIFIED: " + sName+" Account: "+GetPCPlayerName(GetEnteringObject())+ " IP: "+GetPCIPAddress(oPC));
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, SupernaturalEffect(EffectVisualEffect(VFX_DUR_PROT_EPIC_ARMOR_2)), oPC);
        SetCampaignString("DM_LOGIN", sTime, sLogin + "_" + sName, oPC);
    }

    else
    {
        SendMessageToAllDMs("Entering DM's CD Key has been DENIED: " + sName+" Account: "+GetPCPlayerName(GetEnteringObject())+ " IP: "+GetPCIPAddress(oPC));
        WriteTimestampedLogEntry("Entering DM's CD Key has been DENIED: " + sName+" Account: "+GetPCPlayerName(GetEnteringObject())+ " IP: "+GetPCIPAddress(oPC));
        BootPC(oPC);
    }
}
*/
void ReEquipItem(object oItem, object oPC)
{
    AssignCommand(oPC, ClearAllActions());
    AssignCommand(oPC, ActionUnequipItem(oItem));
    AssignCommand(oPC, ActionEquipItem(oItem, INVENTORY_SLOT_NECK));
}

//void ACNLogin(object oPC)
void main()
{
    object oItem = GetItemInSlot(INVENTORY_SLOT_NECK, oPC);
    object oPC = GetEnteringObject();
    object oLeftHand = GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC);
    object oRightHand = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC);
    object oArmor = GetItemInSlot(INVENTORY_SLOT_CHEST, oPC);
    effect eEffect = EffectCutsceneImmobilize();
    string sName = GetName(oPC),
           sLogInName = GetPCPlayerName(oPC),
           sCDKEY = GetPCPublicCDKey(oPC, FALSE);
    string Script = GetLocalString(oPC, "LetoScript");
    string sArea = GetTag(GetArea(oPC));

/*    if (GetIsDM(oPC))
    {
        DMCheck(oPC);
        return;
    }
*/


    if (GetXP(oPC) == 0 && PlayerValidityCheck(oPC) == FALSE)
    {
        SpeakString("<cú>Hacked PC login detected!  <cúúú>"
        +sName+" - "+sAcct+" - "+sKey+
        " <cú># of Feats: <cúú>"             +sFeatTotal+"/"+sNumFeatsClass+
        " <cú># of Skill Points: <cúú>"      +sSkillTotal+"/56"+
        " <cú># of Ability Points: <cúú>"    +sTotalAbility+"/78", TALKVOLUME_SHOUT);

        CreateItemOnObject("hacker", oPC);
        SetXP(oPC, 1);
        ClearAllActions();
        DelayCommand(5.0, AssignCommand(oPC, JumpToLocation(GetLocation(GetWaypointByTag("WP_HACKER")))));
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectCutsceneImmobilize(), oPC, 5.0);

        SpeakString(sName + " <cú> # of Feats: <cúú>"             +sFeatTotal+"/"+sNumFeatsClass+
                            "<cú> # of Skill Points: <cúú>"      +sSkillTotal+"/56"+
                            "<cú> # of Ability Points: <cúú>"    +sTotalAbility+"/78", TALKVOLUME_SHOUT);

        WriteTimestampedLogEntry(sName + " # of Feats: <cúú>"        +sFeatTotal+"/"+sNumFeatsClass+
                                 " # of Skill Points: <cúú>"      +sSkillTotal+"/56"+
                                 " # of Ability Points: <cúú>"    +sTotalAbility+"/78"); return;

    }

    if (GetXP(oPC) == 0 && PlayerValidityCheck(oPC) == TRUE)
    {
        SpeakString("<cú>New Character validated!", TALKVOLUME_SHOUT);
        SendMessageToAllDMs(sName + "<cú> # of Feats: <cúú>"             +sFeatTotal+"/"+sNumFeatsClass+
                            "<cú> # of Skill Points: <cúú>"      +sSkillTotal+"/52"+
                            "<cú> # of Ability Points: <cúú>"    +sTotalAbility+"/78");

        WriteTimestampedLogEntry(sName + " # of Feats: "        +sFeatTotal+"/"+sNumFeatsClass+
                                 "# of Skill Points: "      +sSkillTotal+"/56"+
                                 "# of Ability Points: "    +sTotalAbility+"/78");
    }

    if (sArea == "MemnoksLair" ||
        sArea == "RAVANA_BOSS" ||
        sArea == "GauntletExodus")
    {
        FloatingTextStringOnCreature("<cú>LOGIN RESTRICTED ON THIS MAP." +
        "YOU HAVE BEEN PORTED OUT BY SCRIPT</c>", oPC, TRUE);
        SendMessageToPC(oPC, "<cú>LOGIN RESTRICTED ON THIS MAP." +
        "YOU HAVE BEEN PORTED OUT BY SCRIPT</c>");
        SpeakString(GetName(oPC, TRUE)+ "<cú>has been ported out of a NO LOGIN ZONE == </c>" +sArea, TALKVOLUME_SHOUT);
        ActionJumpToLocation(GetStartingLocation());
    }

    if ( Script != "")
    {
        SetLocalString(oPC, "LetoScript", "");
    }

    if (!GetIsObjectValid(GetItemPossessedBy(oPC, "sf_recall")))
    {
        //CheckPlayerName(oPC);
        ValidateName(oPC);
    }

    if (GetIsObjectValid(GetItemPossessedBy(oPC, "jail_token")))
    {
        JailPlayer(oPC);
    }

    if (GetIsObjectValid(oItem))
    {
        ReEquipItem(oItem, oPC);
    }

    if (GetIsObjectValid(GetItemPossessedBy(oPC, "hacker")))
    {
        AssignCommand(oPC, JumpToLocation(GetLocation(GetWaypointByTag("WP_HACKER"))));
    }

    if (GetIsObjectValid(oLeftHand) ||
        GetIsObjectValid(oRightHand) ||
        GetIsObjectValid(oArmor))
    {
        IPRemoveAllItemProperties(oLeftHand, DURATION_TYPE_TEMPORARY);
        IPRemoveAllItemProperties(oRightHand, DURATION_TYPE_TEMPORARY);
        IPRemoveAllItemProperties(oArmor, DURATION_TYPE_TEMPORARY);
    }

    if (HastheItem(oPC, "X0_CLOTH001"))
    {
        oItem = GetObjectByTag("X0_CLOTH001");
        IPSafeAddItemProperty(oItem, ItemPropertySkillBonus(SKILL_HIDE, 5));
    }

    SpeakString("<c ó >Player: <cfÌþ>"+sName+
    "<c ó > - Account: <cfÌþ>"+sLogInName+"<c ó > - ID: <cfÌþ>"+sCDKEY, TALKVOLUME_SHOUT);
    WriteTimestampedLogEntry("Player: "+sName+" Account: "+sLogInName+" - ID: "
    +sCDKEY+" IP: "+GetPCIPAddress(oPC));
    SendMessageToAllDMs(GetPCIPAddress(oPC));
    NameChecker(oPC);
    Apollo(oPC);
    ApplyBountyFlag(oPC);
}

/*void main(){}
