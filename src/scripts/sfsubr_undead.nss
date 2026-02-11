#include "sfsubr_functs"

void LoadSubrace_Ghoul()
{
    SF_CreateNewSubrace("Ghoul", APPEARANCE_TYPE_GHOUL, APPEARANCE_TYPE_GHAST, "pcundeadskin", "", "", TRUE, 1);
    SF_AdjustSubraceStats("Ghoul", -1, 2, -2, -1, 0, 2);
    SF_SetSubraceAlignmentRestriction("Ghoul", ALLOW_USE_TRUE, ALIGN_RESTRICT_CHAOTIC | ALIGN_RESTRICT_EVIL);
    SF_SetSubraceFeat("Ghoul", FEAT_SKILL_FOCUS_HIDE);
    SF_SetSubraceFeat("Ghoul", FEAT_SKILL_FOCUS_LISTEN);
    SF_SetSubraceFeat("Ghoul", FEAT_SKILL_FOCUS_MOVE_SILENTLY);
    SF_SetSubraceFeat("Ghoul", FEAT_SKILL_FOCUS_SEARCH);
    SF_SetSubraceFeat("Ghoul", FEAT_SKILL_FOCUS_SPOT);
    SF_SetSubraceFeat("Ghoul", FEAT_WEAPON_FINESSE);
    SF_SetSubracePortrait("Ghoul", "po_Ghoul_", "po_Ghast_");
    SF_SetSubraceVoiceSet("Ghoul", 41, 40);
}

void LoadSubrace_Mummy()
{
    SF_CreateNewSubrace("Mummy", APPEARANCE_TYPE_MUMMY_COMMON, APPEARANCE_TYPE_MUMMY_COMMON, "pcmummyskin", "", "", TRUE, 7);
    SF_AdjustSubraceStats("Mummy", 2, -1, -2, -2, 1, 2);
    SF_SetSubraceAlignmentRestriction("Mummy", ALLOW_USE_TRUE, ALIGN_RESTRICT_LAWFUL | ALIGN_RESTRICT_EVIL);
    SF_SetSubraceFeat("Mummy", FEAT_ALERTNESS);
    SF_SetSubraceFeat("Mummy", FEAT_TOUGHNESS);
    SF_SetSubracePortrait("Mummy", "po_mum_com01_", "po_mum_com01_");
    SF_SetSubraceVoiceSet("Mummy", 68, 68);
    SF_SetSubraceMovementSpeed("Mummy", CHARACTER_SPEED_SLOW);
}

void LoadSubrace_Shadow()
{
    SF_CreateNewSubrace("Shadow", APPEARANCE_TYPE_SHADOW_FIEND, APPEARANCE_TYPE_SHADOW, "pcshadowskin", "", "", TRUE, 6);
    SF_AdjustSubraceStats("Shadow", -2, 2, -1, -1, 1, 1);
    SF_SetSubraceAlignmentRestriction("Shadow", ALLOW_USE_TRUE, ALIGN_RESTRICT_CHAOTIC | ALIGN_RESTRICT_EVIL);
    SF_SetSubraceFeat("Shadow", FEAT_SKILL_FOCUS_HIDE);
    SF_SetSubraceFeat("Shadow", FEAT_SKILL_FOCUS_LISTEN);
    SF_SetSubraceFeat("Shadow", FEAT_CRIPPLING_STRIKE);
    SF_SetSubraceFeat("Shadow", FEAT_DODGE);
    SF_SetSubraceFeat("Shadow", FEAT_SKILL_FOCUS_SPOT);
    SF_SetSubracePortrait("Shadow", "po_ShFiend_", "po_Shadow_");
    SF_SetSubraceVoiceSet("Shadow", 78, 78);
}

