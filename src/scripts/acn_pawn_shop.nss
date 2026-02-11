void main()
{
    object oStore = GetObjectByTag("MarketMerchant");
    object oItem = GetFirstItemInInventory(oStore);
    while (GetIsObjectValid(oItem) == TRUE)
    {
        DestroyObject(oItem);
        oItem = GetNextItemInInventory(oStore);
    }
}
