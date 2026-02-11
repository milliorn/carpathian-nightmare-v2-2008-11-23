void main()
{
    object oPC = GetEnteringObject(),
           oObject = GetWaypointByTag("NW_logblacksmith");

    AssignCommand(oPC, ClearAllActions(TRUE));

    if (!GetIsObjectValid(GetNearestObjectByTag("logblacksmith", oObject)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "logblacksmith", GetLocation(oObject));
    }
}
