void main()
{
    object oPC = GetPCSpeaker();
    if ((GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) ||
         GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC))){
         AssignCommand(oPC, ClearAllActions());
         AssignCommand(oPC, ActionJumpToLocation(GetStartingLocation()));}
}

