StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();



AcceptQuestUsingDB(399);
AcceptQuestUsingDB(36);
AcceptQuestUsingDB(151);
AcceptQuestUsingDB(64);
---------Step end-----------

---- Step Count [1960] ----
AcceptQuestUsingDB(9);
AcceptQuestUsingDB(22);
---------Step end-----------
TurnInQuestUsingDB(109);
TurnInQuestUsingDB(109);
---- Step Count [1965] ----
AcceptQuestUsingDB(102);
AcceptQuestUsingDB(12);
AcceptQuestUsingDB(153);

CompleteObjectiveOfQuest(153,1)

CompleteObjectiveOfQuest(12,1)
CompleteObjectiveOfQuest(12,2)
TurnInQuestUsingDB(12);
TurnInQuestUsingDB(153);


CompleteObjectiveOfQuest(22,1)
TurnInQuestUsingDB(22);
GrindAreaUntilLevel(14)
AcceptQuestUsingDB(6181);
TurnInQuestUsingDB(6181);

TurnInQuestUsingDB(6281);
if HasPlayerFinishedQuest(6281)==true and CanTurnInQuest(6261)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check
TurnInQuestUsingDB(6261);

TurnInQuestUsingDB(6285);
CompleteObjectiveOfQuest(38,1)

if HasPlayerFinishedQuest(38)== false and CanTurnInQuest(38)==false then
Log("Doing Murlocs");

Murlocs = {};
Murlocs[1] = 515;
KillLootMurlocs = CreateObjective("KillMobsAndLoot",2,3,4,38,TableToList(Murlocs));
MyInfo = DoObjective(KillLootMurlocs);
end;
CompleteObjectiveOfQuest(38,3)
CompleteObjectiveOfQuest(38,4)
TurnInQuestUsingDB(38);
CompleteObjectiveOfQuest(9,1)

TurnInQuestUsingDB(9);
CompleteObjectiveOfQuest(64,1)
TurnInQuestUsingDB(64);


CompleteObjectiveOfQuest(13,1)
CompleteObjectiveOfQuest(13,2)
CompleteObjectiveOfQuest(399,1)
CompleteObjectiveOfQuest(151,1)
TurnInQuestUsingDB(13);

TurnInQuestUsingDB(151);
CompleteObjectiveOfQuest(102,1)
GrindAreaUntilLevel(16)

TurnInQuestUsingDB(102);

TurnInQuestUsingDB(399);

if HasPlayerFinishedQuest(244)==false then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check
AcceptQuestUsingDB(244);
TurnInQuestUsingDB(244);

if IsOnQuest(65)==true  and HasPlayerFinishedQuest(65)== false then
QuestGoToPoint(-9223.782,-2163.917,63.73137);
		 SendKey(37, 300);
	  	 SleepPlugin(1000);
		 SendKey(38, 1500);
	  	 SleepPlugin(1000);
		 SendKey(37, 500);
		  SleepPlugin(1000);
		 SendKey(38, 500);
	  	 SleepPlugin(1000);
		 SendKey(37, 500);
		  SleepPlugin(1000);
		 SendKey(38, 1500);

Log("Turning The Defias Brotherhood");
TurnInQuestAt(266,65);    --- The Defias Brotherhood
end;
AcceptQuestUsingDB(132);

if IsOnQuest(129)==false and HasPlayerFinishedQuest(129)== false then
QuestGoToPoint(-9213.599,-2163.979,67.57477);
	  	 SendKey(38, 1000);
	  	 SleepPlugin(1000);
		 SendKey(39, 700);
		 SleepPlugin(1000);
		 SendKey(38, 1000);

end;


AcceptQuestUsingDB(129);
AcceptQuestUsingDB(120);

AcceptQuestUsingDB(118);
TurnInQuestUsingDB(129);
TurnInQuestUsingDB(120);

TurnInQuestUsingDB(118);

TurnInQuestUsingDB(6285);
TurnInQuestUsingDB(132);

CompleteObjectiveOfQuest(14,1)
CompleteObjectiveOfQuest(14,2)
CompleteObjectiveOfQuest(14,3)


if (Player.Level <20) then 
Log("Grind to 20");

Grind = {};
Grind[1] = 154;
Grind[2] = 115;

Grind = CreateObjective("KillMobsAndLoot",1,10,1,999,TableToList(Grind));
GrindUntilLvl(20,Grind,true);
end;
AcceptQuestUsingDB(5);
TurnInQuestUsingDB(14);

Log("Going to SW");

TurnInQuestUsingDB(135);

if HasPlayerFinishedQuest(141)==false then   --- Objective if
  
      Log("Player needs training lvl 20!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check



Log("Going to Westfall");
TurnInQuestUsingDB(141);


CompleteObjectiveOfQuest(142,1)
TurnInQuestUsingDB(142);

Log("That is all about Westfall!")


StopQuestProfile();
