void main()
{
    object oPC = GetEnteringObject(),
           oObject1 = GetWaypointByTag("NW_LogBoy"),
           oObject2 = GetWaypointByTag("NW_LogConvict"),
           oObject3 = GetWaypointByTag("NW_LogGirl"),
           oObject4 = GetWaypointByTag("NW_LogHookerA"),
           oObject5 = GetWaypointByTag("NW_LogHookerB"),
           oObject6 = GetWaypointByTag("NW_LoG_Merchant");

    AssignCommand(oPC, ClearAllActions(TRUE));

    if (!GetIsObjectValid(GetNearestObjectByTag("LogBoy", oObject1)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "LogBoy", GetLocation(oObject1));
    }

    if (!GetIsObjectValid(GetNearestObjectByTag("LogConvict", oObject2)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "LogConvict", GetLocation(oObject2));
    }

    if (!GetIsObjectValid(GetNearestObjectByTag("LogGirl", oObject3)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "LogGirl", GetLocation(oObject3));
    }

    if (!GetIsObjectValid(GetNearestObjectByTag("LogHookerA", oObject4)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "LogHookerA", GetLocation(oObject4));
    }

    if (!GetIsObjectValid(GetNearestObjectByTag("LogHookerB", oObject5)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "LogHookerB", GetLocation(oObject5));
    }

    if (!GetIsObjectValid(GetNearestObjectByTag("log_merchant", oObject6)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "log_merchant", GetLocation(oObject6));
    }
}
