#include "inc_colour"
void main()
{
    object oPC = GetLastUsedBy();
    object oModule = GetModule();
    string sPlayer = GetName(oPC);
    string sKey = GetPCPublicCDKey(oPC);

    if (GetHitDice(oPC) > 20)
        {SendMessageToPC(oPC, RainbowText("You have grown in power to the point that you are immune to the effects of the Magic Mushroom."));
        return;}


    else if (GetLocalString(oModule, sPlayer) != sKey)
    {
        ActionCastSpellAtObject(SPELL_AURA_OF_VITALITY, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_CAMOFLAGE, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_CLAIRAUDIENCE_AND_CLAIRVOYANCE, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_CLARITY, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_DARKVISION, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_DISPLACEMENT, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_GHOSTLY_VISAGE, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_BULLS_STRENGTH, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_CATS_GRACE, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_EAGLE_SPLEDOR, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_ENDURANCE, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_FOXS_CUNNING, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_OWLS_WISDOM, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_STONESKIN, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_INVISIBILITY, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_SPELL_RESISTANCE, oPC, TRUE);
        ActionCastSpellAtObject(SPELL_SEE_INVISIBILITY, oPC, TRUE);

        SetLocalString(oModule, sPlayer, sKey);
        DelayCommand(6.0, DeleteLocalString(oModule, sPlayer));
    }

    else
    {
        FloatingTextStringOnCreature("<c σ >Anti Spamming Code - <cσσσ>", oPC);
        SendMessageToPC(oPC, "<c σ >Anti Spamming Code - <cσσσ>");
        SendMessageToAllDMs("<c σ >Anti Spamming Code fired on <cσσσ>"+ sPlayer);
    }
}


