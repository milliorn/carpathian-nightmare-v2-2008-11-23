#include "nwnx_realtime"
void main()
{
    object oPC = GetEnteringObject();
    string sName = GetPCPublicCDKey(oPC);
    string sLogin = GetPCPlayerName(oPC);
    string sTime = GetServerDateTime();

    if (sName == "QG6DVQUE" /*Dorrian*/ ||  sName == "QG6ECNPX" /*Laptop*/ ||
        sName == "QG6DVL7U" /*Shimmer*/|| sName == "QGMQ47EY" /*CD 4*/ ||

        sName == "QG6CXEYC" || //milliorn
        sName == "Q76A43RL" || //milliorn
        sName == "QG6QREW7" || //fooshwa
        sName == "Q7KLK4VM" || //YeahToast
        //sName == "QC79CL3G" || //Elwoodini
        //sName == "QVR9HDJH" || //Elwoodini
        //sName == "QV69QWHT" || //The Bloodless
        //sName == "Q76AMR3T" || //darryhick
        //sName == "QG6L7N3D" || //goldenpanda
        //sName == "QGM9NWGF" || //Jasper Tbe Swift
        //sName == "QGML66J4" || //Lady Mistress of ACN & Yoda
        //sName == "FFUCKG7Y" || //vvn
        sName == "QCRWUXFF")   //Bassbastard
    {
        SendMessageToAllDMs("Entering DM's CD Key has been VERIFIED: " + sName+" Account: "+GetPCPlayerName(GetEnteringObject())+ " IP: "+GetPCIPAddress(oPC));
        WriteTimestampedLogEntry("Entering DM's CD Key has been VERIFIED: " + sName+" Account: "+GetPCPlayerName(GetEnteringObject())+ " IP: "+GetPCIPAddress(oPC));
        //ApplyEffectToObject(DURATION_TYPE_PERMANENT, SupernaturalEffect(EffectVisualEffect(VFX_DUR_PROT_EPIC_ARMOR_2)), oPC);
        SetCampaignString("DM_LOGIN", sTime, sLogin + "_" + sName, oPC);
        ExecuteScript("fky_chat_clenter", OBJECT_SELF);
        ExecuteScript("acn_journal", OBJECT_SELF);
        return;
    }

    else
    {
        SendMessageToAllDMs("Entering DM's CD Key has been DENIED: " + sName+" Account: "+GetPCPlayerName(GetEnteringObject())+ " IP: "+GetPCIPAddress(oPC));
        WriteTimestampedLogEntry("Entering DM's CD Key has been DENIED: " + sName+" Account: "+GetPCPlayerName(GetEnteringObject())+ " IP: "+GetPCIPAddress(oPC));
        BootPC(oPC);
    }
}
