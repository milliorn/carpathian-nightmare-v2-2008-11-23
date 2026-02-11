//::///////////////////////////////////////////////
//:: Generic On Pressed Respawn Button
//:: Copyright (c) 2001 Bioware Corp.
//:: Modified by Milliorn
//:://////////////////////////////////////////////
#include "raise_inc"
#include "_colour_codes"
#include "sfsubr_functs"
#include "inc_guild"
void main()
{
    object oRespawner = GetLastRespawnButtonPresser(),
           oRecall = GetItemPossessedBy(oRespawner, "sf_recall");

    ApplyEffectToObject(DURATION_TYPE_INSTANT,EffectResurrection(),oRespawner);
    ApplyEffectToObject(DURATION_TYPE_INSTANT,EffectHeal(GetMaxHitPoints(oRespawner)), oRespawner);
    Raise(oRespawner);
    ApplyPenalty(oRespawner);
    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), GetLocation(oRespawner));
    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_SUMMON_GATE), GetLocation(oRespawner));
    SF_ApplySubraceSpellResistance(oRespawner);
    ApplyBountyFlag(oRespawner);
    ACNGuildVFX(oRespawner);
    DelayCommand(0.1, AssignCommand(oRespawner, ClearAllActions()));
    DelayCommand(0.2, AssignCommand(oRespawner, JumpToLocation(GetLocation(GetWaypointByTag("NW_DEATH_TEMPLE")))));
    ExportSingleCharacter(oRespawner);
    ApplyEffectToObject(DURATION_TYPE_PERMANENT, SupernaturalEffect(EffectHaste()), oRespawner);

}

