#include "sfsubr_leto_inc"

void main()
{
    object oPC = GetPCSpeaker();
    SendMessageToAllDMs(GetName(oPC) + "<c°°°> has used MaxHP Script.");
    SetMaxHitPointsSetMax(oPC);
}
