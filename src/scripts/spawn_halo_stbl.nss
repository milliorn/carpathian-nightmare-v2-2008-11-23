    void main()
{
    object oPC = GetEnteringObject(),
           oObject1 = GetWaypointByTag("HALO_WP_ST1"),
           oObject2 = GetWaypointByTag("HALO_WP_ST2"),
           oObject3 = GetWaypointByTag("HALO_WP_ST3"),
           oObject4 = GetWaypointByTag("HALO_WP_ST4");

    if (!GetIsPC(oPC)) return;
    AssignCommand(oPC, ClearAllActions(TRUE));
    if (!GetIsObjectValid(GetNearestObjectByTag("halomount002", oObject1)))
    {
    if (!GetIsObjectValid(GetNearestObjectByTag("halomount001", oObject3)))
    {
    if (!GetIsObjectValid(GetNearestObjectByTag("halomount002", oObject1)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halomount002", GetLocation(oObject1));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("halomount001", oObject2)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halomount001", GetLocation(oObject2));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("halomount002", oObject3)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halomount002", GetLocation(oObject3));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("halomount001", oObject4)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halomount001", GetLocation(oObject4));
    }
    }
    }
}
