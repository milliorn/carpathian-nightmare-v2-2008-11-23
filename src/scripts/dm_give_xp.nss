void main()
{
    object oPC = GetPCSpeaker();
    GiveXPToCreature(oPC, 819999);

string skey = GetPCPublicCDKey(oPC, FALSE);
string sName = GetPCPlayerName(oPC);

SendMessageToAllDMs("Player "+sName+" CD KEY: "+skey+" WITHDRAW XP");

}
