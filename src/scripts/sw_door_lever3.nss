void main()

{
    object door_close = GetNearestObjectByTag("door5");
    object door_open = GetNearestObjectByTag("door4");
    object lever = GetNearestObjectByTag("lever3");

    AssignCommand(lever,PlayAnimation (ANIMATION_PLACEABLE_ACTIVATE));
    ActionOpenDoor(door_open);

    DelayCommand(5.0,ActionCloseDoor(door_close));

}

