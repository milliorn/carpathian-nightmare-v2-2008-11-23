void main()
{
    object oPC = GetLastUsedBy();
    object oLeader = GetFactionLeader(oPC);
    object oLeaderArea = GetArea(oLeader);
    object oArea = GetArea(OBJECT_SELF);
    string sName = GetName(oPC),
           sArea = GetTag(GetArea(oLeader));
    location iTarget = GetLocation(oLeader);
    effect eVis = EffectVisualEffect(VFX_IMP_HEALING_X);

    if (oLeader == oPC) return;

/*    else if (GetLocalInt(oArea, sName) == TRUE)
    {
        FloatingTextStringOnCreature("<cú>You must wait 3 minutes before you "+
        "can teleport to your leader", oPC);
        return;
    }
*/
    else if (sArea == "Jail" ||
             sArea == "DM_ROOM" ||
             sArea == "RAVANA_BOSS" ||
             sArea == "TREASURE_ROOM" ||
             sArea == "XPBank" ||
             sArea == "DraconianTreasury" ||
             sArea == "MemnoksLair" ||
             sArea == "GauntletExodus" ||
             sArea == "KoscheisTunnels" ||
             GetLocalInt(oLeaderArea, "NO_PORTALS"))
        {
            FloatingTextStringOnCreature("<cú>Cannot teleport to this area", oPC);
            return;
        }

    else if (GetArea(oLeader) == OBJECT_INVALID || oLeader == OBJECT_INVALID)
    {
            FloatingTextStringOnCreature("<cú>Unable to port to leader,"
            + " try again in a few seconds", oPC);
            return;
    }

    else

//    SetLocalInt(oArea, sName, TRUE);
//    DelayCommand(180.0, DeleteLocalInt(oArea, sName));
    DelayCommand(1.5,(AssignCommand(oPC, JumpToLocation(iTarget))));
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
}
