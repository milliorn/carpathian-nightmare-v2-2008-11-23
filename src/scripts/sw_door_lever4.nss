void main()

{
    object door_open = GetNearestObjectByTag("door5");
    object lever = GetNearestObjectByTag("lever4");

    AssignCommand(lever,PlayAnimation (ANIMATION_PLACEABLE_ACTIVATE));
    ActionOpenDoor(door_open);

}
