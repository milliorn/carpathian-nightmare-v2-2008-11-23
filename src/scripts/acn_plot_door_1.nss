 void main()
{
   DelayCommand(10.0, ActionCloseDoor(OBJECT_SELF));
   DelayCommand(10.5, SetLocked(OBJECT_SELF, TRUE));
   DelayCommand(11.0, SetLockKeyRequired(OBJECT_SELF, TRUE));
}
