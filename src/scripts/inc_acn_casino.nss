#include "x2_inc_itemprop"

void Gem_Jackpot(object oPC);
void Gem_Jackpot(object oPC)
{
    object oChest = GetObjectByTag("SOCKET_GENERATOR");
    object oItem = GetFirstItemInInventory(oChest);
    while (GetIsObjectValid(oItem) == TRUE)
    {
        CopyItem(oItem, oPC, TRUE);
        oItem = GetNextItemInInventory(oChest);
    }
}

// Milliorn's Socket Generator
void Item_Prize(object oPC);
void Item_Prize(object oPC)
{
    // Vars
    object oChest = GetObjectByTag("BOSS_GENERATOR"),
           oItem, oCopy;
    int nCount = GetLocalInt(oChest, "itemcount"),
        nPick;

    if (!nCount)
    {
        oItem=GetFirstItemInInventory(oChest);
        do
        {
            nCount++;
            oItem=GetNextItemInInventory(oChest);
        } while (GetIsObjectValid(oItem));
        SetLocalInt(oChest, "itemcount", nCount);
    }

    nPick = Random(nCount);
    oItem = GetFirstItemInInventory(oChest);
    while (nPick)
    {
        nPick--;
        oItem=GetNextItemInInventory(oChest);
    }

    //Copy the item to the players inventory
    oCopy = CopyItem(oItem, oPC);
    SetDroppableFlag(oCopy, TRUE);
}

// Milliorn's Socket Generator
void Item_Jackpot(object oPC);
void Item_Jackpot(object oPC)
//Token Prize Script
{
    // Vars
    object oChest = GetObjectByTag("HIDDEN_SPAWN_CHEST"),
           oItem, oCopy;
    int nCount = GetLocalInt(oChest, "itemcount"),
        nPick;
    int nRollOne = d6();
    int nRollTwo = d6();
    int nRollThree = d6();
    int nRollFour = d6();

    itemproperty ipAdd1, ipAdd2, ipAdd3, ipAdd4, ipAdd5;

    // Reward Script

if (!nCount)
    {
        oItem=GetFirstItemInInventory(oChest);
        do
        {
            nCount++;
            oItem=GetNextItemInInventory(oChest);
        } while (GetIsObjectValid(oItem));
        SetLocalInt(oChest, "itemcount", nCount);
    }

    nPick = Random(nCount);
    oItem = GetFirstItemInInventory(oChest);
    while (nPick)
    {
        nPick--;
        oItem=GetNextItemInInventory(oChest);
    }

    //Copy the item to the players inventory
    oCopy = CopyItem(oItem, oPC);

    switch (GetBaseItemType(oCopy))
    {
        case BASE_ITEM_ARMOR:
        {
            //10% chance of Freedom as well
            ipAdd1=ItemPropertyACBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollTwo == 6) ipAdd3=ItemPropertyDamageResistance(d12(), IP_CONST_DAMAGERESIST_5);
            break;
        }
        case BASE_ITEM_GLOVES:
        {
            //10% additional chance of Regen or Damage Bonus
            ipAdd1=ItemPropertyAttackBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyDamageBonus(Random(13), d6());
            break;
        }
        case BASE_ITEM_HELMET:
        {
            //20% chance of additional True Seeing
            ipAdd1=ItemPropertyDarkvision();
            if (nRollOne == 6) ipAdd2=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollTwo == 6) ipAdd3=ItemPropertyACBonus(d6());
            break;
        }
        case BASE_ITEM_LONGBOW:
        case BASE_ITEM_SHORTBOW:
        case BASE_ITEM_LIGHTCROSSBOW:
        case BASE_ITEM_HEAVYCROSSBOW:
        case BASE_ITEM_SLING:
        {
            //10% chance of Massive Crits
            ipAdd1=ItemPropertyAttackBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyMassiveCritical(d6());
            break;
        }
        case BASE_ITEM_RING:
        {
            //10% chance of additional ability bonus
            ipAdd1=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyACBonus(d6());
            if (nRollTwo == 6) ipAdd3=ItemPropertyDamageResistance(Random(13), IP_CONST_DAMAGERESIST_5);
            break;
        }
        case BASE_ITEM_BOOTS:
        {
            //10% chance of additional haste
            ipAdd1=ItemPropertyACBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyDamageResistance(Random(13), IP_CONST_DAMAGERESIST_5);
            break;
        }
        case BASE_ITEM_AMULET:
        case BASE_ITEM_CLOAK:
        {
            //10% chance of additional Ability Bonus
            ipAdd1=ItemPropertyACBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollTwo == 6) ipAdd3=ItemPropertyDamageResistance(Random(13), IP_CONST_DAMAGERESIST_5);
            break;
        }
        case BASE_ITEM_LARGESHIELD:
        case BASE_ITEM_TOWERSHIELD:
        case BASE_ITEM_SMALLSHIELD:
        {
            //10% chance of Improved Evasion
            ipAdd1=ItemPropertyACBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollTwo == 6) ipAdd3=ItemPropertyDamageResistance(Random(13), IP_CONST_DAMAGERESIST_5);
            break;
        }
        case BASE_ITEM_BELT:
        case BASE_ITEM_BRACER:
        {
            //10 Chance of Ability Bonus
            ipAdd1=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyACBonus(d6());
            if (nRollTwo == 6) ipAdd3=ItemPropertyDamageResistance(Random(13), IP_CONST_DAMAGERESIST_5);
            break;
        }
        default:
        {
            if (!IPGetIsMeleeWeapon(oCopy)) return;

            //20% chance of Damage Bonus
            ipAdd1=ItemPropertyEnhancementBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyDamageBonus(Random(13), d6());
            if (nRollTwo == 6) ipAdd3=ItemPropertyKeen();
            if (nRollThree == 6) ipAdd4=ItemPropertyVampiricRegeneration(d6());
            if (nRollFour == 6) ipAdd5=ItemPropertyMassiveCritical(d6());
            break;
        }
   }

   IPSafeAddItemProperty(oCopy, ipAdd1);

   if (GetIsItemPropertyValid(ipAdd2))
   IPSafeAddItemProperty(oCopy, ipAdd2);

   if (GetIsItemPropertyValid(ipAdd3))
   IPSafeAddItemProperty(oCopy, ipAdd3);

   if (GetIsItemPropertyValid(ipAdd4))
   IPSafeAddItemProperty(oCopy, ipAdd4);

   if (GetIsItemPropertyValid(ipAdd5))
   IPSafeAddItemProperty(oCopy, ipAdd5);

   SetDroppableFlag(oCopy, TRUE);
}
//void main (){}
