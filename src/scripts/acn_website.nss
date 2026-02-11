void main()
{
    object oPC = GetEnteringObject();

    if (!GetLocalInt(oPC, "WEBSITE"))
    {
        FloatingTextStringOnCreature("<c þ >Visit our Website!</c>", oPC);
        DelayCommand(0.5, FloatingTextStringOnCreature("<c²á^>Carpathian Nightmare and Trials of Newcastle: Two Hall of Fame NWN Gameworlds - One NWN Community</c>", oPC));
        DelayCommand(2.0f, FloatingTextStringOnCreature("<c þ >Sign up on our Forums, it's FREE!!!</c>", oPC));
        DelayCommand(4.0f, FloatingTextStringOnCreature("<c²á^>http://www.CarpathianNightmare.com/forum/</c>", oPC));
        SetLocalInt(oPC, "WEBSITE", TRUE);
    }
}


