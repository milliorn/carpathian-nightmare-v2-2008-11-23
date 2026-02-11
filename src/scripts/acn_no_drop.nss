int nGetIsWeapon(object oItem)
{
    switch (GetBaseItemType(oItem))
    {

        case BASE_ITEM_BASTARDSWORD:
        case BASE_ITEM_BATTLEAXE:
        case BASE_ITEM_CLUB:
        case BASE_ITEM_DAGGER:
        case BASE_ITEM_DIREMACE:
        case BASE_ITEM_DOUBLEAXE:
        case BASE_ITEM_DWARVENWARAXE:
        case BASE_ITEM_GREATAXE:
        case BASE_ITEM_GREATSWORD:
        case BASE_ITEM_HALBERD:
        case BASE_ITEM_HANDAXE:
        case BASE_ITEM_HEAVYCROSSBOW:
        case BASE_ITEM_HEAVYFLAIL:
        case BASE_ITEM_KAMA:
        case BASE_ITEM_KATANA:
        case BASE_ITEM_KUKRI:
        case BASE_ITEM_LIGHTCROSSBOW:
        case BASE_ITEM_LIGHTFLAIL:
        case BASE_ITEM_LIGHTHAMMER:
        case BASE_ITEM_LIGHTMACE:
        case BASE_ITEM_LONGBOW:
        case BASE_ITEM_LONGSWORD:
        case BASE_ITEM_MAGICSTAFF:
        case BASE_ITEM_MORNINGSTAR:
        case BASE_ITEM_QUARTERSTAFF:
        case BASE_ITEM_RAPIER:
        case BASE_ITEM_SCIMITAR:
        case BASE_ITEM_SCYTHE:
        case BASE_ITEM_SHORTBOW:
        case BASE_ITEM_SHORTSPEAR:
        case BASE_ITEM_SHORTSWORD:
        case BASE_ITEM_SICKLE:
        case BASE_ITEM_SLING:
        case BASE_ITEM_TRIDENT:
        case BASE_ITEM_TWOBLADEDSWORD:
        case BASE_ITEM_WARHAMMER:
        case BASE_ITEM_WHIP:

        {
            return TRUE;

        }
    }
    return FALSE;
}

void CheckForTraps(object oArea, object oPC)
{
    object oTrap = GetNearestTrapToObject(oPC, FALSE);
    string sName = GetName(oPC),
           sLogInName = GetPCPlayerName(oPC),
           sCDKEY = GetPCPublicCDKey(oPC, FALSE);

    if (GetIsObjectValid(oTrap) && GetTrapCreator(oTrap) == oPC)
    {
        SetTrapActive(oTrap, FALSE);
        SetTrapDetectable(oTrap, FALSE);
        SetTrapDetectDC(oTrap, 0);
        SetTrapDisabled(oTrap);
        SetTrapDisarmable(oTrap, TRUE);
        SetTrapDisarmDC(oTrap, 0);
        SetTrapRecoverable(oTrap, TRUE);
        SpeakString("<cú>Player: </c>"+sName+
        "<cú> - Account: </c>"+sLogInName+"<cú> - ID: </c>"+sCDKEY+
        " has set a trap in NO PVP area an was sent to HELL!", TALKVOLUME_SHOUT);
        ClearAllActions(FALSE);
        AssignCommand(oPC, JumpToLocation(GetLocation(GetWaypointByTag("FKY_WAY_HELL"))));
    }
}

