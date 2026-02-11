void main()

{
    object door_close = GetNearestObjectByTag("door1");
    object door_open = GetNearestObjectByTag("door2");
    object lever = GetNearestObjectByTag("lever1");

    AssignCommand(lever,PlayAnimation (ANIMATION_PLACEABLE_ACTIVATE));
    ActionOpenDoor(door_open);

    DelayCommand(5.0,ActionCloseDoor(door_close));

}
