#include "nw_i0_plot"
#include "inc_guild"

void main()
{
    if (HasItem(oTarget, "LADIESOFCARPATHIA") && sCDKEY == "QGML66J4" ||
                                                 sCDKEY == "QC7MR4CE")
    {
        SpeakString(sPCName +"<cúúú> has been booted from <cúú>Ladies of Carpathia!", TALKVOLUME_SHOUT);
        oToken = GetItemPossessedBy(oTarget, "LADIESOFCARPATHIA");
        SetDroppableFlag(oToken, TRUE);
        DestroyObject(oToken, 0.3);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oTarget);
        return;
    }

    else if (HasItem(oTarget, "THESWIFT") && sCDKEY == "QCM9NWGF" ||
                                             sCDKEY == "QVRXE9NU")
    {
        SpeakString(sPCName +"<cúúú> has been booted from <cúú>The Swift!", TALKVOLUME_SHOUT);
        oToken = GetItemPossessedBy(oTarget, "THESWIFT");
        SetDroppableFlag(oToken, TRUE);
        DestroyObject(oToken, 0.3);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oTarget);
        return;
    }

    else if (HasItem(oTarget, "LEGIONOFTHEDAMNED") && sCDKEY == "FTRHELQV" ||
                                                      sCDKEY == "XXXXXXXX")
    {
        SpeakString(sPCName +"<cúúú> has been booted from <cúú>The Legion of the Damned!", TALKVOLUME_SHOUT);
        oToken = GetItemPossessedBy(oTarget, "LEGIONOFTHEDAMNED");
        SetDroppableFlag(oToken, TRUE);
        DestroyObject(oToken, 0.3);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oTarget);
        return;
    }

    else if (HasItem(oTarget, "LEAGUEOFGENTLEMAN") && sCDKEY == "XXXXXXXX" ||
                                                      sCDKEY == "VDH6MGU6" ||
                                                      sCDKEY == "QGMNPGEE" ||
                                                      sCDKEY == "QG6RQU64")
    {
        SpeakString(sPCName +"<cúúú> has been booted from <cúú>The League of Gentleman!", TALKVOLUME_SHOUT);
        oToken = GetItemPossessedBy(oTarget, "LEAGUEOFGENTLEMAN");
        SetDroppableFlag(oToken, TRUE);
        DestroyObject(oToken, 0.3);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oTarget);
        return;
    }

    else if (HasItem(oTarget, "PANTHERIS") && sCDKEY == "QV69NUKM" || sCDKEY == "QC7HFG7E")
    {
        SpeakString(sPCName +"<cúúú> has been booted from <cúú>Clan Pantheris!", TALKVOLUME_SHOUT);
        oToken = GetItemPossessedBy(oTarget, "PANTHERIS");
        SetDroppableFlag(oToken, TRUE);
        DestroyObject(oToken, 0.3);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oTarget);
        return;
    }

    else if (HasItem(oTarget, "CHAO") && sCDKEY == "QVRAWGXU")
    {
        SpeakString(sPCName +"<cúúú> has been booted from <cúú>Chaos' Hands against Oblivion!", TALKVOLUME_SHOUT);
        oToken = GetItemPossessedBy(oTarget, "CHAO");
        SetDroppableFlag(oToken, TRUE);
        DestroyObject(oToken, 0.3);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oTarget);
        return;
    }

    else if (HasItem(oTarget, "TEH") && sCDKEY == "FFUCQXQJ")
    {
        SpeakString(sPCName +"<cúúú> has been booted from <cúú>-= Teh =-!", TALKVOLUME_SHOUT);
        oToken = GetItemPossessedBy(oTarget, "TEH");
        SetDroppableFlag(oToken, TRUE);
        DestroyObject(oToken, 0.3);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oTarget);
        return;
    }

    else if (HasItem(oTarget, "ORDEROFVENGEANCE") && sCDKEY == "FFUCKG7Y" || sCDKEY == "QCRFQX7G")
    {
        SpeakString(sPCName +"<cúúú> has been booted from <cúú>::Order of Vengeance::!", TALKVOLUME_SHOUT);
        oToken = GetItemPossessedBy(oTarget, "ORDEROFVENGEANCE");
        SetDroppableFlag(oToken, TRUE);
        DestroyObject(oToken, 0.3);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oTarget);
        return;
    }

    else if (HasItem(oTarget, "HALO") && sCDKEY == "QG69GGU7" || sCDKEY == "QCRWUXFF")
    {
        SpeakString(sPCName +"<cúúú> has been booted from <cúú>H.A.L.O!", TALKVOLUME_SHOUT);
        oToken = GetItemPossessedBy(oTarget, "HALO");
        SetDroppableFlag(oToken, TRUE);
        DestroyObject(oToken, 0.3);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oTarget);
        return;
    }

    else if (HasItem(oTarget, "SPIRITSOFPERDITION") && sCDKEY == "QV4RGPM3" || sCDKEY == "FFUCMMYU")
    {
        SpeakString(sPCName +"<cúúú> has been booted from <cúú>Spirits of Perdition!", TALKVOLUME_SHOUT);
        oToken = GetItemPossessedBy(oTarget, "SPIRITSOFPERDITION");
        SetDroppableFlag(oToken, TRUE);
        DestroyObject(oToken, 0.3);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oTarget);
        return;
    }

    else if (HasItem(oTarget, "BLOOD") && sCDKEY == "QGMEY943")
    {
        SpeakString(sPCName +"<cúúú> has been booted from <cúú>Bounty Legion: Order of Destruction", TALKVOLUME_SHOUT);
        oToken = GetItemPossessedBy(oTarget, "BLOOD");
        SetDroppableFlag(oToken, TRUE);
        DestroyObject(oToken, 0.3);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oTarget);
        return;
    }

    else if (HasItem(oTarget, "VISIGOTH") && sCDKEY == "Q774K3PQ" ||
                                             sCDKEY == "QVRQPPTC" ||
                                             sCDKEY == "QV6TPYYT")
    {
        SpeakString(sPCName +"<cúúú> has been booted from <cúú>The Visigoths!", TALKVOLUME_SHOUT);
        oToken = GetItemPossessedBy(oTarget, "VISIGOTH");
        SetDroppableFlag(oToken, TRUE);
        DestroyObject(oToken, 0.3);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oTarget);
        return;
    }

    else
    {
        SendMessageToPC(oActivator, "<cú>You cannot use this item");
        SendMessageToAllDMs("<cú>Player </c>" + sPCName + "<cú> is trying to use a GUILD item");
        SetDroppableFlag(oWand, TRUE);
        DestroyObject(oWand, 0.3);
    }
}

