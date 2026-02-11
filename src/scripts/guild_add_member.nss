#include "inc_guild"

void main()
{
    if (sCDKEY == "QGML66J4" ||
        sCDKEY == "QC7MR4CE")
    {
        SpeakString(sPCName + "<cúúú> has joined <cúú>" +
        "Ladies of Carpathia!", TALKVOLUME_SHOUT);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm1, oTarget);
        oToken = CreateItemOnObject("GUILD_TOKEN", oTarget, 1, "LADIESOFCARPATHIA");
        DelayCommand(0.3, SetName(oToken, "Ladies of Carpathia"));
        return;
    }

    else if (sCDKEY == "QGMEY943")
    {
        SpeakString(sPCName + "<cúúú> has joined <cúú>" +
        "Bounty Legion: Order of Destruction!", TALKVOLUME_SHOUT);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm15, oTarget);
        oToken = CreateItemOnObject("GUILD_TOKEN", oTarget, 1, "BLOOD");
        DelayCommand(0.3, SetName(oToken, "BLOOD"));
        return;
    }

    else if (sCDKEY == "QGM9NWGF" ||
             sCDKEY == "QVRXE9NU")
    {
        SpeakString(sPCName + "<cúúú> has joined <cúú>" +
        "The Swift!", TALKVOLUME_SHOUT);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm2, oTarget);
        oToken = CreateItemOnObject("GUILD_TOKEN", oTarget, 1, "THESWIFT");
        DelayCommand(0.3, SetName(oToken, "The Swift"));
        return;
    }

    else if (sCDKEY == "FTRHELQV"||
             sCDKEY == "XXXXXXXX")
    {
        SpeakString(sPCName + "<cúúú> has joined <cúú>" +
        "The Legion of the Damned!", TALKVOLUME_SHOUT);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm3, oTarget);
        oToken = CreateItemOnObject("GUILD_TOKEN", oTarget, 1, "LEGIONOFTHEDAMNED");
        DelayCommand(0.3, SetName(oToken, "Legion of the Damned"));
        return;
    }

    else if (sCDKEY == "VDH6MGU6" ||
             sCDKEY == "QGMNPGEE" ||
             sCDKEY == "QG6RQU64" ||
             sCDKEY == "XXXXXXXX")
    {
        SpeakString(sPCName + "<cúúú> has joined <cúú>"+
        "The League of Gentleman!", TALKVOLUME_SHOUT);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm4, oTarget);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm6, oTarget);
        oToken = CreateItemOnObject("GUILD_TOKEN", oTarget, 1, "LEAGUEOFGENTLEMAN");
        DelayCommand(0.3, SetName(oToken, "League of Gentleman"));
        return;
    }

    else if (sCDKEY == "QV69NUKM" ||
             sCDKEY == "QC7HFG7E")
    {
        SpeakString(sPCName + "<cúúú> has joined <cúú>" +
        "Clan Pantheris!", TALKVOLUME_SHOUT);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm5, oTarget);
        oToken = CreateItemOnObject("GUILD_TOKEN", oTarget, 1, "PANTHERIS");
        DelayCommand(0.3, SetName(oToken, "Clan Pantheris"));
        return;
    }

    else if (sCDKEY == "QVRAWGXU")
    {
        SpeakString(sPCName + "<cúúú> has joined <cúú>" +
        "Chaos' Hands against Oblivion!", TALKVOLUME_SHOUT);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm7, oTarget);
        oToken = CreateItemOnObject("GUILD_TOKEN", oTarget, 1, "CHAO");
        DelayCommand(0.3, SetName(oToken, "Chaos' Hands against Oblivion"));
        return;
    }

    else if (sCDKEY == "FFUCQXQJ")
    {
        SpeakString(sPCName + "<cúúú> has joined <cúú>" +
        "-= Teh =-!", TALKVOLUME_SHOUT);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm8, oTarget);
        oToken = CreateItemOnObject("GUILD_TOKEN", oTarget, 1, "TEH");
        DelayCommand(0.3, SetName(oToken, "-= Teh =-!"));
        return;
    }

    else if (sCDKEY == "FFUCKG7Y" ||
             sCDKEY == "QCRFQX7G")
    {
        SpeakString(sPCName + "<cúúú> has joined <cúú>" +
        "::Order of Vengeance::", TALKVOLUME_SHOUT);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm17, oTarget);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm14, oTarget);
        oToken = CreateItemOnObject("GUILD_TOKEN", oTarget, 1, "ORDEROFVENGEANCE");
        DelayCommand(0.3, SetName(oToken, "::Order of Vengeance::"));
        return;
    }

    else if (sCDKEY == "QG69GGU7" ||
             sCDKEY == "QCRWUXFF")
    {
        SpeakString(sPCName + "<cúúú> has joined <cúú>" +
        "H.A.L.O", TALKVOLUME_SHOUT);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm10, oTarget);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm11, oTarget);
        oToken = CreateItemOnObject("GUILD_TOKEN", oTarget, 1, "HALO");
        DelayCommand(0.3, SetName(oToken, "H.A.L.O"));
        return;
    }

    else if (sCDKEY == "QV4RGPM3" ||
             sCDKEY == "FFUCMMYU")
    {
        SpeakString(sPCName + "<cúúú> has joined <cúú>" +
        "Spirits of Perdition!", TALKVOLUME_SHOUT);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm12, oTarget);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm13, oTarget);
        oToken = CreateItemOnObject("GUILD_TOKEN", oTarget, 1, "SPIRITSOFPERDITION");
        DelayCommand(0.3, SetName(oToken, "Spirits of Perdition"));
        return;
    }

    else if (sCDKEY == "Q774K3PQ" ||
             sCDKEY == "QVRQPPTC" ||
             sCDKEY == "QV6TPYYT")
    {
        SpeakString(sPCName + "<cúúú> has joined <cúú>"+
        "The Visigoths", TALKVOLUME_SHOUT);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm19, oTarget);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePerm20, oTarget);
        oToken = CreateItemOnObject("GUILD_TOKEN", oTarget, 1, "VISIGOTH");
        DelayCommand(0.3, SetName(oToken, "Visigoth"));
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
