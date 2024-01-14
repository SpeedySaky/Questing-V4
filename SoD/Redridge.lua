StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();

AddNameToAvoidWhiteList("Defias Trapper");
AddNameToAvoidWhiteList("Defias Smuggler");

Log("Going to SW");

TurnInQuestUsingDB(135);

Log("Going to SW");
TurnInQuestUsingDB(141);


CompleteObjectiveOfQuest(142,1)
TurnInQuestUsingDB(142);


Log("Going to Redridge");

TurnInQuestUsingDB(119);
TurnInQuestUsingDB(121);
TurnInQuestUsingDB(130);

AcceptQuestUsingDB(92);

AcceptQuestUsingDB(3741);
AcceptQuestUsingDB(125);
CompleteObjectiveOfQuest(3741,1)


CompleteObjectiveOfQuest(125,1)

TurnInQuestUsingDB(3741);
TurnInQuestUsingDB(125);
TurnInQuestUsingDB(143);
TurnInQuestUsingDB(144);
TurnInQuestUsingDB(131);
AcceptQuestUsingDB(122);

Log("Doing Reddridge Goulash");




Boar = {}; 
Boar[1] = 547;  
KillLootBoar = CreateObjective("KillMobsAndLoot",1,5,3,92,TableToList(Boar));
MyInfo = DoObjective(KillLootBoar);

Condor = {}; 
Condor[1] = 428;  
KillLootCondor = CreateObjective("KillMobsAndLoot",2,5,3,92,TableToList(Condor));
MyInfo = DoObjective(KillLootCondor);

Spider = {}; 
Spider[1] = 442;  
KillLootSpider = CreateObjective("KillMobsAndLoot",3,5,3,92,TableToList(Spider));
MyInfo = DoObjective(KillLootSpider);

GrindAreaUntilLevel(20)



TurnInQuestUsingDB(92);
TurnInQuestUsingDB(122);

Log("This is the end of Redridge questing profile");

StopQuestProfile();