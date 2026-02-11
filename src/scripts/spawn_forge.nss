#include "inc_remove_effec"
void main()
{
    object oPC = GetEnteringObject(),
           oObject1 = GetWaypointByTag("POST_omegasmith01"),
           oObject2 = GetWaypointByTag("POST_omegasmith02"),
           oObject3 = GetWaypointByTag("POST_omegasmith03"),
           oObject4 = GetWaypointByTag("POST_omegasmith04");


    AssignCommand(oPC, ClearAllActions(TRUE));
    RemoveAllEffects(oPC);

    if (!GetIsObjectValid(GetNearestObjectByTag("omegasmith002", oObject1)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "omegasmith002", GetLocation(oObject1));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("omegasmith003", oObject2)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "omegasmith003", GetLocation(oObject2));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("omegasmith004", oObject3)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "omegasmith004", GetLocation(oObject3));
    }
    if (!GetIsObjectValid(GetNearestObjectByTag("ilridentifier4", oObject4)))
    {
        CreateObject(OBJECT_TYPE_CREATURE, "ilridentifier", GetLocation(oObject4));
    }
}
