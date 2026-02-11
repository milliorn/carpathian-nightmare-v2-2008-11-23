//:://////////////////////////////////////////////////
//:: NW_C2_DEFAULT4
/*
  Default OnConversation event handler for NPCs.

*/

void main()
{
    object oPC = GetPCSpeaker();
    int iRoll = Random(18);
    switch (iRoll)
    {
        case 0: ActionSpeakString("By the gods of Carpathia, help us outa here!  Hurry! I hear something.");break;
        case 1: ActionSpeakString("One day someone will help us to escape! I'm sure, really I am!");break;
        case 2: ActionSpeakString("I was playing Neverwinter Nights.  Next moment i'm in this cage. Thats odd!");break;
        case 3: ActionSpeakString("Dóh!");break;
        case 4: ActionSpeakString("Help me!  I will do anything!  Really! A N Y T H I N G!");break;
        case 5: PlayVoiceChat(VOICE_CHAT_BADIDEA, OBJECT_SELF);break;
        case 6: PlayVoiceChat(VOICE_CHAT_BORED, OBJECT_SELF);break;
        case 7: PlayVoiceChat(VOICE_CHAT_CHEER, OBJECT_SELF);break;
        case 8: PlayVoiceChat(VOICE_CHAT_CUSS, OBJECT_SELF);break;
        case 9: PlayVoiceChat(VOICE_CHAT_FLEE, OBJECT_SELF);break;
        case 10: PlayVoiceChat(VOICE_CHAT_GUARDME, OBJECT_SELF);break;
        case 11: PlayVoiceChat(VOICE_CHAT_HEALME, OBJECT_SELF);break;
        case 12: PlayVoiceChat(VOICE_CHAT_HELLO, OBJECT_SELF);break;
        case 13: PlayVoiceChat(VOICE_CHAT_HELP, OBJECT_SELF);break;
        case 14: PlayVoiceChat(VOICE_CHAT_PAIN1, OBJECT_SELF);break;
        case 15: PlayVoiceChat(VOICE_CHAT_PAIN2, OBJECT_SELF);break;
        case 16: PlayVoiceChat(VOICE_CHAT_PAIN3, OBJECT_SELF);break;
        case 17: PlayVoiceChat(VOICE_CHAT_POISONED, OBJECT_SELF);break;
        case 18: PlayVoiceChat(VOICE_CHAT_BADIDEA, OBJECT_SELF);break;
    }
}
