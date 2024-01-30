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
TurnInQuestUsingDB(903);
CompleteObjectiveOfQuest(5041,1)
CompleteObjectiveOfQuest(872,1)
CompleteObjectiveOfQuest(872,2)
TurnInQuestUsingDB(5041);
CompleteObjectiveOfQuest(867,1)
TurnInQuestUsingDB(867);
AcceptQuestUsingDB(855);
CompleteObjectiveOfQuest(855,1)
GrindAreaUntilLevel(16)
TurnInQuestUsingDB(855);

CompleteObjectiveOfQuest(872,3)
TurnInQuestUsingDB(872);

AcceptQuestUsingDB(1061);

if HasPlayerFinishedQuest(1061)==false then
 Log("Player needs training lvl 16!")
      TrainAtNearestClassTrainer();

end;

TurnInQuestUsingDB(1061);
AcceptQuestUsingDB(881);

if HasPlayerFinishedQuest(881)==false and HasItem("Echeyakee's Hide")==false  then
Log("Going to Echeyakee");
QuestGoToPoint(432.3051,-3046.973,92.07537);
SleepPlugin(1000);
UseItem("Horn of Echeyakee");
SleepPlugin(3000);
end;

if HasPlayerFinishedQuest(881)==false and HasItem("Echeyakee's Hide")==false then

Log("Killing Echayakee");

Echayakee = {};
Echayakee[1] = 3475;
KillLootEchayakee = CreateObjective("KillMobsAndLoot",1,1,1,881,TableToList(Echayakee));
MyInfo = DoObjective(KillLootEchayakee);
end;

Log("Turn Echayakee");
TurnInQuestAt(3338,881);

function Fissure()
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "Bubbling Fissure" then
          Log("Found Bubbling Fissure");
         InteractWithObject(Object);
		 SleepPlugin(3000);
      end; -- IF
   end; -- For Each
end;

if HasPlayerFinishedQuest(877)== false then
Log("Doing The Stagnant Oasis");
QuestGoToPoint(-1274.122,-3010.971,71.7179);
SleepPlugin(2000);
Fissure();
SleepPlugin(8000);
end;

Log("Turn The Stagnant Oasis");
TurnInQuestAt(3448,877);


Log("This is the end of Barrens questing profile");

StopQuestProfile();

