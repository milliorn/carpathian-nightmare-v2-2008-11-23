// Milliorn's PC Info displayer item
#include "x2_inc_switches"
void main()
{
    object oActivator = GetItemActivator(),
           oGold = GetItemActivated(),
           oTarget = GetItemActivatedTarget();
    string sName1 = GetName(oTarget), sGold;
    string sName = GetPCPublicCDKey(oActivator);
    int iGold;

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
     string sReport;

        SendMessageToPC(oActivator, sReport);
        iGold = GetGold(oTarget);
        sGold = IntToString(iGold);
        SendMessageToAllDMs(sName1+" has "+sGold+" Gold"+ " Account: "+ GetPCPlayerName( oTarget )
                                    + " CD Key: " + GetPCPublicCDKey( oTarget )
                                    + " IP: " + GetPCIPAddress( oTarget ));


    }
    else
    {
        SendMessageToPC(oActivator, "You cannot use this item");
        SendMessageToAllDMs("Player "+sName1+" is trying to use a DM item");
        DestroyObject(oGold);
    }
}
