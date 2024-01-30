StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();


AcceptQuestUsingDB(840);

TurnInQuestUsingDB(840);
TurnInQuestUsingDB(842);
AcceptQuestUsingDB(870);
AcceptQuestUsingDB(844);
AcceptQuestUsingDB(867);
AcceptQuestUsingDB(871);
AcceptQuestUsingDB(5041);
AcceptQuestUsingDB(869);
AcceptQuestUsingDB(1492);
AcceptQuestUsingDB(848);
AcceptQuestUsingDB(6365);
CompleteObjectiveOfQuest(844,1)
TurnInQuestUsingDB(844);
CompleteObjectiveOfQuest(869,1)
CompleteObjectiveOfQuest(844,1)
TurnInQuestUsingDB(869);
TurnInQuestUsingDB(844);
TurnInQuestUsingDB(6365);
CompleteObjectiveOfQuest(871,1)
CompleteObjectiveOfQuest(871,2)
CompleteObjectiveOfQuest(871,3)
GrindAreaUntilLevel(14)
TurnInQuestUsingDB(6384);
if HasPlayerFinishedQuest(6385)==false then   --- Objective if
  
      Log("Player needs training lvl 20!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check

TurnInQuestUsingDB(6385);
TurnInQuestUsingDB(6386);
TurnInQuestUsingDB(871);
AcceptQuestUsingDB(872);
AcceptQuestUsingDB(899);
AcceptQuestUsingDB(4921);
CompleteObjectiveOfQuest(845,1)
TurnInQuestUsingDB(1492);
TurnInQuestUsingDB(845);
CompleteObjectiveOfQuest(848,1)
if HasPlayerFinishedQuest(870)==false then
Log("The Forgotten Pools");
QuestGoToPoint(93.58234,-1943.214,88.14198);
end;

Log("Turn Fungal Spores");
TurnInQuestAt(3390,848);

Log("Turn The Forgotten Pools");
TurnInQuestAt(3448,870);

CompleteObjectiveOfQuest(903,1)
CompleteObjectiveOfQuest(5041,1)
CompleteObjectiveOfQuest(872,1)
CompleteObjectiveOfQuest(872,2)
TurnInQuestUsingDB(903);
TurnInQuestUsingDB(5041);
TurnInQuestUsingDB(872);

Log("This is the end of Barrens questing profile");

StopQuestProfile();