void LoadSubrace_Skeleton()
{
    SF_CreateNewSubrace("Skeleton", APPEARANCE_TYPE_SKELETON_WARRIOR_2, APPEARANCE_TYPE_SKELETON_WARRIOR_1, "pcskeletonskin", "", "", TRUE, 5);
    SF_AdjustSubraceStats("Skeleton", 0, 2, -2, -1, 0, 1);
    SF_SetSubraceFeat("Skeleton", FEAT_RESIST_ENERGY_COLD);
    SF_SetSubraceFeat("Skeleton", FEAT_IMPROVED_INITIATIVE);
    SF_SetSubracePortrait("Skeleton", "po_skel01_", "po_skel01_");
}

void LoadSubrace_Wraith()
{
    SF_CreateNewSubrace("Wraith", APPEARANCE_TYPE_SPECTRE, APPEARANCE_TYPE_WRAITH, "pcshadowskin", "", "", TRUE, 6);
    SF_AdjustSubraceStats("Wraith", -1, 0, -1, 0, 0, 2);
    SF_SetSubraceAlignmentRestriction("Wraith", ALLOW_USE_TRUE, ALIGN_RESTRICT_NEUTRAL1 | ALIGN_RESTRICT_EVIL);
    SF_SetSubraceFeat("Wraith", FEAT_SKILL_FOCUS_HIDE);
    SF_SetSubraceFeat("Wraith", FEAT_SKILL_FOCUS_LISTEN);
    SF_SetSubraceFeat("Wraith", FEAT_SKILL_FOCUS_SEARCH);
    SF_SetSubraceFeat("Wraith", FEAT_EPIC_SKILL_FOCUS_INTIMIDATE);
    SF_SetSubraceFeat("Wraith", FEAT_SKILL_FOCUS_SPOT);
    SF_SetSubraceFeat("Wraith", FEAT_IMPROVED_INITIATIVE);
    SF_SetSubracePortrait("Wraith", "po_Spectre_", "po_Wraith_");
    SF_SetSubraceVoiceSet("Wraith", 237, 237);
}

void LoadSubrace_Zombie()
{
    SF_CreateNewSubrace("Zombie", APPEARANCE_TYPE_ZOMBIE_WARRIOR_1, APPEARANCE_TYPE_ZOMBIE_WARRIOR_2, "pcundeadskin", "", "", TRUE, 1);
    SF_AdjustSubraceStats("Zombie", 2, 0, 0, 0, 0, -2);
    SF_SetSubraceFeat("Zombie", FEAT_TOUGHNESS);
    SF_SetSubracePortrait("Zombie", "po_zo_war01_", "po_zo_war02_");
    SF_SetSubraceVoiceSet("Zombie", 111, 111);
}

void LoadSubrace_Bodak()
{
    SF_AdjustSubraceStats("Bodak", 1, 1, -2, -2, 1, 1);
    SF_CreateNewSubrace("Bodak", APPEARANCE_TYPE_BODAK, APPEARANCE_TYPE_BODAK, "pcundeadskin", "", "", TRUE, 1);
    SF_SetSubraceAlignmentRestriction("Bodak", ALLOW_USE_TRUE, ALIGN_RESTRICT_CHAOTIC | ALIGN_RESTRICT_EVIL);
    SF_SetSubraceFeat("Bodak", FEAT_EPIC_SKILL_FOCUS_LISTEN);
    SF_SetSubraceFeat("Bodak", FEAT_EPIC_SKILL_FOCUS_MOVESILENTLY);
    SF_SetSubraceFeat("Bodak", FEAT_EPIC_SKILL_FOCUS_SPOT);
    SF_SetSubraceFeat("Bodak", FEAT_DODGE);
    SF_SetSubraceFeat("Bodak", FEAT_IMPROVED_INITIATIVE);
    SF_SetSubracePortrait("Bodak", "po_Bodak_", "po_Bodak_");

}

