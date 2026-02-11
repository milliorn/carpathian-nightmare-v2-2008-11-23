//ACN Guild System conversation launch
#include "inc_guild"
#include "x2_inc_switches"
void main()
{
    if (GetUserDefinedItemEventNumber() != X2_ITEM_EVENT_ACTIVATE) return;

    if (LeaderKeys() == TRUE)

        {
            AssignCommand(oActivator, ActionStartConversation(oActivator, "guild_conv", TRUE, FALSE));
            return;
        }

        else
        {
            SendMessageToPC(oActivator, "<cú>You cannot use this item");
            SendMessageToAllDMs("<cú>Player </c>" + sPCName + "<cú> is trying to use a GUILD item");
            SetDroppableFlag(oWand, TRUE);
            DestroyObject(oWand, 0.3);
        }
}
