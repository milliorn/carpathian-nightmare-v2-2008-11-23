void main()
{
    object oPC = GetEnteringObject();

  ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectACIncrease(6, AC_NATURAL_BONUS), oPC);
}
