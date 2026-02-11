//#include "inc_acn_casino"
#include "nw_i0_plot"
int GetItemsCount(object oTarget,string sItem);
void DestroyNumItems(object oTarget, string sTag, int nToDestroy = 1);


void main()
{

    object  oPC   = GetLastUsedBy();
    int     oGold = GetGold(oPC),
            slot = GetLocalInt(OBJECT_SELF, "slot"),
            iroll = d6(1);
    effect  eVfx = EffectVisualEffect(VFX_FNF_LOS_NORMAL_20, FALSE),
            eVfx1 = EffectVisualEffect(VFX_FNF_LOS_EVIL_20, FALSE),
            eVfx2 = EffectVisualEffect(VFX_FNF_LOS_HOLY_20, FALSE);

    if (slot != 0)
    {
        return;
    }

    SetLocalInt(OBJECT_SELF, "slot", 1);

    if(GetItemsCount(oPC, "dm_ftoken") <5)
    {
        SendMessageToPC(oPC, "<có ó>You do not have enough Gil to play this slot machine.");
        DelayCommand(3.5,  SetLocalInt(OBJECT_SELF, "slot", 0));
        return;
    }

        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVfx, GetLocation(OBJECT_SELF));
        ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE);
        ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE); // move the lever
        DelayCommand(3.5,  SetLocalInt(OBJECT_SELF, "slot", 0));


    if(iroll ==1)

    {
        GiveXPToCreature(oPC, Random(50000));
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVfx2, GetLocation(OBJECT_SELF));
        SendMessageToPC(oPC, "<cú>You won!!!");
        DestroyNumItems (oPC, "dm_ftoken", 5);
        return;

    }

    else

    {
        SendMessageToPC(oPC, "<cú>You Lose!");
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVfx1, GetLocation(oPC));
        DestroyNumItems (oPC, "dm_ftoken", 5);

    }
}






int GetItemsCount(object oTarget,string sItem)
{
int nNumItems = 0;
object oItem = GetFirstItemInInventory(oTarget);
while (GetIsObjectValid(oItem) == TRUE)
{
if (GetTag(oItem) == sItem)
{
nNumItems = nNumItems + GetNumStackedItems(oItem);
}
oItem = GetNextItemInInventory(oTarget);
}
return nNumItems;
}



void DestroyNumItems(object oTarget, string sTag, int nToDestroy = 1)
{
    object oItem = GetFirstItemInInventory(oTarget);
    while(oItem != OBJECT_INVALID && nToDestroy > 0)
    {
        if(GetTag(oItem) == sTag)
        {
            int nStackSize = GetItemStackSize(oItem);
            if(nStackSize <= nToDestroy)
            {
                nToDestroy -= nStackSize;
                DestroyObject(oItem);
            }
            else
            {
                SetItemStackSize(oItem, nStackSize - nToDestroy);
                nToDestroy = 0;
            }
        }
        oItem = GetNextItemInInventory(oTarget);
    }
}
