void main()
{
    object oPC = GetPCSpeaker();
    object oTarget = GetWaypointByTag("SouthMerkwood_WP1");
    location lTarget = GetLocation(oTarget);
    AssignCommand(oPC, ClearAllActions());
    AssignCommand(oPC, ActionJumpToLocation(lTarget));
}
