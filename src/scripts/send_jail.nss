#include "jail_timer"

void main()
{
    object oPC = GetEnteringObject(), oItem;
    string sName = GetName(oPC);

    if (GetIsObjectValid(GetItemPossessedBy(oPC, "jail_token")))
    {
        AssignCommand(oPC, ClearAllActions(TRUE));
        DelayCommand(2.0, JailPlayer(oPC));
    }

    else
    {
        DelayCommand(6.0, ExportSingleCharacter(oPC));
    }
}
