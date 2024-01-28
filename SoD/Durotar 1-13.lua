StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();

--This profile was auto-generated using MrFade's massive brain power.
---- Step Count [16] ----
AcceptQuestUsingDB(4641);
---------Step end-----------

---- Step Count [29] ----
AcceptQuestUsingDB(1485);
---------Step end-----------

---- Step Count [40] ----
TurnInQuestUsingDB(4641);
AcceptQuestUsingDB(788);
---------Step end-----------

---- Step Count [118] ----
CompleteObjectiveOfQuest(788,1)
---------Step end-----------

---- Step Count [128] ----
CompleteObjectiveOfQuest(1485,1)
---------Step end-----------

---- Step Count [133] ----
CompleteObjectiveOfQuest(788,1)
---------Step end-----------

---- Step Count [140] ----
AcceptQuestUsingDB(790);
---------Step end-----------

---- Step Count [145] ----
CompleteObjectiveOfQuest(790,1)
---------Step end-----------

---- Step Count [166] ----
CompleteObjectiveOfQuest(790,1)
---------Step end-----------

---- Step Count [173] ----
TurnInQuestUsingDB(790);
AcceptQuestUsingDB(804);
---------Step end-----------

---- Step Count [179] ----
CompleteObjectiveOfQuest(788,1)
---------Step end-----------

---- Step Count [184] ----
GrindAreaUntilLevel(3)
---------Step end-----------

---- Step Count [190] ----
GrindAreaUntilLevel(3)
TurnInQuestUsingDB(788);
TurnInQuestUsingDB(804);
---------Step end-----------

---- Step Count [219] ----
TurnInQuestUsingDB(1485);
AcceptQuestUsingDB(1499);
---------Step end-----------

---- Step Count [229] ----
TurnInQuestUsingDB(1499);
---------Step end-----------

---- Step Count [235] ----


AcceptQuestUsingDB(789);
---------Step end-----------

---- Step Count [262] ----
GrindAreaUntilLevel(4)
Log("Doing Scorpid");

Scorpid = {};
Scorpid[1] = 3124;
KillLootScorpid = CreateObjective("KillMobsAndLoot",1,10,1,789,TableToList(Scorpid));
MyInfo = DoObjective(KillLootScorpid);

if HasPlayerFinishedQuest(789)==false and CanTurnInQuest(789)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end 
TurnInQuestUsingDB(789);

---------Step end-----------
Log("Take Vile Familiars");
AcceptQuestFrom(3145,792);  


Log("Take Galgar's Cactus Apple Surprise");
AcceptQuestFrom(9796,4402);  


Log("Doing Vile Familiars");

Vile = {};
Vile[1] = 3101;
KillLootVile = CreateObjective("KillMobsAndLoot",1,12,1,792,TableToList(Vile));
MyInfo = DoObjective(KillLootVile);

Log("Doing Scorpid");

Scorpid = {};
Scorpid[1] = 3124;
KillLootScorpid = CreateObjective("KillMobsAndLoot",1,10,1,789,TableToList(Scorpid));
MyInfo = DoObjective(KillLootScorpid);

Log("Doing Apples");

Apples = {};
Apples[1] = 171938;
CollectApples = CreateObjective("GatherObject",1,10,1,4402,nil,TableToList(Apples));
MyInfo = DoObjective(CollectApples);

Log("Turn Your Vile Familiars");
TurnInQuestAt(3145,792);  

Log("Turn Sting of the Scorpid");
TurnInQuestAt(3143,789);  

Log("Turn Galgar's Cactus Apple Surprise");
TurnInQuestAt(9796,4402);  


---------Step end-----------

---- Step Count [576] ----
CompleteObjectiveOfQuest(789,1)
---------Step end-----------

---- Step Count [581] ----
CompleteObjectiveOfQuest(792,1)
---------Step end-----------

---- Step Count [594] ----
---------Step end-----------

---- Step Count [604] ----
CompleteObjectiveOfQuest(792,1)
---------Step end-----------

---- Step Count [617] ----
---------Step end-----------

---- Step Count [625] ----
CompleteObjectiveOfQuest(792,1)
---------Step end-----------

---- Step Count [631] ----
CompleteObjectiveOfQuest(789,1)
---------Step end-----------

---- Step Count [637] ----
---------Step end-----------

---- Step Count [643] ----
---------Step end-----------

---- Step Count [650] ----
TurnInQuestUsingDB(4402);
---------Step end-----------

---- Step Count [668] ----
TurnInQuestUsingDB(789);
TurnInQuestUsingDB(789);
---- Step Count [748] ----
TurnInQuestUsingDB(792);
AcceptQuestUsingDB(794);
CompleteObjectiveOfQuest(4402,1)
GrindAreaUntilLevel(5)
---------Step end-----------

---- Step Count [852] ----
CompleteObjectiveOfQuest(1516,1)
CompleteObjectiveOfQuest(794,1)
---------Step end-----------

---- Step Count [886] ----
---------Step end-----------

---- Step Count [891] ----
GrindAreaUntilLevel(6)
---------Step end-----------
if HasPlayerFinishedQuest(794)==false and CanTurnInQuest(794)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end 
TurnInQuestUsingDB(794);

---- Step Count [919] ----
AcceptQuestUsingDB(784);
---------Step end-----------

---- Step Count [949] ----
AcceptQuestUsingDB(791);
---------Step end-----------

