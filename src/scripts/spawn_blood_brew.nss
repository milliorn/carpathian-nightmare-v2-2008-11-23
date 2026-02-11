void main()
{
    object oPC = GetEnteringObject(),
           oObject = GetWaypointByTag("WP_BLOOD_BARTENDER");

    AssignCommand(oPC, ClearAllActions(TRUE));

    if (!GetIsObjectValid(GetNearestObjectByTag("curst007", oObject)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "curst007", GetLocation(oObject));
    }
}
