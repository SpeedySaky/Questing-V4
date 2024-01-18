StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();
Objects = GetObjectList();

function Stalvan() 
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "Sealed Crate" then
          Log("Found Sealed Crate!");
         InteractWithObject(Object);
         SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; -- Function
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

GrindAreaUntilLevel(21)
GrindAreaUntilLevel(21)
GrindAreaUntilLevel(21)



TurnInQuestUsingDB(92);
TurnInQuestUsingDB(122);

CompleteObjectiveOfQuest(246,1)
CompleteObjectiveOfQuest(246,2)

TurnInQuestUsingDB(246);

CompleteObjectiveOfQuest(124,1)
CompleteObjectiveOfQuest(124,2)

CompleteObjectiveOfQuest(89,1)
CompleteObjectiveOfQuest(89,2)



TurnInQuestUsingDB(89);
TurnInQuestUsingDB(124);
TurnInQuestUsingDB(145);
AcceptQuestUsingDB(144);
AcceptQuestUsingDB(164);
AcceptQuestUsingDB(245);
AcceptQuestUsingDB(5);
CompleteObjectiveOfQuest(245,1)
TurnInQuestUsingDB(165);
AcceptQuestUsingDB(148);

TurnInQuestUsingDB(164);
GrindAreaUntilLevel(22);
AcceptQuestUsingDB(226);

AcceptQuestFrom(311,95); 
TurnInQuestUsingDB(165);
AcceptQuestUsingDB(148);
CompleteObjectiveOfQuest(226,1)
CompleteObjectiveOfQuest(226,2)
TurnInQuestUsingDB(226);
TurnInQuestUsingDB(245);
TurnInQuestUsingDB(5);
TurnInQuestUsingDB(148);
TurnInQuestUsingDB(66);
TurnInQuestUsingDB(149);
TurnInQuestUsingDB(240);

AcceptQuestFrom(313,94); 
AcceptQuestUsingDB(20);
AcceptQuestUsingDB(150);
AcceptQuestUsingDB(127);
AcceptQuestUsingDB(91);
TurnInQuestUsingDB(146);
AcceptQuestUsingDB(128);
CompleteObjectiveOfQuest(150,1)
CompleteObjectiveOfQuest(127,1)
if HasPlayerFinishedQuest(20)==false then   --- Objective if
Log("Doing Blackrock Menace");

Axes = {};
Axes[1] = 440;
Axes[2] = 485;
KillLootAxes = CreateObjective("KillMobsAndLoot",1,10,1,20,TableToList(Axes));
MyInfo = DoObjective(KillLootAxes);
end;
TurnInQuestUsingDB(150);
TurnInQuestUsingDB(127);
TurnInQuestUsingDB(20);
CompleteObjectiveOfQuest(34,1)
TurnInQuestUsingDB(34);
TurnInQuestAt(3643,67);  
TurnInQuestUsingDB(154);
TurnInQuestAt(267,68);  
AcceptQuestUsingDB(56);
CompleteObjectiveOfQuest(56,2)
CompleteObjectiveOfQuest(56,1)


GrindAreaUntilLevel(24)

TurnInQuestUsingDB(56);


TurnInQuestUsingDB(68);
TurnInQuestUsingDB(154);
TurnInQuestUsingDB(157);
TurnInQuestUsingDB(69);
if HasPlayerFinishedQuest(70)==false and CanTurnInQuest(70)==false then
Log("Lets go up");   --- Objective if
QuestGoToPoint(-9477.151,23.9494,56.33975);
SleepPlugin(1000);
SendKey(38,2000);
SleepPlugin(1000);
SendKey(37,500);
SleepPlugin(1000);
SendKey(38,1000);
SleepPlugin(1000);
SendKey(37,500);
SleepPlugin(1000);
SendKey(38,2000);
SleepPlugin(1000);

CompleteObjectiveOfQuest(70,1)
end;

if HasPlayerFinishedQuest(70)==false and CanTurnInQuest(70)==true then   --- Objective if
Log("Lets go down");   --- Objective if

QuestGoToPoint(-9471.4,23.45249,63.82101);
SleepPlugin(1000);
SendKey(37,500);
SleepPlugin(1000);
SendKey(38,2000);
SleepPlugin(1000);
SendKey(39,600);
SleepPlugin(1000);
SendKey(38,500);
SleepPlugin(1000);
SendKey(39,500);
SleepPlugin(1000);
SendKey(38,500);
SleepPlugin(2000);

end;
TurnInQuestUsingDB(70);


if HasPlayerFinishedQuest(72)==false then
Log("Stalvan");   --- Objective if
Stalvan();
end;

TurnInQuestUsingDB(74);

CompleteObjectiveOfQuest(75,1)
TurnInQuestUsingDB(75);

AcceptQuestUsingDB(343);

if HasPlayerFinishedQuest(343)==false then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end 
TurnInQuestUsingDB(343);
TurnInQuestUsingDB(344);


TurnInQuestUsingDB(345);
CompleteObjectiveOfQuest(347,1)

TurnInQuestUsingDB(347);
TurnInQuestUsingDB(78);
TurnInQuestUsingDB(158);

CompleteObjectiveOfQuest(101,2)
CompleteObjectiveOfQuest(101,1)

CompleteObjectiveOfQuest(101,3)


--CompleteObjectiveOfQuest(91,1)
--TurnInQuestAt(36,94);  
--TurnInQuestUsingDB(91);


Log("This is the end of Redridge questing profile");

StopQuestProfile();