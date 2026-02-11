//Put this script OnEnter
void main()
{

object oPC = GetEnteringObject();
string sName = GetName(oPC, FALSE),
       sAcct = GetPCPlayerName(oPC),
       sKey  = GetPCPublicCDKey(oPC, FALSE);

if (!GetIsPC(oPC) || GetIsDM(oPC)) return; //if (!GetIsPC(oPC)) return;

if (GetCampaignInt("BOSS", "7",oPC))
{
    AssignCommand(oPC, ClearAllActions());
    AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetWaypointByTag("NW_HOME"))));
}
    }


