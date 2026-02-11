void main()
{
    object oPC = GetEnteringObject(),
     oObject = GetWaypointByTag("HALO_SHOP");

    AssignCommand(oPC, ClearAllActions(TRUE));

    if (!GetIsObjectValid(GetNearestObjectByTag("halooutfitter", oObject)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "halooutfitter", GetLocation(oObject));
    }
}
