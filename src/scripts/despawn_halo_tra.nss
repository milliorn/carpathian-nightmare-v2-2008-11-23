void main()
{
    object oObject1 = GetWaypointByTag("HALOTWP001"),
           oNPC1, oNPC2;

    if (!GetIsObjectValid(GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_IS_PC, oObject1)))
    {
        oNPC1 = GetNearestObjectByTag("HALO_Hell_dummy", oObject1);
        oNPC2 = GetNearestObjectByTag("HALO_Hell_target", oObject1);

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
