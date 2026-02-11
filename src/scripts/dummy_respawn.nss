void ActionCreateCreature(string sCreature, location lLoc)
{
    CreateObject(OBJECT_TYPE_CREATURE, sCreature, lLoc);
}
void main()
{
    object oMod = GetModule();
    int nDOA = GetLocalInt(oMod,"DOA");
    location lLoc = GetLocalLocation(oMod,"Location");
    float fDelay = GetLocalFloat(oMod,"Float");
    DelayCommand(fDelay,ActionCreateCreature(GetLocalString(oMod,IntToString(nDOA)+"ResRef"),lLoc));
}

