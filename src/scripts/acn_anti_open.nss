void main()
{
    object oPC = GetLastOpenedBy();
    string sName = GetName(oPC, FALSE);
    AssignCommand(oPC, ActionJumpToLocation(GetStartingLocation()));
    SendMessageToAllDMs("WARNING!!! "+sName+ " tried to open a Loot Generator!");
    SetLocked(oPC, TRUE);
}
