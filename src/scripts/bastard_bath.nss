#include "nw_i0_plot"
//Put this script OnEnter
void main()
{
    object oPC = GetEnteringObject();
    effect eEffect = EffectHeal(100);

    if (!GetIsPC(oPC)) return;

    if (HasItem(oPC, "HALO"))
    {
        SendMessageToPC(oPC, "You are healed...");
        AssignCommand(oPC, ClearAllActions());
        AssignCommand(oPC, ActionPlayAnimation(ANIMATION_FIREFORGET_SPASM));
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eEffect, oPC);
        return;
    }
}
