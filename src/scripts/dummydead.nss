void main()
{
if (GetCurrentHitPoints() <= 200){
 ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(1000),OBJECT_SELF);
 }

}