---- Step Count [1003] ----
TurnInQuestUsingDB(4402);
---------Step end-----------

---- Step Count [1014] ----
TurnInQuestUsingDB(794);
AcceptQuestUsingDB(805);
---------Step end-----------
AcceptQuestUsingDB(2161);
---------Step end-----------
TurnInQuestUsingDB(805);

AcceptQuestFrom(3140,786); 
AcceptQuestUsingDB(823);
---------Step end-----------

CompleteObjectiveOfQuest(791,1)
if (Player.Level <9) then 
Log("Grind to 9");

Grind = {};
Grind[1] = 3099;
Grind[2] = 3125;

Grind = CreateObjective("KillMobsAndLoot",1,10,1,999,TableToList(Grind));
GrindUntilLvl(9,Grind,true);
end;

if HasPlayerFinishedQuest(791)==false and CanTurnInQuest(791)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end 
TurnInQuestUsingDB(791);

---- Step Count [1439] ----
Log("Doing Thwarting Kolkar Aggression");

Trials = {};
Trials[1] = 3189;
CollectTrials = CreateObjective("GatherObject",1,1,3,786,nil,TableToList(Trials));
MyInfo = DoObjective(CollectTrials);

Village = {};
Village[1] = 3190;
CollectVillage = CreateObjective("GatherObject",2,1,3,786,nil,TableToList(Village));
MyInfo = DoObjective(CollectVillage);

Orgrimmar = {};
Orgrimmar[1] = 3192;
CollectOrgrimmar = CreateObjective("GatherObject",3,1,3,786,nil,TableToList(Orgrimmar));
MyInfo = DoObjective(CollectOrgrimmar);
---------Step end-----------

---- Step Count [1478] ----
TurnInQuestAt(3140,786);
---------Step end-----------
TurnInQuestUsingDB(2161);
TurnInQuestUsingDB(791);
TurnInQuestUsingDB(823);

---- Step Count [1682] ----
CompleteObjectiveOfQuest(784,1)
CompleteObjectiveOfQuest(784,2)
CompleteObjectiveOfQuest(791,1)
---------Step end-----------

---- Step Count [1690] ----
CompleteObjectiveOfQuest(784,3)
CompleteObjectiveOfQuest(784,1)
CompleteObjectiveOfQuest(784,2)
---------Step end-----------

---- Step Count [1762] ----
---------Step end-----------

---- Step Count [1780] ----
TurnInQuestUsingDB(823);
AcceptQuestUsingDB(806);
TurnInQuestUsingDB(784);
AcceptQuestUsingDB(837);
---------Step end-----------

---- Step Count [1813] ----
TurnInQuestUsingDB(791);
---------Step end-----------

---- Step Count [1953] ----
TurnInQuestUsingDB(2161);

TurnInQuestUsingDB(2161);

---- Step Count [2209] ----
CompleteObjectiveOfQuest(837,1)
CompleteObjectiveOfQuest(837,2)
---------Step end-----------

---------Step end-----------

---- Step Count [2244] ----
CompleteObjectiveOfQuest(837,3)
CompleteObjectiveOfQuest(837,4)

TurnInQuestUsingDB(837);

if (Player.Level <12) then 
Log("Grind to 12");

Grind = {};
Grind[1] = 3115;
Grind[2] = 3100;
Grind[3] = 3122;
Grind[4] = 3126;
Grind = CreateObjective("KillMobsAndLoot",1,10,1,999,TableToList(Grind));
GrindUntilLvl(12,Grind,true);
end;
---------Step end-----------

---- Step Count [2376] ----
AcceptQuestUsingDB(834);
---------Step end-----------

---- Step Count [2391] ----
CompleteObjectiveOfQuest(834,1)
---------Step end-----------

---- Step Count [2422] ----
TurnInQuestUsingDB(834);
AcceptQuestUsingDB(835);

AcceptQuestUsingDB(5726);
---------Step end-----------

---- Step Count [2487] ----
TurnInQuestUsingDB(6081);
---------Step end-----------

CompleteObjectiveOfQuest(835,1)
CompleteObjectiveOfQuest(835,2)
---------Step end-----------


---- Step Count [3369] ----
TurnInQuestUsingDB(835);
---- Step Count [3369] ----
TurnInQuestUsingDB(835);

AcceptQuestUsingDB(816);
Log("Doing Lost But Not Forgotten");

Lost = {};
Lost[1] = 3110;
KillLootLost = CreateObjective("KillMobsAndLoot",1,1,1,816,TableToList(Lost));
MyInfo = DoObjective(KillLootLost);

TurnInQuestUsingDB(816);

if HasPlayerFinishedQuest(5726)==false then
Log("Doing Hidden Enemies");
QuestGoToPoint(1400.764,-4882.437,12.53824);
end;

Hidden = {};
Hidden[1] = 3197;
Hidden[2] = 3198;
KillLootHidden = CreateObjective("KillMobsAndLoot",1,1,1,5726,TableToList(Hidden));
MyInfo = DoObjective(KillLootHidden);

Log("Turn Hidden Enemies");
TurnInQuestAt(4949,5726);

CompleteObjectiveOfQuest(806,1)
TurnInQuestUsingDB(806);



AcceptQuestUsingDB(840);

TurnInQuestUsingDB(840);
Log("This is the end of Durotar questing profile");

StopQuestProfile();
