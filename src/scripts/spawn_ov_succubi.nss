void main()
{
    object oPC = GetEnteringObject(),
           oObject = GetWaypointByTag("NW_OV_SUCCUBI");

    AssignCommand(oPC, ClearAllActions(TRUE));

    if (!GetIsObjectValid(GetNearestObjectByTag("ovceredruis", oObject)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "ovceredruis", GetLocation(oObject));
    }

}