void LoadSubrace_Lich()
{
    SF_AdjustSubraceStats("Lich", -2, -2, -2, 2, 2, 2);
    SF_CreateNewSubrace("Lich", APPEARANCE_TYPE_LICH, APPEARANCE_TYPE_HEURODIS_LICH, "pclichskin", "", "", TRUE, 1);
    SF_SetSubraceAlignmentRestriction("Lich", ALLOW_USE_TRUE, ALIGN_RESTRICT_EVIL);
    SF_SetSubraceClassRestriction("Lich", ALLOW_USE_TRUE, CLASS_RESTRICT_CLERIC | CLASS_RESTRICT_SORCERER | CLASS_RESTRICT_WIZARD, 1);
    SF_SetSubraceFeat("Lich", FEAT_SKILL_FOCUS_HIDE);
    SF_SetSubraceFeat("Lich", FEAT_SKILL_FOCUS_LISTEN);
    SF_SetSubraceFeat("Lich", FEAT_SKILL_FOCUS_MOVE_SILENTLY);
    SF_SetSubraceFeat("Lich", FEAT_RESIST_ENERGY_COLD);
    SF_SetSubraceFeat("Lich", FEAT_RESIST_ENERGY_ELECTRICAL);
    SF_SetSubraceFeat("Lich", FEAT_SKILL_FOCUS_SEARCH);
    SF_SetSubraceFeat("Lich", FEAT_SKILL_FOCUS_SPOT);
    SF_SetSubracePortrait("Lich", "po_Lich_", "po_heurolich_");
    SF_SetSubraceRaceRestriction("Lich", ALLOW_USE_TRUE, RACE_RESTRICT_HUMAN);
    SF_SetSubraceVoiceSet("Lich", 202, 349);
}

void LoadSubrace_DoomKnight()
{
    SF_AdjustSubraceStats("Doom-Knight", 1, 0, -2, -2, 1, 2);
    SF_CreateNewSubrace("Doom-Knight", APPEARANCE_TYPE_DOOM_KNIGHT, APPEARANCE_TYPE_DOOM_KNIGHT, "pcdoomknightskin", "", "", TRUE, 11);
    SF_SetSubraceClassRestriction("Doom-Knight", ALLOW_USE_TRUE, CLASS_RESTRICT_PALADIN, 1);
    SF_SetSubracePortrait("Doom-Knight", "po_DoomKght_", "po_DoomKght_");
    SF_SetSubraceVoiceSet("Doom-Knight", 28, 28);
}

void LoadSubrace_Vampire()
{
    SF_AdjustSubraceStats("Vampire", 1, 0, -2, 0, 0, 1);
    SF_CreateNewSubrace("Vampire", APPEARANCE_TYPE_INVALID, APPEARANCE_TYPE_INVALID, "pcsubracevamp", "", "", TRUE, 9);
    SF_SetSubraceAlignmentRestriction("Vampire", ALLOW_USE_TRUE, ALIGN_RESTRICT_CHAOTIC | ALIGN_RESTRICT_EVIL);
    SF_SetSubraceAppearanceColor("Vampire", 62, 63);
    SF_SetSubraceFeat("Vampire", FEAT_RESIST_ENERGY_COLD);
    SF_SetSubraceFeat("Vampire", FEAT_RESIST_ENERGY_ELECTRICAL);
    SF_SetSubraceFeat("Vampire", FEAT_SKILL_FOCUS_HIDE);
    SF_SetSubraceFeat("Vampire", FEAT_SKILL_FOCUS_LISTEN);
    SF_SetSubraceFeat("Vampire", FEAT_SKILL_FOCUS_MOVE_SILENTLY);
    SF_SetSubraceFeat("Vampire", FEAT_SKILL_FOCUS_SEARCH);
    SF_SetSubraceFeat("Vampire", FEAT_SKILL_FOCUS_SPOT);
    SF_SetSubraceFeat("Vampire", FEAT_IMPROVED_INITIATIVE);
    SF_SetSubraceFeat("Vampire", FEAT_LIGHTNING_REFLEXES);
    SF_SetSubracePortrait("Vampire","po_Vampire_m_","po_Vampire_f_");
}

void main()
{
    LoadSubrace_Ghoul();
    LoadSubrace_Mummy();
    LoadSubrace_Shadow();
    LoadSubrace_Skeleton();
    LoadSubrace_Wraith();
    LoadSubrace_Zombie();
    LoadSubrace_Bodak();
    LoadSubrace_Lich();
    LoadSubrace_DoomKnight();
    LoadSubrace_Vampire();
}
