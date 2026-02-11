void main()
{
    object speaker = GetLastKiller();
    AssignCommand(speaker,  ActionSpeakString("I gotta try to remember, the "+
    "object is to practice, not Obliterate the target!!!!"));
    DestroyObject(OBJECT_SELF, 0.0);
    CreateObject(OBJECT_TYPE_CREATURE, "dummy", GetLocation(speaker));
}




