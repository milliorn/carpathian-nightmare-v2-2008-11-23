//Token Prize Script
#include "x2_inc_itemprop"

void main()
{
    // Vars
    object oPC = GetPCSpeaker(),
           oToken = GetItemPossessedBy(oPC, "gauntlet_token"),
           oRecall = GetItemPossessedBy(oPC, "sf_recall"),
           oChest = GetObjectByTag("HIDDEN_SPAWN_CHEST"),
           oItem, oCopy;
    int nCount = GetLocalInt(oChest, "itemcount"),
        nPick;
    int nRollOne = d6();
    int nRollTwo = d6();
    int nRollThree = d6();
    int nRollFour = d6();
    int nRollDamage = d20();
    int nDamageResist = d100();
    int nRollSkill = d6();
    itemproperty ipAdd1, ipAdd2, ipAdd3, ipAdd4, ipAdd5;

    // Take Token From Player
    DestroyObject(oToken);
    // Delete Token Variable
    DeleteLocalInt(oRecall, "GAUNTLET_TOKEN");

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
            ipAdd1=ItemPropertyACBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollSkill = 6) ipAdd3=ItemPropertySkillBonus(Random(26), d6());
            if (nDamageResist == 1) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ACID, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 2) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_BLUDGEONING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 3) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_COLD, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 4) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_DIVINE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 5) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ELECTRICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 6) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_FIRE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 7) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_MAGICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 8) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_NEGATIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 9) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_PIERCING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 10) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_POSITIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 11) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SLASHING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 12) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SONIC, IP_CONST_DAMAGERESIST_5);
            break;
        }
        case BASE_ITEM_GLOVES:
        {
            ipAdd1=ItemPropertyAttackBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyMassiveCritical(Random(14) + 1);
            if (nRollDamage == 1) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_ACID, d10());
            else if(nRollDamage == 2) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_ACID, d10());
            else if(nRollDamage == 3) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_COLD, d10());
            else if(nRollDamage == 4) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_DIVINE, d10());
            else if(nRollDamage == 5) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_ELECTRICAL, d10());
            else if(nRollDamage == 6) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_FIRE, d10());
            else if(nRollDamage == 7) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_MAGICAL, d10());
            else if(nRollDamage == 8) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_NEGATIVE, d10());
            else if(nRollDamage == 9) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_POSITIVE, d10());
            else if(nRollDamage == 10) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_SONIC, d10());
            break;
        }
        case BASE_ITEM_HELMET:
        {
            ipAdd1=ItemPropertyACBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollSkill = 6) ipAdd3=ItemPropertySkillBonus(Random(26), d6());
            if (nDamageResist == 1) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ACID, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 2) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_BLUDGEONING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 3) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_COLD, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 4) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_DIVINE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 5) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ELECTRICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 6) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_FIRE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 7) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_MAGICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 8) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_NEGATIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 9) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_PIERCING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 10) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_POSITIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 11) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SLASHING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 12) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SONIC, IP_CONST_DAMAGERESIST_5);
            break;
        }
        case BASE_ITEM_LONGBOW:
        case BASE_ITEM_SHORTBOW:
        case BASE_ITEM_LIGHTCROSSBOW:
        case BASE_ITEM_HEAVYCROSSBOW:
        case BASE_ITEM_SLING:
        {
            ipAdd1=ItemPropertyAttackBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyMassiveCritical(Random(14) + 1);
            if (nRollDamage == 1) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_ACID, d10());
            else if(nRollDamage == 2) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_ACID, d10());
            else if(nRollDamage == 3) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_COLD, d10());
            else if(nRollDamage == 4) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_DIVINE, d10());
            else if(nRollDamage == 5) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_ELECTRICAL, d10());
            else if(nRollDamage == 6) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_FIRE, d10());
            else if(nRollDamage == 7) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_MAGICAL, d10());
            else if(nRollDamage == 8) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_NEGATIVE, d10());
            else if(nRollDamage == 9) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_POSITIVE, d10());
            else if(nRollDamage == 10) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_SONIC, d10());
            break;
        }
        case BASE_ITEM_RING:
        {
            ipAdd1=ItemPropertyACBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollSkill = 6) ipAdd3=ItemPropertySkillBonus(Random(26), d6());
            if (nDamageResist == 1) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ACID, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 2) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_BLUDGEONING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 3) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_COLD, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 4) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_DIVINE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 5) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ELECTRICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 6) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_FIRE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 7) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_MAGICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 8) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_NEGATIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 9) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_PIERCING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 10) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_POSITIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 11) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SLASHING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 12) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SONIC, IP_CONST_DAMAGERESIST_5);
            break;
        }
        case BASE_ITEM_BOOTS:
        {
            ipAdd1=ItemPropertyACBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollSkill = 6) ipAdd3=ItemPropertySkillBonus(Random(26), d6());
            if (nDamageResist == 1) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ACID, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 2) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_BLUDGEONING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 3) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_COLD, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 4) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_DIVINE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 5) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ELECTRICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 6) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_FIRE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 7) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_MAGICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 8) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_NEGATIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 9) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_PIERCING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 10) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_POSITIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 11) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SLASHING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 12) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SONIC, IP_CONST_DAMAGERESIST_5);
            break;
        }
        case BASE_ITEM_AMULET:
        case BASE_ITEM_CLOAK:
        {
           ipAdd1=ItemPropertyACBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollSkill = 6) ipAdd3=ItemPropertySkillBonus(Random(26), d6());
            if (nDamageResist == 1) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ACID, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 2) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_BLUDGEONING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 3) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_COLD, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 4) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_DIVINE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 5) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ELECTRICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 6) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_FIRE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 7) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_MAGICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 8) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_NEGATIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 9) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_PIERCING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 10) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_POSITIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 11) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SLASHING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 12) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SONIC, IP_CONST_DAMAGERESIST_5);
            break;
        }
        case BASE_ITEM_LARGESHIELD:
        case BASE_ITEM_TOWERSHIELD:
        case BASE_ITEM_SMALLSHIELD:
        {
            ipAdd1=ItemPropertyACBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollSkill = 6) ipAdd3=ItemPropertySkillBonus(Random(26), d6());
            if (nDamageResist == 1) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ACID, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 2) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_BLUDGEONING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 3) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_COLD, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 4) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_DIVINE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 5) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ELECTRICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 6) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_FIRE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 7) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_MAGICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 8) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_NEGATIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 9) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_PIERCING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 10) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_POSITIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 11) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SLASHING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 12) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SONIC, IP_CONST_DAMAGERESIST_5);
            break;
        }
        case BASE_ITEM_BELT:
        case BASE_ITEM_BRACER:
        {
            ipAdd1=ItemPropertyACBonus(d6());
            if (nRollOne == 6) ipAdd2=ItemPropertyAbilityBonus(Random(5), d6());
            if (nRollSkill = 6) ipAdd3=ItemPropertySkillBonus(Random(26), d6());
            if (nDamageResist == 1) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ACID, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 2) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_BLUDGEONING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 3) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_COLD, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 4) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_DIVINE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 5) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_ELECTRICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 6) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_FIRE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 7) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_MAGICAL, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 8) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_NEGATIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 9) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_PIERCING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 10) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_POSITIVE, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 11) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SLASHING, IP_CONST_DAMAGERESIST_5);
            else if (nDamageResist == 12) ipAdd4=ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_SONIC, IP_CONST_DAMAGERESIST_5);
            break;
        }
        default:
        {
            if (!IPGetIsMeleeWeapon(oCopy)) return;

            ipAdd1=ItemPropertyEnhancementBonus(d6());
            if (nRollTwo == 6) ipAdd3=ItemPropertyKeen();
            if (nRollThree == 6) ipAdd4=ItemPropertyVampiricRegeneration(d6());
            if (nRollFour == 6) ipAdd5=ItemPropertyMassiveCritical(Random(14) + 1);
            if (nRollDamage == 1) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_ACID, d10());
            else if(nRollDamage == 2) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_ACID, d10());
            else if(nRollDamage == 3) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_COLD, d10());
            else if(nRollDamage == 4) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_DIVINE, d10());
            else if(nRollDamage == 5) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_ELECTRICAL, d10());
            else if(nRollDamage == 6) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_FIRE, d10());
            else if(nRollDamage == 7) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_MAGICAL, d10());
            else if(nRollDamage == 8) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_NEGATIVE, d10());
            else if(nRollDamage == 9) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_POSITIVE, d10());
            else if(nRollDamage == 10) ipAdd2=ItemPropertyDamageBonus(IP_CONST_DAMAGETYPE_SONIC, d10());
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
   SetName(oCopy, "Ravana " + GetName(oCopy, TRUE));

}

