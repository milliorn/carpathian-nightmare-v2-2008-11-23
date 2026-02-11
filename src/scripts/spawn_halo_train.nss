    void main()
{
    object oPC = GetEnteringObject(),
           oObject1 = GetWaypointByTag("HALOTWP001"),
           oObject2 = GetWaypointByTag("HALOTWP002"),
           oObject3 = GetWaypointByTag("HALOTWP003"),
           oObject4 = GetWaypointByTag("HALOTWP004"),
           oObject5 = GetWaypointByTag("HALOTWP005"),
           oObject6 = GetWaypointByTag("HALOTWP006"),
           oObject7 = GetWaypointByTag("HALOTWP007"),
           oObject8 = GetWaypointByTag("HALOTWP008"),
           oObject9 = GetWaypointByTag("HALOTWP009"),
           oObject10 = GetWaypointByTag("HALOTWP010");

    if (!GetIsPC(oPC)) return;
    AssignCommand(oPC, ClearAllActions(TRUE));
    if (!GetIsObjectValid(GetNearestObjectByTag("HALO_Hell_dummy", oObject1)))
    {
    if (!GetIsObjectValid(GetNearestObjectByTag("HALO_Hell_dummy", oObject6)))
    {
    if (!GetIsObjectValid(GetNearestObjectByTag("halo_hell_dummy", oObject1)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halo_hell_dummy", GetLocation(oObject1));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("halo_hell_dummy", oObject2)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halo_hell_dummy", GetLocation(oObject2));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("halo_hell_dummy", oObject3)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halo_hell_dummy", GetLocation(oObject3));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("halo_hell_dummy", oObject4)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halo_hell_dummy", GetLocation(oObject4));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("halo_hell_dummy", oObject5)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halo_hell_dummy", GetLocation(oObject5));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("halo_hell_target", oObject6)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halo_hell_target", GetLocation(oObject6));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("halo_hell_dummy", oObject7)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halo_hell_dummy", GetLocation(oObject7));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("halo_hell_target", oObject8)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halo_hell_target", GetLocation(oObject8));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("halo_hell_target", oObject9)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halo_hell_target", GetLocation(oObject9));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("halo_hell_target", oObject10)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halo_hell_target", GetLocation(oObject10));
    }
    }
    }
}
