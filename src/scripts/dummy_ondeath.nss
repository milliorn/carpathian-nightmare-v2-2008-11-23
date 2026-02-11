void main()
{
    float fDelaySpawn = 7.0f;
    object oMod = GetModule();
    int nDOA = GetLocalInt(oMod,"DOA")+1;
    SetLocalInt(oMod,"DOA",nDOA);
    SetLocalString(oMod,IntToString(nDOA)+"ResRef",GetResRef(OBJECT_SELF));
    SetLocalLocation(oMod,"Location",GetLocalLocation(OBJECT_SELF,"LOC"));
    SetLocalFloat(oMod,"Float",fDelaySpawn);
    ExecuteScript("dummy_respawn",oMod);
    ExecuteScript("nw_c2_default7", OBJECT_SELF);
}
