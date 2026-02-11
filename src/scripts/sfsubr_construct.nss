#include "sfsubr_functs"

void LoadSubrace_AdamantineGolem()
{
    SF_CreateNewSubrace("Adamantine-Golem", APPEARANCE_TYPE_GOLEM_ADAMANTIUM, APPEARANCE_TYPE_GOLEM_ADAMANTIUM, "pcadamantineg", "", "", FALSE, 19);
    SF_SetSubraceRaceRestriction("Adamantine-Golem", ALLOW_USE_FALSE, RACE_RESTRICT_GNOME | RACE_RESTRICT_HALFLING);
    SF_AdjustSubraceStats("Adamantine-Golem", 2, 0, 0, 0, 0, -2);
    SF_SetSubracePortrait("Adamantine-Golem", "po_golada_", "po_golada_");
}
void LoadSubrace_BattleHorror()
{
    SF_CreateNewSubrace("Battle-Horror", APPEARANCE_TYPE_BAT_HORROR, APPEARANCE_TYPE_HELMED_HORROR, "pchorrorproper", "", "", FALSE, 6);
    SF_AdjustSubraceStats("Battle-Horror", 2, 0, -2, -2, 2, 0);
    SF_SetSubracePortrait("Battle-Horror", "po_bathorror_", "po_helmhorror_");
    SF_SetSubraceFeat("Battle-Horror", FEAT_POWER_ATTACK);
}
void LoadSubrace_BoneGolem()
{
    SF_CreateNewSubrace("Bone-Golem", APPEARANCE_TYPE_GOLEM_BONE, APPEARANCE_TYPE_GOLEM_BONE, "pcbonegolemprope", "", "", FALSE, 5);
    SF_SetSubraceRaceRestriction("Bone-Golem", ALLOW_USE_TRUE, RACE_RESTRICT_HUMAN |RACE_RESTRICT_HALFORC | RACE_RESTRICT_DWARF);
    SF_AdjustSubraceStats("Bone-Golem", 2, 0, 0, -1, 0, -1);
    SF_SetSubracePortrait("Bone-Golem", "po_golbone_", "po_golbone_");
}

void LoadSubrace_ClayGolem()
{
    SF_CreateNewSubrace("Clay-Golem", APPEARANCE_TYPE_GOLEM_CLAY, APPEARANCE_TYPE_GOLEM_CLAY, "pcclaygolemprope", "NW_IT_CREWPB014","", FALSE, 7);
    SF_SetSubraceRaceRestriction("Clay-Golem", ALLOW_USE_TRUE, RACE_RESTRICT_DWARF | RACE_RESTRICT_HALFORC | RACE_RESTRICT_HUMAN);
    SF_AdjustSubraceStats("Clay-Golem", 2, 1, -1, -1, 1, -2);
    SF_SetSubracePortrait("Clay-Golem", "po_golclay_", "po_golclay_");
    SF_SetSubraceFeat("Clay-Golem", FEAT_WEAPON_PROFICIENCY_CREATURE);
}

void LoadSubrace_DemonfleshGolem()
{
    SF_CreateNewSubrace("Demonflesh-Golem", APPEARANCE_TYPE_GOLEM_DEMONFLESH, APPEARANCE_TYPE_GOLEM_DEMONFLESH, "pcdemonfleshgole", "NW_IT_CREWPSP005", "", FALSE, 3);
    SF_AdjustSubraceStats("Demonflesh-Golem", 2, -1, -2, -1, 1, 1);
    SF_SetSubracePortrait("Demonflesh-Golem", "po_goldem_", "po_goldem_");
    SF_SetSubraceFeat("Demonflesh-Golem", FEAT_CLEAVE);
    SF_SetSubraceFeat("Demonflesh-Golem", FEAT_POWER_ATTACK);
    SF_SetSubraceFeat("Demonflesh-Golem", FEAT_IMPROVED_INITIATIVE);
    SF_SetSubraceFeat("Demonflesh-Golem", FEAT_WEAPON_PROFICIENCY_CREATURE);
}

void LoadSubrace_FleshGolem()
{
    SF_CreateNewSubrace("Flesh-Golem", APPEARANCE_TYPE_GOLEM_FLESH, APPEARANCE_TYPE_GOLEM_FLESH, "pcsubracefleshgo", "NW_IT_CREWPB010", "", FALSE, 5);
    SF_AdjustSubraceStats("Flesh-Golem", 2, 0, 1, -2, 1, -2);
    SF_SetSubracePortrait("Flesh-Golem", "po_golflesh_", "po_golflesh_");
    SF_SetSubraceFeat("Flesh-Golem", FEAT_WEAPON_PROFICIENCY_CREATURE);
}

