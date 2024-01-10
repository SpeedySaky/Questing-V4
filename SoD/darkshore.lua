StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)



AcceptQuestFrom(3666,983);
AcceptQuestUsingDB(963);
AcceptQuestUsingDB(4811);
AcceptQuestUsingDB(3524);
AcceptQuestUsingDB(984);
AcceptQuestUsingDB(958);	
AcceptQuestUsingDB(954);
CompleteObjectiveOfQuest(3524,1)
Log("Doing Crabs");

Crabs = {};
Crabs[1] = 2231;
KillLootCrabs = CreateObjective("KillMobsAndLoot",1,6,1,983,TableToList(Crabs));
MyInfo = DoObjective(KillLootCrabs);

TurnInQuestUsingDB(3524);
TurnInQuestAt(17182,983);
TurnInQuestUsingDB(954);
CompleteObjectiveOfQuest(955,1)
TurnInQuestUsingDB(955);
CompleteObjectiveOfQuest(956,1)
TurnInQuestUsingDB(956);
GrindAreaUntilLevel(14)

CompleteObjectiveOfQuest(958,1)
CompleteObjectiveOfQuest(957,1)
AcceptQuestUsingDB(953);
CompleteObjectiveOfQuest(953,1)
CompleteObjectiveOfQuest(953,2)
TurnInQuestUsingDB(953);

if (IsOnQuest(984) == true) and (CanTurnInQuest(984) == false)  then
  QuestGoToPoint(5998.733,301.1935,20.80463);    
  Log("How Big a Threat");

end;

CompleteObjectiveOfQuest(4811,1)

TurnInQuestUsingDB(957);
TurnInQuestUsingDB(958);
TurnInQuestUsingDB(4811);
TurnInQuestUsingDB(984);



Log("This is it");	
StopQuestProfile();
