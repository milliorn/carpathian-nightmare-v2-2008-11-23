void main()
{
    object oPC = GetEnteringObject(),
           oObject = GetWaypointByTag("POST_banker");

    AssignCommand(oPC, ClearAllActions(TRUE));

    if (!GetIsObjectValid(GetNearestObjectByTag("banker", oObject)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "banker", GetLocation(oObject));
    }
}

