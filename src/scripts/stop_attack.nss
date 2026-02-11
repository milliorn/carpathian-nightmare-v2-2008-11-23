// Stop players follow attacking from pvp area to no pvp area
void main()
{
    object oPC = GetEnteringObject();
    AssignCommand(oPC, ClearAllActions(TRUE));
}



