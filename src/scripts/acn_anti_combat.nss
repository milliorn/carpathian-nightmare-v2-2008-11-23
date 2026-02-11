#include "NW_I0_GENERIC"
void main()
{
    object oDest;
    object oPC = GetClickingObject();
    string sArea = GetTag(GetArea(oPC));
    string sName = GetName(oPC);

    if(GetIsFighting(oPC) || GetIsInCombat(oPC))
    {
        if(sArea == "SilesianBeskids")
        {
            object oDest = GetWaypointByTag("NW_SilesianBeskids");
            ClearAllActions();
            AssignCommand(oPC, JumpToLocation(GetLocation(oDest)));
            SendMessageToPC(oPC, "<cúúú>"+sName+"</c> cannot run into Carpathia while in Combat");
            FloatingTextStringOnCreature("<cúúú>"+sName+"</c> cannot run into "+
            "Carpathia while in Combat", oPC, TRUE);
/*            SpeakString("<cúúú>"+sName+"</c> is trying to run into "+
            "Carpathia while in Combat from <cú>"+sArea, TALKVOLUME_SHOUT);
*/            return;
        }

        else if(sArea == "OravskMaguraLower")
        {
            object oDest = GetWaypointByTag("POST_CarpathiaTown");
            AssignCommand(oPC, ActionJumpToObject(oDest, TRUE));
            SendMessageToPC(oPC, "<cúúú>"+sName+"</c> cannot run into Carpathia while in Combat");
            FloatingTextStringOnCreature("<cúúú>"+sName+"</c> cannot run into "+
            "Carpathia while in Combat", oPC, TRUE);
            return;
        }

        else if(sArea == "MoravianGate")
        {
            object oDest = GetWaypointByTag("POST_RUCARBRANGROOVE");
            AssignCommand(oPC, ActionJumpToObject(oDest, TRUE));
            SendMessageToPC(oPC, "<cúúú>"+sName+"</c> cannot run into Carpathia while in Combat");
            FloatingTextStringOnCreature("<cúúú>"+sName+"</c> cannot run into "+
            "Carpathia while in Combat", oPC, TRUE);
            return;
        }

        else if(sArea == "CarpathianForest")
        {
            object oDest = GetWaypointByTag("POST_Carpathia_Forest1");
            AssignCommand(oPC, ActionJumpToObject(oDest, TRUE));
            SendMessageToPC(oPC, "<cúúú>"+sName+"</c> cannot run into Carpathia while in Combat");
            FloatingTextStringOnCreature("<cúúú>"+sName+"</c> cannot run into "+
            "Carpathia while in Combat", oPC, TRUE);
            return;
        }
    }

    else
    {
        if(!GetIsFighting(oPC) || !GetIsInCombat(oPC))

            if(sArea == "SilesianBeskids")
            {
                object oDest = GetTransitionTarget(OBJECT_SELF);
                ClearAllActions();
                AssignCommand(oPC, JumpToLocation(GetLocation(oDest)));
                return;
            }

            else if(sArea == "OravskMaguraLower")
            {
                object oDest = GetTransitionTarget(OBJECT_SELF);
                ClearAllActions();
                AssignCommand(oPC, JumpToLocation(GetLocation(oDest)));
                return;
            }

            else if(sArea == "MoravianGate")
            {
                object oDest = GetTransitionTarget(OBJECT_SELF);
                ClearAllActions();
                AssignCommand(oPC, JumpToLocation(GetLocation(oDest)));
                return;
            }

            else if(sArea == "CarpathianForest")
            {
                object oDest = GetTransitionTarget(OBJECT_SELF);
                ClearAllActions();
                AssignCommand(oPC, JumpToLocation(GetLocation(oDest)));
                return;
        }
    }
}
