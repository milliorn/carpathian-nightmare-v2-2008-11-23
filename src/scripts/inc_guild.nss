#include "nw_i0_plot"
//ACN Guild System Include Script

object oActivator = GetItemActivator(),
       oWand = GetItemActivated(),
       oTarget = GetItemActivatedTarget(),
       oToken;
       //oShouter = GetObjectByTag("server_npc");
string sTag = GetTag(oWand),
       sPCName = GetName(oTarget),
       sCDKEY = GetPCPublicCDKey(oActivator),
       sKEY = GetPCPublicCDKey(GetEnteringObject()),
       sCKEY = GetPCPublicCDKey(GetLastPCRested());

//milliorn              Q76A43RL
//Badkitty              QV46YGUD
//Jasper                QGM9NWGF
//Hades                 QV4MWA3J
//General_Gummihuhn     QC4EC6DC
//Grathor               QC7RC6RU
//Yoda                  QGML66J4
//Freak                 QVRAWGXU
//Lord Sims             FFUTUP39
//Scorn                 QVRVF67A
//Hasher                QLUDGCR7
//KrazedKilla1          QVRCMRVE
//DemiGod               FTRML7FX
//Dark Genocide         QGMQ4349
//goldenpanda           QG6L7N3D
//vvn                   FFUCKG7Y
//eJay                  QC77WGY9/FFUCQXQJ
//Jaybo The Great       QV69NUKM
//SinfulStud666         QGMEY943
//beautyinstone         QV4RGPM3
//Ravager666            FFUCMMYU
//Rhonin Gladstaff      QC7MR4CE
//Kricket               QG69GGU7
//Bassbastard           QCRWUXFF
//Hareless              VDH6MGU6
//Tangar Anvilsoul      QGMNPGEE
//Sakuta                QCRFQX7G
//diablotin7            QG6RQU64
//jacob hagen           Q74HWCEK
//Tanis                 FTRHELQV
//Shadow The Swift      QVRXE9NU
//Lord Nightmare - Swift QCRPJ6HW
//Abyssal Ruin          Q774K3PQ
//Wolf Visigoth         QVRQPPTC
//LordVisigoth          QV6TPYYT

int LeaderKeys()
{
    if (sCDKEY == "Q774K3PQ" ||
        sCDKEY == "QVRQPPTC" ||
        sCDKEY == "QV6TPYYT" ||
        sCDKEY == "QGM9NWGF" ||
        sCDKEY == "FTRHELQV" ||
        sCDKEY == "QVRXE9NU" ||
        sCDKEY == "QGML66J4" ||
        sCDKEY == "QVRAWGXU" ||
        sCDKEY == "FFUTUP39" ||
        sCDKEY == "FFUCKG7Y" ||
        sCDKEY == "QCRWUXFF" ||
        sCDKEY == "QG69GGU7" ||
        sCDKEY == "QV4RGPM3" ||
        sCDKEY == "QG6L7N3D" ||
        sCDKEY == "QV69NUKM" ||
        sCDKEY == "FFUCQXQJ" ||
        sCDKEY == "FFUCMMYU" ||
        sCDKEY == "QC7MR4CE" ||
        sCDKEY == "VDH6MGU6" ||
        sCDKEY == "QGMNPGEE" ||
        sCDKEY == "QCRFQX7G" ||
        sCDKEY == "QC7HFG7E" ||
        sCDKEY == "QGMEY943" ||
        sCDKEY == "QG6RQU64")

        return TRUE;
        return FALSE;
}

effect ePerm1 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_AURA_PULSE_BLUE_BLACK));
effect ePerm2 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_AURA_PULSE_RED_BLUE));
effect ePerm3 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_MIND_AFFECTING_FEAR));
effect ePerm4 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_AURA_PURPLE));
effect ePerm5 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_AURA_PULSE_GREEN_BLACK));
effect ePerm6 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_TENTACLE));
effect ePerm7 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_AURA_PULSE_YELLOW_WHITE));
effect ePerm8 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_PROTECTION_EVIL_MAJOR));
effect ePerm9 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_AURA_PULSE_RED_BLACK));
effect ePerm10 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_PROTECTION_ELEMENTS));
effect ePerm11 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_INFERNO_NO_SOUND));
effect ePerm12 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_AURA_PULSE_YELLOW_BLACK));
effect ePerm13 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_PARALYZE_HOLD));
effect ePerm14 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_PROT_SHADOW_ARMOR));
effect ePerm15 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_PARALYZED));
effect ePerm16 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_GHOST_SMOKE));
effect ePerm17 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_GHOST_SMOKE_2));
effect ePerm18 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_ETHEREAL_VISAGE));
effect ePerm19 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_GHOSTLY_PULSE));
effect ePerm20 = SupernaturalEffect(EffectVisualEffect(VFX_DUR_PROTECTION_GOOD_MAJOR));

void ACNGuildVFX(object oPC)
{
    if (HasItem(oPC, "LADIESOFCARPATHIA"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm1, oPC);
        return;
    }

    else if (HasItem(oPC, "THESWIFT"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm2, oPC);
        return;
    }

    else if (HasItem(oPC, "LEGIONOFTHEDAMNED"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm3, oPC);
        return;
    }

    else if (HasItem(oPC, "LEAGUEOFGENTLEMAN"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm4, oPC);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm6, oPC);
        return;
    }

    else if (HasItem(oPC, "PANTHERIS"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm5, oPC);
        return;
    }

    else if (HasItem(oPC, "CHAO"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm7, oPC);
        return;
    }

    else if (HasItem(oPC, "TEH"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm8, oPC);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm16, oPC);
        return;
    }

    else if (HasItem(oPC, "HALO"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm10, oPC);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm11, oPC);
        return;
    }

    else if (HasItem(oPC, "SPIRITSOFPERDITION"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm12, oPC);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm13, oPC);
        return;
    }

    else if (HasItem(oPC, "ORDEROFVENGEANCE"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm17, oPC);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm14, oPC);
        return;
    }

    else if (HasItem(oPC, "BLOOD"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm9, oPC);
        return;
    }

    else if (HasItem(oPC, "GUARDIANSOFCARPATHIA"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm18, oPC);
        return;
    }

    else if (HasItem(oPC, "VISIGOTH"))
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm19, oPC);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm20, oPC);
        return;
    }
}


/*void main(){}
