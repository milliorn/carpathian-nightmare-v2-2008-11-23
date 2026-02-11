void main()
{
    object oPC = GetEnteringObject();
    string sName = GetPCPublicCDKey(oPC);
    location iLoc = GetLocation(GetWaypointByTag("DM_ROOM"));

    if (sName == "QG6CXEYC" || //milliorn
        sName == "Q76A43RL" || //milliorn
        sName == "QG6QREW7" || //fooshwa
        sName == "QC79CL3G" || //Elwoodini
        sName == "QVR9HDJH" || //Elwoodini
        sName == "QV69QWHT" || //The Bloodless
        sName == "Q76AMR3T" || //darryhick
        sName == "QVRFE9XG" || //imgonnagetu
        sName == "QG6L7N3D" || //goldenpanda
        sName == "QGM9NWGF" || //Jasper Tbe Swift
        sName == "FFUCKG7Y" || //vvn
        sName == "QCRWUXFF")   //Bassbastard

    {

        AssignCommand(oPC, JumpToLocation(iLoc));
    }
}

