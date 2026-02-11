#include "nw_i0_plot"
#include "inc_guild"
int StartingConditional()
{
         if (HasItem(oTarget, "LADIESOFCARPATHIA")      && sCDKEY == "QGML66J4")    return FALSE;
    else if (HasItem(oTarget, "LADIESOFCARPATHIA")      && sCDKEY == "QC7MR4CE")    return FALSE;
    else if (HasItem(oTarget, "THESWIFT")               && sCDKEY == "QCM9NWGF")    return FALSE;
    else if (HasItem(oTarget, "THESWIFT")               && sCDKEY == "QVRXE9NU")    return FALSE;
    else if (HasItem(oTarget, "LEGIONOFTHEDAMNED")      && sCDKEY == "FTRHELQV")    return FALSE;
    else if (HasItem(oTarget, "LEGIONOFTHEDAMNED")      && sCDKEY == "QG6L7N3D")    return FALSE;
    else if (HasItem(oTarget, "LEAGUEOFGENTLEMAN")      && sCDKEY == "VDH6MGU6")    return FALSE;
    else if (HasItem(oTarget, "LEAGUEOFGENTLEMAN")      && sCDKEY == "QGMNPGEE")    return FALSE;
    else if (HasItem(oTarget, "LEAGUEOFGENTLEMAN")      && sCDKEY == "QG6RQU64")    return FALSE;
    else if (HasItem(oTarget, "PANTHERIS")              && sCDKEY == "QV69NUKM")    return FALSE;
    else if (HasItem(oTarget, "PANTHERIS")              && sCDKEY == "QC7HFG7E")    return FALSE;
    else if (HasItem(oTarget, "CHAO")                   && sCDKEY == "QVRAWGXU")    return FALSE;
    else if (HasItem(oTarget, "TEH")                    && sCDKEY == "FFUCQXQJ")    return FALSE;
    else if (HasItem(oTarget, "HALO")                   && sCDKEY == "QG69GGU7")    return FALSE;
    else if (HasItem(oTarget, "HALO")                   && sCDKEY == "QCRWUXFF")    return FALSE;
    else if (HasItem(oTarget, "SPIRITSOFPERDITION")     && sCDKEY == "QV4RGPM3")    return FALSE;
    else if (HasItem(oTarget, "SPIRITSOFPERDITION")     && sCDKEY == "FFUCMMYU")    return FALSE;
    else if (HasItem(oTarget, "SPIRITSOFPERDITION")     && sCDKEY == "FFUCMMYU")    return FALSE;
    else if (HasItem(oTarget, "ORDEROFVENGEANCE")       && sCDKEY == "QCRFQX7G")    return FALSE;
    else if (HasItem(oTarget, "BLOOD")                  && sCDKEY == "QGMEY943")    return FALSE;
    else if (HasItem(oTarget, "VISIGOTH")               && sCDKEY == "Q774K3PQ")    return FALSE;
    else if (HasItem(oTarget, "VISIGOTH")               && sCDKEY == "QVRQPPTC")    return FALSE;
    else if (HasItem(oTarget, "VISIGOTH")               && sCDKEY == "QV6TPYYT")    return FALSE;
    else if (GetIsPC(oTarget))                                                      return FALSE;
    return TRUE;
}
