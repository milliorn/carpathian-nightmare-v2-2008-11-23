// Gauntlet Token Prize Script
void main()
{
    // Variables
    object oPC = GetPCSpeaker();
    string sName = GetName(oPC),
    sLogInName = GetPCPlayerName(oPC),
    sCDKEY = GetPCPublicCDKey(oPC, FALSE),
    sIP = GetPCIPAddress(oPC);
    int iReward = Random(99999) +1 ;
    string sReward = IntToString(iReward);

    if (iReward <= 10000)iReward = 10000;

    GiveGoldToCreature(oPC, iReward);
    GiveXPToCreature(oPC, iReward);
    SendMessageToAllDMs("<c ó >Player: <cfÌþ>"+sName+"<c ó > - Account: <cfÌþ>"+sLogInName+
    "<c ó > - ID: <cfÌþ>"+sCDKEY+"<c ó > IP: <cfÌþ>"+sIP+" has been rewarded "+sReward+
    " GP/XP in Ravana");
}
