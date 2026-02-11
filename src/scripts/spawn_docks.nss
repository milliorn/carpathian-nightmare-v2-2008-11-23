void main()
{
    object oPC = GetEnteringObject(),
           oObject = GetWaypointByTag("POST_docksmerchant");

    AssignCommand(oPC, ClearAllActions(TRUE));

    if (!GetIsObjectValid(GetNearestObjectByTag("docksmerchant", oObject)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "docksmerchant", GetLocation(oObject));
    }
}
