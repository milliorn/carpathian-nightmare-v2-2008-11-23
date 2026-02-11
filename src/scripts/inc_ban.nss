//sPlayerName Log In
//sName = CD Key
void CheckBannedPC(object oPC, string sName, string sPlayerName);
void CheckBannedPC(object oPC, string sName, string sPlayerName)
{
     if (sName == "")
        {
        SendMessageToPC(oPC, "<có  >A Carpathian Nightmare cannot read your cd key. You will now be booted. Have a nice day.</c>");
        SendMessageToAllDMs("<có  >HACKER ALERT: NO CD KEY READABLE, BOOTING PLAYER </c>" + sPlayerName);
        DelayCommand(6.0, BootPC(oPC));
        }

     else if (sName == " ")
        {
        SendMessageToPC(oPC, "<có  >A Carpathian Nightmare cannot read your cd key. You will now be booted. Have a nice day.</c>");
        SendMessageToAllDMs("<có  >HACKER ALERT: NO CD KEY READABLE, BOOTING PLAYER </c>" + sPlayerName);
        DelayCommand(6.0, BootPC(oPC));
        }

     else if (sPlayerName == "")
        {
        SendMessageToPC(oPC, "<có  >A Carpathian Nightmare cannot read your Name. You will now be booted. Have a nice day.</c>");
        SendMessageToAllDMs("<có  >HACKER ALERT: NO NAME READABLE, BOOTING PLAYER </c>" + sPlayerName);
        DelayCommand(6.0, BootPC(oPC));
        }

    else if (sName == "QVRDXMKD" /*Raijlin al'Mandragoran*/||  sName == "QVRUE7XF" || //darlord-DarkAdvocate
        sName == "QGMNJ7KD" /*Volpe Alata-Demon */||  sName == "QV6WFKVY" ||   // eric_w_n Phiona Deathbane
        sName == "FTRYYNEY" /*Bad_Bud*/||  sName == "QYUWTVKK" ||//StupyHead
        sName == "QVMA7W37" /*Seath Shoulouke*/||  sName == "QVMCWQ9Y" || /*Plastic_Sin*/
        sName == "QG6EFTFF" /*71.230.111.74*/||  sName == "QC4AFKWV" || /*TheLieutenant*/
        sName == "QYURGTL4" /*Schitzo Affective*/||  sName == "QVRDWTD4" || /*maggie*/
        sName == "QYUVFPGF" /*Lynx - advertising*/||  sName == "QVRD7MG6"|| /*for the sake of comedy*/
        sName == "93T77UTT" /*Spooky*/||  sName == "QVRUVXMY"/*Naroot - abuse of DMs*/||
        sName == "QVRP4GTH" /*dark-777*/ || sName == "QCR4H7YM" /*Eldora Blackwood*/  ||
        sName == "Q76PNMRJ" /*driller worshipper SunSoul*/ || sName == "FTR77P9W" /*luigi*/  ||
        sName == "FFNDWUTH" /*Xavier*/ || sName == "FTRQF6Y4" /*Ralph*/ ||
        sName == "FTMLJ99G" /*Raven from BSK*/ || sName == "QVRD3RAM" /*Kurgan-WL*/ ||
        sName == "QV6TA999" /*Alamore Threepwood - darkteen89*/ ||
        sName == "FTRGTXMC" /*Alamore Threepwood - darkteen89 -Leon Drake*/||
        sName == "FTRLPRYP" /*Loquet*/ ||
        sName == "QG63D47A" /*Hordack*/ ||
        sName == "QVRWLCCL" /*Hordack CD2*/  ||
        sName == "QCR9QECH" /*Duo*/ ||
        sName == "QC4NJ6HG" /*Duo CD2*/  ||
        sName == "QGML4WAF" /*niapet or Crystalline Fae*/ ||
        sName == "QYUMYCW9" /*niapet or Crystalline Fae*/ ||
        sName == "Q76UXUC4" /*GordonPlateMail*/ ||
        sName == "QVRLPKH4" /*_Mortal*/ || sName == "FT6ULTMT" /*Rusk*/ ||
        sName == "QV44RD4Y" /*IAmJesusChrist*/ || sName == "QYUNGNCR" /*HeIsJesusChrist*/ ||
        sName == "QG6944YN" /*Jeff*/   ||   sName == "Q76NCHLK" /*Jeff*/   ||
        sName == "QV46TGL6" /*FORSETIS*/ ||  sName == "QG6QP6WW" /*FORSETIS*/ ||
        sName == "Q74YT7NC" /*Major League Infidel*/ ||  sName == "QLUEU37G" /*speedy ninja*/ ||
        sName == "9HCHQDGE" /*DogManZen*/  ||  sName == "QC4NDEQD" /*albertosokol*/  ||
        sName == "QGMDYDDD" /*albertosokol*/ || sName == "QYUW69CH" /*Solomon Grundy the Great*/ ||
        sName == "FTRGJVPW" /*anansiboy*/  ||
        sName == "QYURNPGE" /*roland*/  ||
        sName == "QVRQJWKX" /*Betrayal*/ ||   //  sName == "QVRQJWKX" /*Betrayal*/ ||
        sName == "QV6PCLU7" /*Deadsayer*/  || sName == "Q74YRGPT" /*person245*/ ||
        sName == "QVMULUKX" /*OinvinoveritasO*/  ||  sName == "FTMY4MVN" /*TheBlackGuard*/  ||
        sName == "FFPG9UTD" /*Aerie*/ ||  sName == "QGMEUUNM" /*Aerie*/ ||
        sName == "QC77J4AE" /*Jmkeylon - Ghost4Life*/  ||
        sName == "QV6FY6YY" /*Jmkeylon - Ghost4Life*/ ||
        sName == "Q774N9Q6" /*-TropicOfCancer-*/    ||
        sName == "FFUFUFJ4" /*-TropicOfCancer-*/  ||
        sName == "QG6LRPWL" /*seriously-dms-stop-it , darius demalian , trouble maker from bsk*/   ||
        sName == "Q76UX6C9" /*green-warrior, trouble maker from bsk*/    || sName == "QCRN4TPF" /*gumbai, trouble maker from bsk*/   ||
        sName == "QGMLHKPX" /*the-black-stoned-sheep, mgreen2 , trouble maker from bsk*/   ||
        sName == "Q76UVW7J" /*Captian Winters*/    ||    sName == "QVRV9LYH" /*MidnightSyndicate*/    ||
        sName == "Q77KFVME" /*GameAholicMan*/  ||  sName == "QVRFFHJW" /*GameAholicMan*/  ||
        sName == "QGMQED6V" /*GameAholicMan*/  ||
        sName == "QVRLD4HC" /*Red Bear*/    ||  sName == "QC4NEC6L" /*Mystic from BSK - came as spirit_song 24.254.124.226*/    ||
        sName == "QLUVGRRL" /*Miller16*/  ||   sName == "Q77A97J3" /*Zion2000 - advertising Nesme*/  ||
        sName == "Q76ATU6U" /*Luceran*/   ||
        sName == "FTRH6FPA" /*Luceran*/  ||
        sName == "QLUVGCFY" /*Godlykiller*/   ||  sName == "QC6PMU33" /*Mortis - advertising Shadow of Arda server*/   ||
        sName == "QCRJXVY7" /*yoko or Scarface*/   ||
        sName == "QG8WG4M3" /*yoko or Scarface*/   ||
        sName == "FFP6VNJ9" /*changing ip/player name - Valnarad/alexells123*/      ||
        sName == "QG69REA9" /*brfb*/       ||
        sName == "QCRWGPDG" /*brfb*/   ||
        sName == "Q76APWAG" /*brfb*/   ||
        sName == "QLU96MQX" /*wzorin*/ ||
        sName == "QV6UR47U" /*Agatros*/   ||
        sName == "QC7MDLL3" /*Agatros*/   ||
        sName == "FFXXF6D4" /*Cybermagi*/   ||   sName == "QGMQ7DR3" /*Cliff*/  ||
        sName == "QVRW4W63" /*Hacker who was pestering Arena Servers*/    ||
        sName == "QYUTN4LE" /*Ladona the Great aka dead on the dance floor*/    ||
        sName == "QV6CFKCV" /*Ladona the Great aka dead on the dance floor*/    ||
        sName == "QVRPAMA7" /*Ladona the Great aka dead on the dance floor*/    ||
        sName == "QVRTC7JX" /*Ladona the Great aka dead on the dance floor*/    ||
        sName == "QYUNNN7X" /*foxhound667*/   ||   sName == "QVRL4XQL" /*SkyElves - advertising*/ ||
        sName == "QV6P9M66" /*Nibis - abuse of DMs*/  || sName == "QYURJRAL" /*prplhaze - abuse of DMs*/||
        sName == "Q773K4NK" /*prplhaze - abuse of DMs*/   || sName == "QYUWGKH7" /*prplhaze - abuse of DMs*/ ||
        sName == "QYUN9FH7" /*JAKEMASTER*/    ||    sName == "QV69WWT4" /*qv69wwt4 BonzaJ*/ ||
        sName == "QYUVMAYM"/*qyuvmaym - Catkiller500/Soviet42*/  ||
        sName == "QV46V6MN" /*impersonates dms*/    ||
        sName == "QV6KP4L3" /*impersonates dms*/    ||
        sName == "QG6MPXN7" /*Strey420 verbal abuse of dms on CWL*/  ||
        sName == "QV44EHQN" /*shorty727 - advertising his server*/   ||
        sName == "QMUK673R" /*Thanatos*/   ||   sName == "QG6EEEKE" /*Hexxl*/   ||
        sName == "Q76NJ9MD" /*89HST advertising*/   ||
        sName == "FFUFQ3VJ" /*89HST advertising*/   ||


        sName == "QLUDKCYT" /*Dan*/   ||
        sName == "QVM9CQ3A" /*Dan*/   ||
        sName == "QVMVPXPK" /*Dan - Markon*/ ||
        sName == "VDH6TLX9" /*Dan - markon*/ ||

        sName == "QC6P4N9U" /*MadGatt*/ ||
        sName == "QC7GCQ7J" /*DeathPike*/ ||

         sName == "FTME4EVT" /*Pax*/ ||

         sName == "DAQ3NYTN" /*Mystery of Merci*/   ||
         sName == "FT6WRXA7" /*ShadowDancer67*/   ||
         sName == "FTMEVTKK" /*ShadowDancer67*/   ||
         sName == "QGMQVFHQ" /*meka-san*/     ||
         sName == "QMUFCVYT" /*meka-san*/

        )

        {
        SendMessageToAllDMs("<có  >Entering CD Key has been DENIED: </c>" + sPlayerName);
        BootPC(oPC);
        }


    else {}
}

