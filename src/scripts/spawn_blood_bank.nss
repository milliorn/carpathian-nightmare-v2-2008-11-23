void main()
{
    object oPC = GetEnteringObject(),
           oObject = GetWaypointByTag("WP_BLOOD_SK");

    AssignCommand(oPC, ClearAllActions(TRUE));

    if (!GetIsObjectValid(GetNearestObjectByTag("vampire008", oObject)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "vampire008", GetLocation(oObject));
    }
}
