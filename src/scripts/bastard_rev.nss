//Put this script OnEnter
void main()
{
    object oPC = GetEnteringObject();
    if (!GetIsPC(oPC)) return;
    ExploreAreaForPlayer(GetArea(oPC), oPC);
}

