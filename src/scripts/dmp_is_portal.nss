//:: dmp_is_portal
//:: Checks to see if the DM is trying to use the portal.  Returns true if they are.
int StartingConditional()
{
    //if(GetLocalInt(OBJECT_SELF, "dmp_use") == 1)
    //{
    //    SetLocalInt(OBJECT_SELF, "dmp_use", 0);
    //    return TRUE;
    //}
    if(GetObjectType(OBJECT_SELF) == OBJECT_TYPE_PLACEABLE)
        return TRUE;
    return FALSE;
}
