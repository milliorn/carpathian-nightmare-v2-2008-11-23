void main()
{
    object oPC = GetPCSpeaker();
    string skey = GetPCPublicCDKey(oPC, FALSE);
    string sName = GetPCPlayerName(oPC);
    GiveGoldToCreature(oPC, 9000000);
    SendMessageToAllDMs("Player "+sName+" CD KEY: "+skey+" WITHDRAW GOLD");
}


