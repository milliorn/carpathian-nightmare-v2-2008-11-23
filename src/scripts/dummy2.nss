void main()
{
object attacker = GetLastAttacker();
object weapon = GetLastWeaponUsed(attacker);

int hp =GetCurrentHitPoints();

if (GetWeaponRanged(weapon)== TRUE){
AssignCommand(OBJECT_SELF,ActionSpeakString("Bah! Go shoot at an Archery Target silly!"));
ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(1000),OBJECT_SELF);
return;}



if (hp >= 1000){
 switch (d4()) {
                    case 1: SpeakString("You missed? Hahahahahaha!"); break;
                    case 2: SpeakString("Remember, your trying to hit ME, not YOU...."); break;
                    case 3: SpeakString("Did you fall and hurt yourself?"); break;
                    case 4: SpeakString("Oh my, did I hurt you?");   break;
                }  }


if ((hp <= 999)&&(hp >= 996)){
 switch (d4()) {
                    case 1: SpeakString("Hahaha eheh aha errrr, what was that?"); break;
                    case 2: SpeakString("Maybe you should think about selling shoes for a living..."); break;
                    case 3: SpeakString("Have you thought about taking piano lessons?"); break;
                    case 4: SpeakString("Put that thing down before you hurt yourself!");   break;
                }  }


if ((hp <= 995) && (hp >= 950)){
 switch (d4()) {
                    case 1: SpeakString("Heh, that tickles."); break;
                    case 2: SpeakString("Don't quit your day job."); break;
                    case 3: SpeakString("That was kinda weak."); break;
                    case 4: SpeakString("Did you forget to practice today?");  break;
                }  }

if ((hp <=949) && hp >= 851){
 switch (d4()) {
                    case 1: SpeakString("Did you touch me?"); break;
                    case 2: SpeakString("Hey! I felt that!"); break;
                    case 3: SpeakString("Wow, you actualy hit me!"); break;
                    case 4: SpeakString("You could use some improvement.");  break;
                }  }
                if ((hp <=850) && hp >= 750){
 switch (d4()) {
                    case 1: SpeakString("OUCH!"); break;
                    case 2: SpeakString("Hey, that hurt!"); break;
                    case 3: SpeakString("That was unpleasant of you...."); break;
                    case 4: SpeakString("Nice one!");  break;
                }  }
      if ((hp <=749) && hp >= 700){
 switch (d4()) {
                    case 1: SpeakString("YOWSERS!!!!"); break;
                    case 2: SpeakString("I think I'm broken!"); break;
                    case 3: SpeakString("Holy Cow that hurt!"); break;
                    case 4: SpeakString("Well Done!");  break;
                }  }
           if ((hp <=699) && hp >= 600){
 switch (d4()) {
                    case 1: SpeakString("Geez, you think you hit me enough yet?!!!!"); break;
                    case 2: SpeakString("MEDIC!"); break;
                    case 3: SpeakString("UNBELIEVABLE!"); break;
                    case 4: SpeakString("OUTSTANDING!");  break;
                }  }
                if ((hp <=599) && hp >= 300){
 switch (d4()) {
                    case 1: SpeakString("What the....  How many of you are there?"); break;
                    case 2: SpeakString("I have never seen that done before!!!!"); break;
                    case 3: SpeakString("Someone get the DM, this guy is cheating!!!"); break;
                    case 4: SpeakString("Could you put my head back on please?");  break;
                }  }
                   if ((hp <=299)){

                    SpeakString("Ok DungeonMaster, you can stop messin around now....");

                 }



DelayCommand(0.4,  ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(1000),OBJECT_SELF));

DelayCommand(1.0, AssignCommand(OBJECT_SELF, ClearAllActions(TRUE)));
}



