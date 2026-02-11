#include "nwnx_realtime"
#include "inc_colour"

void main()
{
    object oPC = GetLastUsedBy();

    int iMinuteUp       = GetServerUpMinutes();
    int iMinuteTimer    = 300;
    int iMinuteLeft     = iMinuteTimer - iMinuteUp;

    string sUpMinute    = IntToString(iMinuteLeft);
    string sPlayer      = "SUNDIAL";
    string sKey         = "TRUE";

    if (GetLocalString(oPC, sPlayer) != sKey)
    {
        SendMessageToPC(oPC, Color_Text("aqua","A Carpathian Nightmare resets on a five hour timer."));
        SendMessageToPC(oPC, Color_Text("aqua","The next reset will be in ")+ Color_Text("azure",sUpMinute) + Color_Text("aqua"," minutes."));
        SendMessageToPC(oPC, " ");
        SendMessageToPC(oPC, Color_Text("aqua", "Uptime: ")+ Color_Text("azure",GetServerUptime()));
        SendMessageToPC(oPC, Color_Text("aqua", "The date in Dunedin (New Zealand): ")+ Color_Text("azure",GetServerDate()));
        SendMessageToPC(oPC, Color_Text("aqua", "The time in Dunedin (New Zealand): ")+ Color_Text("azure",GetServerTime()));


        SetLocalString(oPC, "SUNDIAL", "TRUE");
        DelayCommand(6.0, DeleteLocalString(oPC, "SUNDIAL"));
    }
    else
    {
        SendMessageToPC(oPC, Color_Text("red", "Wait a few seconds before using Sundial again"));
    }
}
