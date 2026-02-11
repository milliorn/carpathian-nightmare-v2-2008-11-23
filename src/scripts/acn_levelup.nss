#include "_colour_codes"
#include "sfsubr_functs"
//#include "sf_hips_inc"

int HasItem(object oCreature, string s)
{
    return  GetIsObjectValid(GetItemPossessedBy(oCreature, s));
}

void main()
{
    object oPC = GetPCLevellingUp(),
           oRecall = GetItemPossessedBy(oPC, "sf_recall");
    int iLevel = GetHitDice(oPC);
    string sLevel = IntToString(GetHitDice(oPC)),
           sName = GetName(oPC),
           sArea = GetTag(GetArea(oPC));

        ApplyEffectToObject(DURATION_TYPE_PERMANENT, SupernaturalEffect(EffectHaste()), oPC);
        ExportSingleCharacter(oPC);
//        SF_HipsRestrictionOnPCLevelUp();
        SF_SubraceOnLevelUp(oPC);
        ApplyBountyFlag(oPC);
        ExecuteScript("fky_chat_levelup", oPC);
        SendMessageToPC(oPC, "<c ó >Character Saved</c>");

//    if (!GetIsDM(oPC) &&
//         GetHasFeat(FEAT_HIDE_IN_PLAIN_SIGHT, oPC) &&
//         !HasItem(oPC, "x2_it_koboldcomm"))
//    {
//        RemoveHips(oPC);
//        return;
//    }

    if (!GetIsDM(oPC) &&
              //GetHasFeat(FEAT_BONE_SKIN_2, oPC) ||
              //GetHasFeat(FEAT_BONE_SKIN_4, oPC) ||
              GetHasFeat(FEAT_BONE_SKIN_6, oPC))
    {
        RemoveBoneSkin(oPC);
        return;
    }

        if (iLevel == 5 ||
            iLevel == 10 ||
            iLevel == 15 ||
            iLevel == 20 ||
            iLevel == 25 ||
            iLevel == 30 ||
            iLevel == 35 ||
            iLevel == 40)
        {
            SpeakString(sName+" has advanced to level " + sLevel, TALKVOLUME_SHOUT);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), oPC);
        }

        if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_GOOD)
        {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_LOS_HOLY_10), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_LOS_HOLY_20), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_LOS_HOLY_30), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), oPC);
            return;
        }

        else if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL)
        {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_LOS_EVIL_10), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_LOS_EVIL_20), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_LOS_EVIL_30), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), oPC);
            return;
       }

       else if (GetAlignmentGoodEvil(oPC) != ALIGNMENT_EVIL ||
                GetAlignmentGoodEvil(oPC) != ALIGNMENT_GOOD)
       {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_LOS_NORMAL_10), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_LOS_NORMAL_20), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_LOS_NORMAL_30), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), oPC);
       }
}


