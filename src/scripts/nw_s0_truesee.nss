//::///////////////////////////////////////////////
//:: True Seeing
//:: NW_S0_TrueSee.nss
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    The creature can seen all invisible, sanctuared,
    or hidden opponents.
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: [date]
//:://////////////////////////////////////////////
#include "x2_inc_spellhook"
void main()
{
/*
  Spellcast Hook Code
  Added 2003-06-23 by GeorgZ
  If you want to make changes to all spells,
  check x2_inc_spellhook.nss to find out more
*/
    if (!X2PreSpellCastCode())
    {
    // If code within the PreSpellCastHook (i.e. UMD) reports FALSE, do not run this spell
        return;
    }
    // End of Spell Cast Hook
    //Declare major variables
    object oTarget = GetSpellTargetObject();
    effect eVis = EffectVisualEffect(VFX_DUR_MAGICAL_SIGHT);
    effect eDur = EffectVisualEffect(VFX_DUR_CESSATE_POSITIVE);
    effect eSight = EffectTrueSeeing();
    effect eLink = EffectLinkEffects(eVis, eSight);
    eLink = EffectLinkEffects(eLink, eDur);
    //Fire cast spell at event for the specified target
    SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, SPELL_TRUE_SEEING, FALSE));
    int nDuration = GetCasterLevel(OBJECT_SELF);
    int nMetaMagic = GetMetaMagicFeat();
    int nListen = GetSkillRank(SKILL_LISTEN, OBJECT_SELF, TRUE);
    int nSpot = GetSkillRank(SKILL_SPOT, OBJECT_SELF, TRUE);
    int nCleric = GetLevelByClass(CLASS_TYPE_CLERIC, OBJECT_SELF);
    int nDruid = GetLevelByClass(CLASS_TYPE_DRUID, OBJECT_SELF);
    int nWizard = GetLevelByClass(CLASS_TYPE_WIZARD, OBJECT_SELF);
    int nSorcerer = GetLevelByClass(CLASS_TYPE_SORCERER, OBJECT_SELF);
    effect eSpot = EffectSkillIncrease(SKILL_SPOT, nDuration);
    effect eListen = EffectSkillIncrease(SKILL_LISTEN, nDuration);
    effect eVision = EffectUltravision();

    if (nListen >= 40 || nSpot >= 40 || nCleric == 38 || nDruid == 38 || nWizard == 38 || nSorcerer == 38)
    {
        eSight = EffectSeeInvisible();
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSpot, oTarget, TurnsToSeconds(nDuration));
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eListen, oTarget, TurnsToSeconds(nDuration));
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eVision, oTarget, TurnsToSeconds(nDuration));
    }

    else
    {
        eSight = EffectSeeInvisible();
    }

    //Enter Metamagic conditions
    if (nMetaMagic == METAMAGIC_EXTEND)
    {
        nDuration = nDuration *2; //Duration is +100%
    }
    //Apply the VFX impact and effects
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink, oTarget, TurnsToSeconds(nDuration));
}

