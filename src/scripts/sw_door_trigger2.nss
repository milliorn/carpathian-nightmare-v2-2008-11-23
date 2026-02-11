void main()
{
    object door_close = GetNearestObjectByTag("door4");

    DelayCommand(5.0,ActionCloseDoor(door_close));
}
