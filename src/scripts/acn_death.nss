//Put this script OnUsed
void FakeRestore(object oTarget);
void main()
{
    object oPC = GetLastUsedBy();
    if (!GetIsPC(oPC)) return;

    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_RAISE_DEAD), GetLocation(oPC));
    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_COM_CHUNK_BONE_MEDIUM), GetLocation(oPC));
    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_DEATH_L), GetLocation(oPC));
    //ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectDeath(), oPC);
    ForceRest(oPC);
    ActionDoCommand(FakeRestore(oPC));
}

void FakeRestore(object oTarget)
{
    effect eVisual = EffectVisualEffect(VFX_IMP_RESTORATION_GREATER);
    effect eBad = GetFirstEffect(oTarget);
    //Search for negative effects
    while(GetIsEffectValid(eBad))
    {
        if (GetEffectType(eBad) == EFFECT_TYPE_ABILITY_DECREASE ||
            GetEffectType(eBad) == EFFECT_TYPE_AC_DECREASE ||
            GetEffectType(eBad) == EFFECT_TYPE_ATTACK_DECREASE ||
            GetEffectType(eBad) == EFFECT_TYPE_DAMAGE_DECREASE ||
            GetEffectType(eBad) == EFFECT_TYPE_DAMAGE_IMMUNITY_DECREASE ||
            GetEffectType(eBad) == EFFECT_TYPE_SAVING_THROW_DECREASE ||
            GetEffectType(eBad) == EFFECT_TYPE_SPELL_RESISTANCE_DECREASE ||
            GetEffectType(eBad) == EFFECT_TYPE_SKILL_DECREASE ||
            GetEffectType(eBad) == EFFECT_TYPE_BLINDNESS ||
            GetEffectType(eBad) == EFFECT_TYPE_DEAF ||
            GetEffectType(eBad) == EFFECT_TYPE_CURSE ||
            GetEffectType(eBad) == EFFECT_TYPE_DISEASE ||
            GetEffectType(eBad) == EFFECT_TYPE_POISON ||
            GetEffectType(eBad) == EFFECT_TYPE_PARALYZE ||
            GetEffectType(eBad) == EFFECT_TYPE_DARKNESS ||
            GetEffectType(eBad) == EFFECT_TYPE_DEAF ||
            GetEffectType(eBad) == EFFECT_TYPE_DISEASE ||
            GetEffectType(eBad) == EFFECT_TYPE_POLYMORPH ||
            GetEffectType(eBad) == EFFECT_TYPE_SILENCE ||
            GetEffectType(eBad) == EFFECT_TYPE_SLOW ||
            GetEffectType(eBad) == EFFECT_TYPE_SPELLLEVELABSORPTION ||
            GetEffectType(eBad) == EFFECT_TYPE_NEGATIVELEVEL)
        {
            //Remove effect if it is negative.
            RemoveEffect(oTarget, eBad);
        }
        eBad = GetNextEffect(oTarget);
    }
    if(GetRacialType(oTarget) != RACIAL_TYPE_UNDEAD)
    {
        //Apply the VFX impact and effects
        int nHeal = GetMaxHitPoints(oTarget) - GetCurrentHitPoints(oTarget);
        effect eHeal = EffectHeal(nHeal);
//        if (nHeal > 0)
//            ApplyEffectToObject(DURATION_TYPE_INSTANT, eHeal, oTarget);
        // Mar 2, 2004: Always heal at least one hp. Otherwise, if you have the wounding effect
        // but are at max hp (because of regeneration or whatever), the wounding will not
        // be removed.
        if(nHeal<1) nHeal=1;
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eHeal, oTarget);
    }
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVisual, oTarget);
}