void LoadSubrace_IronGolem()
{
    SF_CreateNewSubrace("Iron-Golem", APPEARANCE_TYPE_GOLEM_IRON, APPEARANCE_TYPE_GOLEM_IRON, "pcirongolemprope", "NW_IT_CREWPB014", "", FALSE, 3);
    SF_SetSubraceRaceRestriction("Iron-Golem", ALLOW_USE_TRUE, RACE_RESTRICT_DWARF || RACE_RESTRICT_GNOME);
    SF_AdjustSubraceStats("Iron-Golem", 2, 0, 0, -2, 2, -2);
    SF_SetSubracePortrait("Iron-Golem", "po_goliron_", "po_goliron_");
    SF_SetSubraceFeat("Iron-Golem", FEAT_WEAPON_PROFICIENCY_CREATURE);
}
/*
void LoadSubrace_FireGiant()
{
    SF_CreateNewSubrace("Fire-Giant", APPEARANCE_TYPE_GIANT_FIRE, APPEARANCE_TYPE_GIANT_FIRE_FEMALE);
    SF_SetSubraceRaceRestriction("Fire-Giant", ALLOW_USE_TRUE, RACE_RESTRICT_HALFORC);
    SF_SetSubraceAlignmentRestriction("Fire-Giant", ALLOW_USE_TRUE, ALIGN_RESTRICT_EVIL | ALIGN_RESTRICT_LAWFUL);
    SF_AdjustSubraceStats("Fire-Giant", 2, -2, 2, -1, 0, -1);
    SF_SetSubracePortrait("Fire-Giant", "po_gntfire_", "po_GntFireFem_");
    SF_SetSubraceFeat("Fire-Giant", FEAT_CLEAVE);
    SF_SetSubraceFeat("Fire-Giant", FEAT_GREAT_CLEAVE);
    SF_SetSubraceFeat("Fire-Giant", FEAT_POWER_ATTACK);
}

void LoadSubrace_Ogre()
{
    SF_CreateNewSubrace("Ogre", APPEARANCE_TYPE_OGRE, APPEARANCE_TYPE_OGREB);
    SF_SetSubraceAlignmentRestriction("Ogre", ALLOW_USE_TRUE, ALIGN_RESTRICT_EVIL | ALIGN_RESTRICT_CHAOTIC);
    SF_SetSubraceRaceRestriction("Ogre", ALLOW_USE_TRUE, RACE_RESTRICT_HALFORC);
    SF_AdjustSubraceStats("Ogre", 2, -1, 2, -1, -1, -1);
    SF_SetSubracePortrait("Ogre", "po_OgreA_", "po_OgreB_");
    SF_SetSubraceFeat("Ogre", FEAT_WEAPON_FOCUS_CLUB);
}

void LoadSubrace_Troll()
{
    SF_CreateNewSubrace("Troll", APPEARANCE_TYPE_TROLL_CHIEFTAIN, APPEARANCE_TYPE_TROLL_SHAMAN, "pcsubracetroll", "", "", FALSE, 19);
    SF_SetSubraceRaceRestriction("Troll", ALLOW_USE_TRUE, RACE_RESTRICT_DWARF | RACE_RESTRICT_HALFORC | RACE_RESTRICT_HUMAN);
    SF_SetSubraceAlignmentRestriction("Troll", ALLOW_USE_TRUE, ALIGN_RESTRICT_EVIL | ALIGN_RESTRICT_CHAOTIC);
    SF_AdjustSubraceStats("Troll", 2, 1, 2, -2, -1, -2);
    SF_SetSubraceFeat("Troll", FEAT_ALERTNESS);
    SF_SetSubraceFeat("Troll", FEAT_IRON_WILL);
    SF_SetSubraceFeat("Troll", FEAT_DARKVISION);
    SF_SetSubracePortrait("Troll", "po_TrollChief_", "po_Troll_");
}
*/
void main()
{
    LoadSubrace_AdamantineGolem();
    LoadSubrace_BattleHorror();
    LoadSubrace_BoneGolem();
    LoadSubrace_ClayGolem();
    LoadSubrace_DemonfleshGolem();
    LoadSubrace_FleshGolem();
    LoadSubrace_IronGolem();
/*    LoadSubrace_FrostGiant();
    LoadSubrace_Ogre();
    LoadSubrace_Troll();
*/}
