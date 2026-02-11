

//Put this script OnEnter
void main()
{

object oPC = GetEnteringObject();
string sName = GetName(oPC, FALSE),
       sAcct = GetPCPlayerName(oPC),
       sKey  = GetPCPublicCDKey(oPC, FALSE);

if (!GetIsPC(oPC) || GetIsDM(oPC)) return; //if (!GetIsPC(oPC)) return;

if (GetCampaignInt("BOSS", "3",oPC))
{
    AssignCommand(oPC, ClearAllActions());
    AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetWaypointByTag("NW_HOME"))));
}
if (GetHitDice(oPC) >= 25)

   {

   AssignCommand(oPC, ClearAllActions());
   AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetWaypointByTag("NW_HOME"))));

   DelayCommand(5.0, SendMessageToPC(oPC, "YOUR ARE TOO HIGH LEVEL FOR THAT BOSS!!!!!!!!!"));
   DelayCommand(2.5 ,FloatingTextStringOnCreature("YOUR ARE TOO HIGH LEVEL FOR THAT BOSS!!!!!!!!!", oPC));

   SendMessageToAllDMs("PLAYER: "+sName+" CD KEY: "+sKey+" ACCT: "+sAcct+" has been ported out for being too high level!!!");
   WriteTimestampedLogEntry("PLAYER: "+sName+" CD KEY: "+sKey+" ACCT: "+sAcct+" has been ported out for being too high level!!!");

   }
}


