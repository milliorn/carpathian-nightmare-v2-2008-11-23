//#include "NW_i0_Plot"
void main()
{
   //IsRecall();
object oActiveObject = GetItemActivated();
    if (oActiveObject == GetObjectByTag("HALO_Fire_Water"))
 {
    object oTarget = GetLastUsedBy();
    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_GAS_EXPLOSION_FIRE), oTarget);

 }
 }
