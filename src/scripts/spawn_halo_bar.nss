void main()
{
    object oPC = GetEnteringObject(),
           oObject = GetWaypointByTag("HALO_BAR");

    AssignCommand(oPC, ClearAllActions(TRUE));

    if (!GetIsObjectValid(GetNearestObjectByTag("barkeepin", oObject)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "barkeepin", GetLocation(oObject));
    }
}
