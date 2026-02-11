void main()
{
    object oPC = GetEnteringObject(),
           oObject = GetWaypointByTag("WP_BLOOD_BARTENDER");

    AssignCommand(oPC, ClearAllActions(TRUE));

    if (!GetIsObjectValid(GetNearestObjectByTag("blood_tender", oObject)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "blood_tender", GetLocation(oObject));
    }
}
