//Penguin player conversation starter
#include "penguin_inc"
#include "x2_inc_switches"
void main()
{
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

        if(GetCutsceneMode(oTarget) == FALSE)
        {
            SendMessageToPC(oActivator, "Target is not in cutscene mode");
            return;
        }

        else if(GetCutsceneMode(oTarget) == TRUE)
        {
            SetCutsceneMode(oTarget, FALSE, TRUE);
        }
    }

    else
    {
        SendMessageToPC(oActivator, "You cannot use this item");
        SendMessageToAllDMs("Player " + sName1 + " is trying to use a DM item");
        DestroyObject(oPenguin);
    }
}
