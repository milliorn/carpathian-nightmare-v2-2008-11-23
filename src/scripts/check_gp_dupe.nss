void main()
{
    object oPC = GetEnteringObject(),
           oItem = GetFirstItemInInventory(oPC),
           oExamine = GetObjectByTag("EXAMINE_ME");
    string oPC1 = GetName(oPC, FALSE),
           oPC2 = GetPCIPAddress(oPC),
           oPC3 = GetPCPlayerName(oPC),
           oPC4 = GetPCPublicCDKey(oPC, FALSE);

    if (GetGold(oPC) >= 100000000)
    {
        DelayCommand(1.3, AssignCommand(oPC, TakeGoldFromCreature(GetGold(oPC), oPC, TRUE)));
        DelayCommand(3.5, AssignCommand(oPC, ClearAllActions()));
        DelayCommand(4.0, AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetWaypointByTag("WP_INVALID_CHAR")))));
        DelayCommand(1.5, SendMessageToPC(oPC, "PUNISHED FOR GOLD EXPLOIT!!!"));
        DelayCommand(2.0, FloatingTextStringOnCreature("PUNISHED FOR GOLD EXPLOIT!!!", oPC));
        DelayCommand(2.5, SpeakString("PLAYER: " +oPC1+" CDKEY: "+oPC4+
        " PUNISHED FOR GOLD EXPLOIT!!!", TALKVOLUME_SHOUT));
        DelayCommand(0.5, SendMessageToAllDMs("PLAYER: "+oPC1+ "ACCOUNT: "+oPC3+
        " CD KEY: " +oPC4+" IP: "+oPC2+" SENT TO HACKERS FOR GOLD EXPLOIT!"));
    }
    else

        if (!GetLocalInt(oPC, "EXAMINE") && GetIsPC(oPC) && !GetIsDM(oPC))
        {
            AssignCommand(oPC, ClearAllActions());
            AssignCommand(oPC, ActionExamine(oExamine));
            SetLocalInt(oPC, "EXAMINE", TRUE);
        }
}
