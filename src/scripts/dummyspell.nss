void main()
{
ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(1000),OBJECT_SELF);
ActionSpeakString("And you thought your spell might hurt me?");
DelayCommand(1.0, AssignCommand(OBJECT_SELF, ClearAllActions(TRUE)));
}
