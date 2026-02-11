string GetClass(int iClass);

//N00B Alert System and Boat Spawn
//Dorrian March 2007
//Last Edited 14 April 2007
//WELCOME_SPEAKER
//POST_WELCOME_GHOST_SPAWN

void main()
{
     object oPC = GetEnteringObject(),
            oObject = GetWaypointByTag("POST_cptquinarrive");

    //Checks to only run for PCs
if (!GetIsPC(oPC)) {return;}
if (GetIsDM(oPC)) {return;}

     int    iHD = GetHitDice(oPC),
            iClass = GetClassByPosition(1, oPC);

     string sName = GetName(oPC),
            sClass = GetClass(iClass);

//Idea came from Myk and his NWN2 spawning system which was based on Knat's ideas with PWFSE
//Essentially this is a script that notifies DMs if a player somehow gets to somewhere
//they potentially shouldn't be. Adapted and recoded by Dorrian to make it a bit neater and
//to make it fit more for NC. Set string as the information you want to send people.

    string N00B_ALERT = "<cìt>NEW CHARACTER ALERT: </c>"+sName+"<cìt> the</c> "+sClass+"<cìt>'s nightmare has just begun. Please welcome them to the server.";


    if (iHD==1)
        {
        if (GetIsPC(oPC) == TRUE)
            {
            WriteTimestampedLogEntry(N00B_ALERT);
            SendMessageToAllDMs(N00B_ALERT);

            //Set protection from !playerinfo for n00bs
            DelayCommand(0.5,AssignCommand(oPC, SpeakString("!anon",TALKVOLUME_TALK)));
            object oWelcomeGhost = CreateObject(OBJECT_TYPE_CREATURE, "WELCOME_SPEAKER", GetLocation(GetWaypointByTag("POST_WELCOME_GHOST_SPAWN")));

            AssignCommand(oWelcomeGhost, ActionStartConversation(oPC, "welcome"));

            }
          }
    return;
}




//WELCOME_SPEAKER
// Get class by constant.
//
string GetClass(int iClass)
{
   switch (iClass)
   {
      case CLASS_TYPE_ABERRATION: return "Aberration";
      case CLASS_TYPE_ANIMAL: return "Animal";
      case CLASS_TYPE_ARCANE_ARCHER: return "Arcane Archer";
      case CLASS_TYPE_ASSASSIN: return "Assassin";
      case CLASS_TYPE_BARBARIAN: return "Barbarian";
      case CLASS_TYPE_BARD: return "Bard";
      case CLASS_TYPE_BEAST: return "Beast";
      case CLASS_TYPE_BLACKGUARD: return "Black Guard";
      case CLASS_TYPE_CLERIC: return "Cleric";
      case CLASS_TYPE_COMMONER: return "Commoner";
      case CLASS_TYPE_CONSTRUCT: return "Construct";
      case CLASS_TYPE_DIVINECHAMPION: return "Champion of Torm";
      case CLASS_TYPE_DRAGON: return "Dragon";
      case CLASS_TYPE_DRAGONDISCIPLE: return "Dragon Disciple";
      case CLASS_TYPE_DRUID: return "Druid";
      case CLASS_TYPE_DWARVENDEFENDER: return "Dwarven Defender";
      case CLASS_TYPE_ELEMENTAL: return "Elemental";
      case CLASS_TYPE_FEY: return "Fey";
      case CLASS_TYPE_FIGHTER: return "Fighter";
      case CLASS_TYPE_GIANT: return "Giant";
      case CLASS_TYPE_HARPER: return "Harper";
      case CLASS_TYPE_HUMANOID: return "Humanoid";
      case CLASS_TYPE_MAGICAL_BEAST: return "Magical Beast";
      case CLASS_TYPE_MONK: return "Monk";
      case CLASS_TYPE_MONSTROUS: return "Monstrous";
      case CLASS_TYPE_OUTSIDER: return "Outsider";
      case CLASS_TYPE_PALADIN: return "Paladin";
      case CLASS_TYPE_PALEMASTER: return "Pale Master";
      case CLASS_TYPE_RANGER: return "Ranger";
      case CLASS_TYPE_ROGUE: return "Rogue";
      case CLASS_TYPE_SHADOWDANCER: return "Shadow Dancer";
      case CLASS_TYPE_SHAPECHANGER: return "Shape Changer";
      case CLASS_TYPE_SHIFTER: return "Shifter";
      case CLASS_TYPE_SORCERER: return "Sorcerer";
      case CLASS_TYPE_UNDEAD: return "Undead";
      case CLASS_TYPE_VERMIN: return "Vermin";
      case CLASS_TYPE_WEAPON_MASTER: return "Weapon Master";
      case CLASS_TYPE_WIZARD: return "Wizard";
      default: return "No Class";
   }

   return "No Class";
}
