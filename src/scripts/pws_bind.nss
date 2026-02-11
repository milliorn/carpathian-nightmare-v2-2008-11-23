// pws_bind by Brian "spilth" Kelly
// For Neverwinter Nights - Binding Stone Tutorial
#include "inc_colour"

void main()
{
    object oPC = GetPCSpeaker(),
           oRecall = GetItemPossessedBy(oPC, "sf_recall"),
           oBindPoint = OBJECT_SELF;
    string sBindPointTag = GetTag(oBindPoint),
           sBindPointName = GetName(oBindPoint);
    effect eVis = EffectVisualEffect(VFX_IMP_DIVINE_STRIKE_HOLY);


    if (!GetLocalInt(GetArea(oPC), "NO_PORTALS"))
        {
        SetLocalString(oRecall, "BINDING", sBindPointTag);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
        SpeakString(Color_Text("tangerine", "You are now bound to the ") + sBindPointName);
        }
    else
        {
        SendMessageToPC(oPC,Color_Text("red", "The power of the Nosferatu stops you from binding to this point."));
        }

}
