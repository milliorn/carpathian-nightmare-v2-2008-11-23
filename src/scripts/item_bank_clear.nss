#include "inc_remove_effec"
void main()
{
    object oPC = GetEnteringObject();
    AssignCommand(oPC, ClearAllActions(TRUE));
    RemoveAllEffects(oPC);
}

