void main()
{
    object oObject1 = GetWaypointByTag("HALO_WP_EP1"),
           oNPC1, oNPC2;

    if (!GetIsObjectValid(GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_IS_PC, oObject1)))
    {
        oNPC1 = GetNearestObjectByTag("halomount002", oObject1);
        oNPC2 = GetNearestObjectByTag("halomount001", oObject1);

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


    }
}
