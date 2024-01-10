StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)

function UsePhial()
    UseItem("Empty Water Tube");
     SleepPlugin(1500);
   
    end;


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


if  HasPlayerFinishedQuest(4811) == false and CanTurnInQuest(4811)==false then
  Log("Doing Crystal");

Crystal = {}; 
Crystal[1] = 175524;
CollectCrystal = CreateObjective("GatherObject",2,1,2,4811,nil,TableToList(Crystal));
MyInfo = DoObjective(CollectCrystal);
end;

TurnInQuestUsingDB(957);
TurnInQuestUsingDB(958);
TurnInQuestUsingDB(2930);
TurnInQuestAt(2930,4811);

AcceptQuestFrom(2930,4812);

if IsOnQuest(4812) == false and HasPlayerFinishedQuest(4812) == false then
    Log("Doing Water Cascades");	

    
        QuestGoToPoint(6411.781,467.7597,8.034443);    
		UsePhial()
		Sleep(1500);
       end;
TurnInQuestAt(175524,4812);
CompleteObjectiveOfQuest(985,1)
CompleteObjectiveOfQuest(985,2)
TurnInQuestUsingDB(985);


TurnInQuestAt(2930,4813);

Log("This is for now");	
Log("Now manually complete following Quests objectives,no need to finish quests");	
Log("Buzzbox 411");	
Log("Washed Ashore");	
StopQuestProfile();
