const float fDelayTime = 600.0;

void PurgeBankChest(object oArea)
{
    object oTrash = GetFirstObjectInArea(oArea);
    object oInvItem;

    //Check for PCs
    object oPC = GetFirstPC();
    while (GetIsObjectValid(oPC))
    {
        if (GetArea(oPC) == oArea)
        {
            DeleteLocalInt(oArea, "CLEAN_BANK");
            return;
        }

        oPC = GetNextPC();
    }

    while(GetIsObjectValid(oTrash))
    {
        // Clear placeable inventories
        if(GetObjectType(oTrash) == OBJECT_TYPE_PLACEABLE)
        {
            if (GetHasInventory(oTrash))
            {
                object oInvItem = GetFirstItemInInventory(oTrash);
                while(GetIsObjectValid(oInvItem))
                {
                    DestroyObject(oInvItem);
                    oInvItem = GetNextItemInInventory(oTrash);
                }
            }
        }

        oTrash = GetNextObjectInArea(oArea);
    }

   DeleteLocalInt(oArea, "CLEAN_BANK");
}

void main()
{
    object oArea = OBJECT_SELF;
    object oPC = GetExitingObject();
    if (!GetIsPC(oPC)) return;

    if (GetLocalInt(oArea, "CLEAN_BANK") != 1)
    {
        DelayCommand(fDelayTime, PurgeBankChest(oArea));
        SetLocalInt(oArea, "CLEAN_BANK", 1);
    }
}
