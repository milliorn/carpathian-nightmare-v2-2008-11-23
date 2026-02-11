#include "nwnx_realtime"
// Script:  moduleheartbeat
// Use:     This script runs every few seconds in the module, does EVERYTHING
// By:      Elwoodini
// Updated: Millorn

void main()
{
    object oPC = GetFirstPC(),
           oModule = GetModule();
    location lVis = GetLocation(oPC);

    if (GetLocalInt(oModule, "START_RESET") == TRUE) return;

    if ( GetServerUpSeconds() >= 60 &&  GetServerUpSeconds() <= 66)
    {
        SpeakString("<cÌwþ>Server re-start sequence will" +
        " begin in<có ó> 5<cÌwþ> hours.",TALKVOLUME_SHOUT);
        return;
    }

    else if ( GetServerUpSeconds() >= 3300 &&  GetServerUpSeconds() <= 3306)
    {
        SpeakString("<có  >Market <cóóó>items will be "+
        "</c>purged in Five Minutes", TALKVOLUME_SHOUT);
        return;
    }

    else if ( GetServerUpSeconds() >= 3600 &&  GetServerUpSeconds() <= 3606)
    {
        SpeakString("<cÌwþ>Server re-start sequence will" +
        " begin in<có ó> 4<cÌwþ> hours.  Boss Camping Script Purged!" +
        "<có  > Market <cóóó>items have been </c>purged", TALKVOLUME_SHOUT);
        ExecuteScript("acn_pawn_shop", OBJECT_SELF);
    }

    else if ( GetServerUpSeconds() >= 6700 &&  GetServerUpSeconds() <= 6706)
    {
        SpeakString("<có  >Market <cóóó>items will be "+
        "</c>purged in Five Minutes", TALKVOLUME_SHOUT);
        return;
    }

    else if ( GetServerUpSeconds() >= 7200 &&  GetServerUpSeconds() <= 7206)
    {
        SpeakString("<cÌwþ>Server re-start sequence will" +
        " begin in<có ó> 3<cÌwþ> hours.  Boss Camping Script Purged!" +
        "<có  > Market <cóóó>items have been </c>purged", TALKVOLUME_SHOUT);
        ExecuteScript("acn_pawn_shop", OBJECT_SELF);
        return;
    }

    else if ( GetServerUpSeconds() >= 10500 &&  GetServerUpSeconds() <= 10506)
    {
        SpeakString("<có  >Market <cóóó>items will be "+
        "</c>purged in Five Minutes", TALKVOLUME_SHOUT);
        return;
    }

    else if ( GetServerUpSeconds() >= 10800 &&  GetServerUpSeconds() <= 10806)
    {
        SpeakString("<cÌwþ>Server re-start sequence will" +
        " begin in<có ó> 2<cÌwþ> hours.  Boss Camping Script Purged!" +
        "<có  > Market <cóóó>items have been </c>purged", TALKVOLUME_SHOUT);
        ExecuteScript("acn_pawn_shop", OBJECT_SELF);
    }

    else if ( GetServerUpSeconds() >= 14100 &&  GetServerUpSeconds() <= 14106)
    {
        SpeakString("<có  >Market <cóóó>items will be "+
        "</c>purged in Five Minutes", TALKVOLUME_SHOUT);
        return;
    }

    else if ( GetServerUpSeconds() >= 14440 &&  GetServerUpSeconds() <= 14446)
    {
        SpeakString("<cÌwþ>Server re-start sequence will" +
        " begin in<có ó> 1<cÌwþ> hour.  Boss Camping Script Purged!" +
        "<có  > Market <cóóó>items have been </c>purged", TALKVOLUME_SHOUT);
        ExecuteScript("acn_pawn_shop", OBJECT_SELF);
    }

    else if ( GetServerUpSeconds() >= 17700 &&  GetServerUpSeconds() <= 17706)
    {
        SpeakString("<cÌwþ>Server re-start sequence will" +
        " begin in<có ó> 5<cÌwþ> minute.", TALKVOLUME_SHOUT);
        return;
    }

    else if ( GetServerUpSeconds() >= 17880 &&  GetServerUpSeconds() <= 17886)
    {
        SpeakString("<cÌwþ>Server re-start sequence will" +
        " begin in<có ó> 2<cÌwþ> minute.", TALKVOLUME_SHOUT);
        return;
    }

    else if ( GetServerUpSeconds() >= 17940 &&  GetServerUpSeconds() <= 17946)
    {
        SpeakString("<cÌwþ>Server re-start sequence will" +
        " begin in<có ó> 1<cÌwþ> minute.", TALKVOLUME_SHOUT);
        return;
    }

    else if ( GetServerUpSeconds() > 18000) // 12 hours  720.0 MINS 7200  2000  2400

    {
        while(GetIsObjectValid(oPC))
        {
            ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY, EffectVisualEffect(VFX_FNF_SCREEN_SHAKE), lVis);
            ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY, EffectVisualEffect(VFX_FNF_SCREEN_BUMP), lVis);
            PlaySound("as_sw_x2gong1");
            DelayCommand(1.0, PlaySound("as_sw_x2gong2"));
            DelayCommand(2.0, PlaySound("as_sw_x2gong3"));
            DelayCommand(3.0, AssignCommand(oPC, PlaySound("vs_nx2mephm_107")));
            oPC = GetNextPC();
        }

        SetLocalInt(oModule, "START_RESET", TRUE);
        SetLocalInt(oModule, "STOP_BANK", 1);
        ExecuteScript("acn_shifter", oPC);
        SpeakString("<có  >Server re-start sequence has begun.",TALKVOLUME_SHOUT);
        DelayCommand(1.0, SpeakString(
        " SERVER RESET IN <cóóó>60</c> SECONDS!!!!!",TALKVOLUME_SHOUT));
        DelayCommand(10.0, SpeakString(
        " SERVER RESET IN <cóóó>50</c> SECONDS!!!!!",TALKVOLUME_SHOUT));
        DelayCommand(20.0, SpeakString(
        " SERVER RESET IN <cóóó>40</c> SECONDS!!!!!",TALKVOLUME_SHOUT));
        DelayCommand(30.0, SpeakString(
        " SERVER RESET IN <cóóó>30</c> SECONDS!!!!!",TALKVOLUME_SHOUT));
        DelayCommand(40.0, SpeakString(
        " SERVER RESET IN <cóóó>20</c> SECONDS!!!!!",TALKVOLUME_SHOUT));
        DelayCommand(50.0, SpeakString(
        " SERVER RESET IN <cóóó>10</c> SECONDS!!!!!",TALKVOLUME_SHOUT));
        DelayCommand(59.0, SpeakString(
        " <có  >SERVER RESET!!!!!",TALKVOLUME_SHOUT));
        DelayCommand(60.0, WriteTimestampedLogEntry(
        "*****SERVER RESTART*****"));
        DelayCommand(61.0, ExecuteScript(
        "acn_boot_server", OBJECT_SELF));
        DelayCommand(62.0, SetLocalString(
        GetModule(), "NWNX!RESETPLUGIN!SHUTDOWN", "1"));
        //this line is the entire nwscriptside of the reset plugin
    }
}

