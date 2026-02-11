//Put this script OnUsed
void main()
{
    object oPC = GetLastUsedBy();
    if (!GetIsPC(oPC)) return;
    AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_MEDITATE, 1.0f, 30.0f));
}
