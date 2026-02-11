void main()
{
    object oPC = GetEnteringObject(),
           oObject = GetWaypointByTag("POST_shopkeep004");

    AssignCommand(oPC, ClearAllActions(TRUE));

    if (!GetIsObjectValid(GetNearestObjectByTag("shopkeep004", oObject)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "shopkeep004", GetLocation(oObject));
    }
}
