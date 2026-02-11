// Scarface's Deleveler
// This Will Take 2 Levels from A Player Then Give Them back
// So The Player May Correct A Level Mistake
void main()
{
    object oPC = GetPCSpeaker();
    int iXP = GetXP(oPC);
    SetXP(oPC, GetXP(oPC)-(GetHitDice(oPC)-1)*1000);
    DelayCommand(0.2, SetXP(oPC, GetXP(oPC)-(GetHitDice(oPC)-1)*1000));
    DelayCommand(0.5,  SetXP(oPC, iXP));
}
