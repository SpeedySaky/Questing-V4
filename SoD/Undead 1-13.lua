StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();

function Grave() 
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "Marla's Grave" then
          Log("Found Marla's Grave!");
         InteractWithObject(Object);
         SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; -- Function

AcceptQuestUsingDB(363);
TurnInQuestUsingDB(363);
CompleteObjectiveOfQuest(364,1)
CompleteObjectiveOfQuest(364,2)
TurnInQuestUsingDB(364);
TurnInQuestUsingDB(3098);
AcceptQuestUsingDB(376);
CompleteObjectiveOfQuest(3901,1)
CompleteObjectiveOfQuest(376,1)
CompleteObjectiveOfQuest(376,2)
GrindAreaUntilLevel(4)
TurnInQuestUsingDB(3901);

if HasPlayerFinishedQuest(376)==false and CanTurnInQuest(376)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check
TurnInQuestUsingDB(376);
AcceptQuestUsingDB(3902);
AcceptQuestUsingDB(380);
CompleteObjectiveOfQuest(3902,1)
CompleteObjectiveOfQuest(380,1)
CompleteObjectiveOfQuest(380,2)
TurnInQuestUsingDB(3902);
TurnInQuestUsingDB(380);

if HasPlayerFinishedQuest(6395)==false and HasItem("Samuel's Remains")==false and CanTurnInQuest(6395)==false then   --- Objective if
  
Log("Doing Samuel Fipps");

Samuel = {};
Samuel[1] = 1919;
KillLootSamuel = CreateObjective("KillMobsAndLoot",1,1,1,6395,TableToList(Samuel));
MyInfo = DoObjective(KillLootSamuel);
end;

if HasPlayerFinishedQuest(6395)==false and HasItem("Samuel's Remains")==true and CanTurnInQuest(6395)==false then   --- Objective if
Log("The Grave");
QuestGoToPoint(1879.409,1623.942,94.45179);
SleepPlugin(1000);
Grave();
end;

TurnInQuestAt(1661,6395);  

CompleteObjectiveOfQuest(381,1)
GrindAreaUntilLevel(6)
if HasPlayerFinishedQuest(381)==false and CanTurnInQuest(381)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check
TurnInQuestUsingDB(381);
CompleteObjectiveOfQuest(382,1)
TurnInQuestUsingDB(382);
AcceptQuestUsingDB(8);
AcceptQuestUsingDB(365);
AcceptQuestUsingDB(5481);
AcceptQuestUsingDB(404);
AcceptQuestUsingDB(367);
AcceptQuestUsingDB(358);
TurnInQuestUsingDB(383);
TurnInQuestUsingDB(8);
CompleteObjectiveOfQuest(5481,1)
CompleteObjectiveOfQuest(404,1)
CompleteObjectiveOfQuest(365,1)
CompleteObjectiveOfQuest(427,1)
GrindAreaUntilLevel(8)
CompleteObjectiveOfQuest(367,1)
TurnInQuestUsingDB(5481);
TurnInQuestUsingDB(367);
TurnInQuestUsingDB(404);
TurnInQuestUsingDB(365);
if HasPlayerFinishedQuest(427)==false and CanTurnInQuest(427)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end 
TurnInQuestUsingDB(427);
TurnInQuestUsingDB(407);
AcceptQuestUsingDB(362);
AcceptQuestUsingDB(354);
AcceptQuestUsingDB(374);
AcceptQuestUsingDB(426);
CompleteObjectiveOfQuest(5482,1)
CompleteObjectiveOfQuest(358,1)
CompleteObjectiveOfQuest(358,2)
TurnInQuestUsingDB(5482);
TurnInQuestUsingDB(358);
CompleteObjectiveOfQuest(426,1)
CompleteObjectiveOfQuest(426,2)
CompleteObjectiveOfQuest(362,1)
GrindAreaUntilLevel(10)
TurnInQuestUsingDB(426);

CompleteObjectiveOfQuest(370,1)
CompleteObjectiveOfQuest(370,2)
CompleteObjectiveOfQuest(370,3)
CompleteObjectiveOfQuest(374,1)
TurnInQuestUsingDB(370);
TurnInQuestUsingDB(374);

Log("This is the end of Tirisfal Glades questing profile");


StopQuestProfile();
