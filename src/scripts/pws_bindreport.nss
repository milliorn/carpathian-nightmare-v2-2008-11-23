// pws_bindreport by Brian "spilth" Kelly
// For Neverwinter Nights - Binding Stone Tutorial
#include "inc_colour"
void main()
{
    object oPC = GetPCSpeaker(),
           oRecall = GetItemPossessedBy(oPC, "sf_recall"),
           oBindPoint;
    string sBindPointTag = GetLocalString(oRecall, "BINDING"),
           sBindPointName;

    if (sBindPointTag != "")
    {
        oBindPoint        = GetObjectByTag(sBindPointTag);
        sBindPointName   = GetName(oBindPoint);
        SpeakString(Color_Text("tangerine","You are currently bound to the " + sBindPointName));
    }
    else
    {
        // This will never happen if you use default binding points
        SpeakString(Color_Text("lime","You are not currently bound anywhere."));
    }
}

