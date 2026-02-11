void main()
{
    object oPC = GetLastUsedBy(),
           oLastUser = GetLocalObject(OBJECT_SELF, "LAST_USER");

    if (GetIsDM(oPC)) return;
    if (GetIsObjectValid(oLastUser) && oLastUser != oPC)
    {
        AssignCommand(oPC, ClearAllActions());
        AssignCommand(oPC, ActionMoveAwayFromObject(OBJECT_SELF, TRUE));
        FloatingTextStringOnCreature("This Deposit Box is in use.  Find another chest to use.", oPC);
        SendMessageToAllDMs(GetName(oPC) + " is trying to open a Deposit Box that is in use " + GetName(OBJECT_SELF));
    }
}
