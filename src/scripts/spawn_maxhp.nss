void main()
{
    object oPC = GetEnteringObject(),
           oObject = GetWaypointByTag("POST_maxhp");

    AssignCommand(oPC, ClearAllActions(TRUE));

    if (!GetIsObjectValid(GetNearestObjectByTag("maxhp", oObject)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "maxhp", GetLocation(oObject));
    }
}
