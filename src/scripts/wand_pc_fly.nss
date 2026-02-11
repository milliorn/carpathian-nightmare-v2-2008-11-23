#include "x2_inc_switches"
void main()
{
    object oActivator = GetItemActivator(),
           oBoot = GetItemActivated(),
           oTarget = GetItemActivatedTarget();
    string sName1 = GetName(oTarget);
    string sName = GetPCPublicCDKey(oActivator);
    effect eFly = EffectDisappearAppear(GetItemActivatedTargetLocation());

    if (GetUserDefinedItemEventNumber() != X2_ITEM_EVENT_ACTIVATE) return;

    if (sName == "QG6CXEYC" || //milliorn
        sName == "Q76A43RL" || //milliorn
        sName == "QG6QREW7" || //fooshwa
        sName == "QC79CL3G" || //Elwoodini
        sName == "QVR9HDJH" || //Elwoodini
        sName == "QV69QWHT" || //The Bloodless
        sName == "Q76AMR3T" || //darryhick
        sName == "QG6L7N3D" || //goldenpanda
        sName == "QGM9NWGF" || //Jasper Tbe Swift
        sName == "FFUCKG7Y" || //vvn
        sName == "QCRWUXFF")   //Bassbastard

    {
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eFly, GetItemActivator(), 6.0);
    }

    else
    {
        SendMessageToPC(oActivator, "You cannot use this item");
        SendMessageToAllDMs("Player "+sName+" is trying to use a DM item");
        DestroyObject(oBoot);
    }
}
