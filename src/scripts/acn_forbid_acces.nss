void main()
{
    object oPC = GetEnteringObject();
    if (GetPCPublicCDKey(oPC) != "QG6CXEYC")
    {
        string sName = GetName(oPC, FALSE);
        AssignCommand(oPC, ActionJumpToLocation(GetStartingLocation()));
        SendMessageToAllDMs("WARNING!!! "+sName+ " tried to access SQL Room!");
        WriteTimestampedLogEntry("WARNING!!! "+sName+ " tried to access SQL Room!");
    }
}
