StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();


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


AcceptQuestUsingDB(5);
TurnInQuestUsingDB(5);
AcceptQuestUsingDB(93);
CompleteObjectiveOfQuest(93,1)
TurnInQuestUsingDB(93);
TurnInQuestUsingDB(240);
AcceptQuestUsingDB(164);
AcceptQuestUsingDB(245);
AcceptQuestUsingDB(5);
CompleteObjectiveOfQuest(245,1)
TurnInQuestUsingDB(165);
AcceptQuestUsingDB(148);
TurnInQuestUsingDB(164);
AcceptQuestFrom(311,95); 
TurnInQuestUsingDB(165);
AcceptQuestUsingDB(148);
CompleteObjectiveOfQuest(226,1)
CompleteObjectiveOfQuest(226,2)
CompleteObjectiveOfQuest(101,3)

TurnInQuestUsingDB(226);
TurnInQuestUsingDB(245);
TurnInQuestUsingDB(5);
TurnInQuestUsingDB(148);
TurnInQuestUsingDB(66);
TurnInQuestUsingDB(149);
TurnInQuestAt(3643,67);  
TurnInQuestUsingDB(154);
TurnInQuestAt(267,68);  
AcceptQuestUsingDB(56);
CompleteObjectiveOfQuest(56,2)
CompleteObjectiveOfQuest(56,1)
TurnInQuestUsingDB(56);
TurnInQuestUsingDB(68);
TurnInQuestUsingDB(154);
TurnInQuestUsingDB(157);
CompleteObjectiveOfQuest(101,2)
CompleteObjectiveOfQuest(101,1)
CompleteObjectiveOfQuest(57,1)
CompleteObjectiveOfQuest(57,2)
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
TurnInQuestUsingDB(337);
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
TurnInQuestUsingDB(57);
TurnInQuestUsingDB(101);
AcceptQuestUsingDB(173);
CompleteObjectiveOfQuest(173,1)
TurnInQuestUsingDB(173);
CompleteObjectiveOfQuest(133,1)
TurnInQuestUsingDB(133);
GrindAreaUntilLevel(28)

Log("Doing Ogre Thieves");

Thieves = {};
Thieves[1] = 119;
CollectThieves = CreateObjective("GatherObject",1,1,1,134,nil,TableToList(Thieves));
MyInfo = DoObjective(CollectThieves);

Log("Turning Ogre Thieves");
TurnInQuestAt(289,134);
TurnInQuestUsingDB(160);
TurnInQuestUsingDB(251);
AcceptQuestUsingDB(401);
TurnInQuestUsingDB(401);
AcceptQuestUsingDB(252);
TurnInQuestUsingDB(252);
CompleteObjectiveOfQuest(323,1)
CompleteObjectiveOfQuest(323,2)
CompleteObjectiveOfQuest(323,3)
TurnInQuestUsingDB(323);
CompleteObjectiveOfQuest(58,1)

TurnInQuestUsingDB(58);

CompleteObjectiveOfQuest(221,1)
TurnInQuestUsingDB(221);
CompleteObjectiveOfQuest(222,1)
CompleteObjectiveOfQuest(222,2)

TurnInQuestUsingDB(222);



Log("This is the end of Duskwood questing profile");

StopQuestProfile();