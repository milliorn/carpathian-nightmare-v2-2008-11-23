void main()
{
    object oPC = GetPCSpeaker();
    object oTarget = GetWaypointByTag("ShoresofDespairWP0");
    location lTarget = GetLocation(oTarget);
    AssignCommand(oPC, ClearAllActions());
    AssignCommand(oPC, ActionJumpToLocation(lTarget));
}
