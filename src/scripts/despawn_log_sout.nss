void main()
{
    object oObject = GetWaypointByTag("NW_LogBoy"),
           oNPC1, oNPC2, oNPC3, oNPC4, oNPC5, oNPC6;

    if (!GetIsObjectValid(GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_IS_PC, oObject)))
    {
        oNPC1 = GetNearestObjectByTag("LogBoy", oObject);
        oNPC2 = GetNearestObjectByTag("LogConvict", oObject);
        oNPC3 = GetNearestObjectByTag("LogGirl", oObject);
        oNPC4 = GetNearestObjectByTag("LogHookerA", oObject);
        oNPC5 = GetNearestObjectByTag("LogHookerB", oObject);
        oNPC6 = GetNearestObjectByTag("log_merchant", oObject);

        if (GetIsObjectValid(oNPC1))
        {
            AssignCommand(oNPC1, SetIsDestroyable(TRUE));
            DestroyObject(oNPC1);
        }

        if (GetIsObjectValid(oNPC2))
        {
            AssignCommand(oNPC2,  SetIsDestroyable(TRUE));
            DestroyObject(oNPC2);
        }

        if (GetIsObjectValid(oNPC3))
        {
            AssignCommand(oNPC3,  SetIsDestroyable(TRUE));
            DestroyObject(oNPC3);
        }

        if (GetIsObjectValid(oNPC4))
        {
            AssignCommand(oNPC4,  SetIsDestroyable(TRUE));
            DestroyObject(oNPC4);
        }

        if (GetIsObjectValid(oNPC5))
        {
            AssignCommand(oNPC5,  SetIsDestroyable(TRUE));
            DestroyObject(oNPC5);
        }

        if (GetIsObjectValid(oNPC6))
        {
            AssignCommand(oNPC6,  SetIsDestroyable(TRUE));
            DestroyObject(oNPC6);
        }
    }
}
