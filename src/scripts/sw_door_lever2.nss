void main()

{
    object door_close = GetNearestObjectByTag("door2");
    object door_open = GetNearestObjectByTag("door3");
    object lever = GetNearestObjectByTag("lever2");

    AssignCommand(lever,PlayAnimation (ANIMATION_PLACEABLE_ACTIVATE));
    ActionOpenDoor(door_open);

    DelayCommand(5.0,ActionCloseDoor(door_close));

}
