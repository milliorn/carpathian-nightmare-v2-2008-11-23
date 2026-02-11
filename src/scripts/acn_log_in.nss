// Milliorn's ClientOnEnter script
//Edited by Dorrian
#include "sfsubr_functs"
#include "inc_guild"
#include "inc_ban"
#include "pw_inc_anticheat"
void main()
{
    object oPC = GetEnteringObject();
    string sCDKey = GetPCPublicCDKey(oPC),
           sIP = GetPCIPAddress(oPC),
           sLogInName = GetPCPlayerName(oPC);

    if (GetIsDM(oPC))
    {
        ExecuteScript("dm_client_login", OBJECT_SELF);
        return;
    }

//Set up Database for CD keys
    SetCampaignString("CDKeyIP", sCDKey+"_"+sIP, sIP, oPC);


    SF_SubraceOnEnter(oPC);
    ACNGuildVFX(oPC);
    LoadPlayerInfo(oPC);

    ExecuteScript("acn_journal", OBJECT_SELF);
    ExecuteScript("fky_chat_clenter", OBJECT_SELF);
    ExecuteScript("inc_login", OBJECT_SELF);
    ExecuteScript("x3_mod_alt_enter", OBJECT_SELF);

    DelayCommand(6.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_UNDEAD_DRAGON), GetStartingLocation()));
    ApplyEffectToObject(DURATION_TYPE_PERMANENT, SupernaturalEffect(EffectHaste()), oPC);
    SetLocalInt(oPC, "SUMMONSPAM", TRUE);
    DelayCommand(TurnsToSeconds(1), SetLocalInt(oPC, "SUMMONSPAM", FALSE));

//    if (!GetIsDM(oPC) &&
//         GetHasFeat(FEAT_HIDE_IN_PLAIN_SIGHT, oPC) &&
//         !HasItem(oPC, "x2_it_koboldcomm"))
//    {
//        RemoveHips(oPC);
//        return;
//    }

//Ban script to sync with Newcastle
    CheckBannedPC(oPC, sCDKey, sLogInName);

    if (!GetIsDM(oPC) &&
              GetHasFeat(FEAT_BONE_SKIN_6, oPC))
    {
        RemoveBoneSkin(oPC);
        return;
    }
}
