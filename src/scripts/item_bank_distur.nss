void main()
{
    object oPC = GetLastDisturbed(),
           oItem = GetInventoryDisturbItem();
    effect oVFX = EffectVisualEffect(VFX_DUR_BIGBYS_GRASPING_HAND);
    switch (GetInventoryDisturbType())
    {

       case INVENTORY_DISTURB_TYPE_ADDED:
       {
           ApplyEffectToObject(DURATION_TYPE_TEMPORARY, oVFX, OBJECT_SELF, 600.0);
           SetLocalObject(OBJECT_SELF, "LAST_USER", oPC);
           //SendMessageToAllDMs(GetName(oPC) + " <cσσσ>ADDED</c> " + GetName(oItem) +
           //" <cσσσ>to </c> " + GetName(OBJECT_SELF) + " <cσσσ>ID =</c> " +GetPCPublicCDKey(oPC));
           DelayCommand(600.0, DeleteLocalObject(OBJECT_SELF, "LAST_USER"));
           break;
       }
       default:
       {
           DeleteLocalObject(OBJECT_SELF, "LAST_USER");
           //SendMessageToAllDMs(GetName(oPC) + " <cσσσ>REMOVED</c> " + GetName(oItem) +
           //" <cσσσ>from </c> " + GetName(OBJECT_SELF) + " <cσσσ>ID =</c> " +GetPCPublicCDKey(oPC));
           break;
        }
    }
}
