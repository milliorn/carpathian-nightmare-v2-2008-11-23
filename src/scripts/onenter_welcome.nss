#include "inc_colour"

void main()
{
    object oPC = GetEnteringObject();

    if (!GetLocalInt(oPC, "WELCOME"))
    {
// Have a good day
    SendMessageToPC(oPC, Color_Text("plum", "Welcome to A Carpathian Nightmare."));
    DelayCommand (3.0f, SendMessageToPC(oPC, RainbowText("Have a great day, Dorrian, Shimmer & the DM Team.")));
    SetLocalInt(oPC, "WELCOME", TRUE);
    }
}
