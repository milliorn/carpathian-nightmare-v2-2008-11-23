#include "sfsubr_leto_inc"
void main()
{
    object oPC = GetLastSpeaker();
    SendMessageToAllDMs(GetName(oPC) + "<c°°°> has deleted there character");
    DeleteCharacter(oPC);
}
