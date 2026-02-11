//ACN Bounty Item
#include "x2_inc_switches"
void main()
{
    object  oPC   = GetItemActivator();
    object  oItem = GetItemActivatedTarget(),
           oRecall = GetItemPossessedBy(oPC, "sf_recall");
    int    nVictims = GetLocalInt(oRecall, "ACN_KILL"),
           nDeaths = GetLocalInt(oRecall, "ACN_DEATH"),
           nScore = (nVictims - nDeaths);
    string sVictims = IntToString(nVictims),
           sDeaths =  IntToString(nDeaths),
           sScore = IntToString(nScore);

    SendMessageToPC(oPC, "<cÌwþ>ACN PVP STATS!");
    SendMessageToPC(oPC, "<c ó >VICTORIES: <cóóó>" +sVictims);
    SendMessageToPC(oPC, "<có  >DEFEATS: <cóóó>" +sDeaths);
    SendMessageToPC(oPC, "<cfÌþ>SCORE: <cóóó>" +sScore);
}

