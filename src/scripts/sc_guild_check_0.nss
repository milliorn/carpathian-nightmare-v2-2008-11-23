#include "nw_i0_plot"
#include "inc_guild"
int StartingConditional()
{
         if (HasItem(oTarget, "LADIESOFCARPATHIA")) return TRUE;
    else if (HasItem(oTarget, "THESWIFT")) return TRUE;
    else if (HasItem(oTarget, "LEGIONOFTHEDAMNED")) return TRUE;
    else if (HasItem(oTarget, "LEAGUEOFGENTLEMAN")) return TRUE;
    else if (HasItem(oTarget, "PANTHERIS")) return TRUE;
    else if (HasItem(oTarget, "CHAO")) return TRUE;
    else if (HasItem(oTarget, "ORDEROFVENGEANCE")) return TRUE;
    else if (HasItem(oTarget, "TEH")) return TRUE;
    else if (HasItem(oTarget, "HALO")) return TRUE;
    else if (HasItem(oTarget, "SPIRITSOFPERDITION")) return TRUE;
    else if (HasItem(oTarget, "BLOOD")) return TRUE;
    else if (HasItem(oTarget, "GUARDIANSOFCARPATHIA")) return TRUE;
    else if (HasItem(oTarget, "VISIGOTH")) return TRUE;
    else if (!GetIsPC(oTarget)) return TRUE;
    else if (GetIsDM(oTarget)) return TRUE;
    return FALSE;
}
