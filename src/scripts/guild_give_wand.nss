void main()
{
    object oPC = GetLastUsedBy();
    object oWand = GetObjectByTag("wand_guild");
    string sCDKEY = GetPCPublicCDKey(oPC);

    if (sCDKEY == "Q774K3PQ" ||
        sCDKEY == "QVRQPPTC" ||
        sCDKEY == "QV6TPYYT" ||
        sCDKEY == "QGM9NWGF" ||
        sCDKEY == "FTRHELQV" ||
        sCDKEY == "QVRXE9NU" ||
        sCDKEY == "QGML66J4" ||
        sCDKEY == "QVRAWGXU" ||
        sCDKEY == "FFUTUP39" ||
        sCDKEY == "FFUCKG7Y" ||
        sCDKEY == "QCRWUXFF" ||
        sCDKEY == "QG69GGU7" ||
        sCDKEY == "QV4RGPM3" ||
        sCDKEY == "QG6L7N3D" ||
        sCDKEY == "QV69NUKM" ||
        sCDKEY == "FFUCQXQJ" ||
        sCDKEY == "FFUCMMYU" ||
        sCDKEY == "QC7MR4CE" ||
        sCDKEY == "VDH6MGU6" ||
        sCDKEY == "QGMNPGEE" ||
        sCDKEY == "QCRFQX7G" ||
        sCDKEY == "QC7HFG7E" ||
        sCDKEY == "QGMEY943" ||
        sCDKEY == "QG6RQU64")
    {
        CreateItemOnObject("wand_guild", oPC);
        return;
    }

    else

    SendMessageToPC(oPC, "<cú>ONLY LEADERS CAN ACQUIRE GUILD WANDS!!!</c>");
}