void CheckDroppedItem(object oItem, object oPC)
{
    object oDropped = (GetNearestObject(OBJECT_TYPE_ITEM, oPC));
    int nGold = 0;
    int nMaxValue = GetGoldPieceValue(oItem);
    float nMultiplier = 0.1;

    if (oDropped == oItem)
    {
        if (GetObjectType(oItem) != OBJECT_TYPE_ITEM)
        {
            SendMessageToPC(oPC, "<cú>You may only break down items for gold!");
            CopyItem(oItem, oPC, TRUE);
            DestroyObject(oItem);
            return;
        }

        if (GetPlotFlag(oItem))
        {
            SendMessageToPC(oPC, "<cú>You cannot break down plot items!");
            CopyItem(oItem, oPC, TRUE);
            DestroyObject(oItem);
            return;
        }

        if (GetTag(oItem) == "dm_ftoken")
        {
            nGold = FloatToInt(GetGoldPieceValue(oItem) * 0.02);
            SendMessageToPC(oPC, "Market bought " + GetName(oItem) + " for "
            + IntToString(nGold) + " gp.");
            GiveGoldToCreature(oPC, nGold);
            CopyItem(oItem, GetObjectByTag("MarketMerchant"), TRUE);
            DestroyObject(oItem);
            return;
        }

        if (GetBaseItemType(oItem) == BASE_ITEM_ARROW       ||
            GetBaseItemType(oItem) == BASE_ITEM_BOLT        ||
            GetBaseItemType(oItem) == BASE_ITEM_BULLET      ||
            GetBaseItemType(oItem) == BASE_ITEM_DART        ||
            GetBaseItemType(oItem) == BASE_ITEM_SHURIKEN    ||
            GetBaseItemType(oItem) == BASE_ITEM_THROWINGAXE)
        {
            nGold = FloatToInt(GetGoldPieceValue(oItem) * 0.01);
            SendMessageToPC(oPC, "Market bought " + GetName(oItem) + " for "
            + IntToString(nGold) + " gp.");
            GiveGoldToCreature(oPC, nGold);
            CopyItem(oItem, GetObjectByTag("MarketMerchant"), TRUE);
            DestroyObject(oItem);
            return;
        }
            nGold = FloatToInt(GetGoldPieceValue(oItem) * nMultiplier);

        if (nGold < 1)
        {
            nGold = 1;
        }

            SendMessageToPC(oPC, "Market bought " + GetName(oItem) + " for "
            + IntToString(nGold) + " gp.");
            GiveGoldToCreature(oPC, nGold);
            CopyItem(oItem, GetObjectByTag("MarketMerchant"), TRUE);
            DestroyObject(oItem);
    }
}

#include "x2_inc_switches"
void main()
{
     object oItem = GetModuleItemLost();
     object oPC = GetModuleItemLostBy();
     string sTag = GetTag(oItem);
     object oArea = GetArea(oPC);

     if (!GetIsPC(oPC)) return;

     if (GetIsInCombat(oPC))
     {
         if (!GetStolenFlag(oItem) && nGetIsWeapon(oItem) == TRUE)
         {
             CopyItem(oItem, oPC, TRUE);
             DestroyObject(oItem, 0.3);
         }
         return;
     }
     else
     {
        DelayCommand(1.0,CheckDroppedItem(oItem, oPC));

        if (GetBaseItemType(oItem) == BASE_ITEM_TRAPKIT)
        {
            if (GetLocalInt(oArea, "NO_PVP") == TRUE)
            {
                CheckForTraps(oArea, oPC);
            }
         }
     }
     // * Generic Item Script Execution Code
     // * If MODULE_SWITCH_EXECUTE_TAGBASED_SCRIPTS is set to TRUE on the module,
     // * it will execute a script that has the same name as the item's tag
     // * inside this script you can manage scripts for all events by checking against
     // * GetUserDefinedItemEventNumber(). See x2_it_example.nss
     if (GetModuleSwitchValue(MODULE_SWITCH_ENABLE_TAGBASED_SCRIPTS) == TRUE)
     {
        SetUserDefinedItemEventNumber(X2_ITEM_EVENT_UNACQUIRE);
        int nRet =   ExecuteScriptAndReturnInt(GetUserDefinedItemEventScriptName(oItem),OBJECT_SELF);
        if (nRet == X2_EXECUTE_SCRIPT_END)
        {
           return;
        }


    }
}
