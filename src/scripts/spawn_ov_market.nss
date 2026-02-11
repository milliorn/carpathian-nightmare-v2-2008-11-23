#include "inc_remove_effec"
void main()
{
    object oPC = GetEnteringObject(),
           oObject = GetWaypointByTag("NW_SPAWN_CROW");

    AssignCommand(oPC, ClearAllActions(TRUE));
    RemoveAllEffects(oPC);

    if (!GetIsObjectValid(GetNearestObjectByTag("crowscousinth", oObject)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "crowscousinth", GetLocation(oObject));
    }

}

