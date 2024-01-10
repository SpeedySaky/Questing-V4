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

if  HasPlayerFinishedQuest(953) == false  then

Fall = {}; 
Fall[1] = 17189;
CollectFall = CreateObjective("GatherObject",2,1,2,953,nil,TableToList(Fall));
MyInfo = DoObjective(CollectFall);
end;
TurnInQuestUsingDB(953);

if HasPlayerFinishedQuest(984) == false  then
  Log("How Big a Threat");

  QuestGoToPoint(5998.733,301.1935,20.80463);    

end;
TurnInQuestUsingDB(984);


if  HasPlayerFinishedQuest(4811) == false  then
  Log("Doiing CrystalTurnInQuestAt(3514,921);");

Crystal = {}; 
Crystal[1] = 175524;
CollectCrystal = CreateObjective("GatherObject",2,1,2,4811,nil,TableToList(Crystal));
MyInfo = DoObjective(CollectCrystal);
end;

TurnInQuestUsingDB(957);
TurnInQuestUsingDB(958);
TurnInQuestAt(4811,2930);


Log("This is it");	
StopQuestProfile();
