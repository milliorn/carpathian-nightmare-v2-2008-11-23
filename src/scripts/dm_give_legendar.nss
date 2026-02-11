void main()
{
    object oPC = GetPCSpeaker();
    GiveXPToCreature(oPC, 18000000);

string skey = GetPCPublicCDKey(oPC, FALSE);
string sName = GetPCPlayerName(oPC);

SendMessageToAllDMs("Player "+sName+" CD KEY: "+skey+" WITHDRAW XP");

}
