StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();

function Barrel() 
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "Damaged Crate" then
          Log("Found Damaged Crate");
         InteractWithObject(Object);
         SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; 
AcceptQuestUsingDB(276);
CompleteObjectiveOfQuest(484,1)
TurnInQuestUsingDB(484)
AcceptQuestUsingDB(305);
AcceptQuestUsingDB(470);
AcceptQuestUsingDB(279);
CompleteObjectiveOfQuest(279,1)
if HasPlayerFinishedQuest(279)==false then   --- Objective if
Log("Getting Gobbler");

Axes = {};
Axes[1] = 1259;
KillLootAxes = CreateObjective("KillMobsAndLoot",2,1,2,279,TableToList(Axes));
MyInfo = DoObjective(KillLootAxes);
end;

TurnInQuestUsingDB(279)
TurnInQuestUsingDB(305)
AcceptQuestUsingDB(294);

TurnInQuestUsingDB(463)
CompleteObjectiveOfQuest(276,1)
CompleteObjectiveOfQuest(276,2)
TurnInQuestUsingDB(276)
CompleteObjectiveOfQuest(277,1)
TurnInQuestUsingDB(277)
TurnInQuestUsingDB(306)
AcceptQuestUsingDB(473);
TurnInQuestUsingDB(473)
	
CompleteObjectiveOfQuest(294,1)
CompleteObjectiveOfQuest(294,2)
CompleteObjectiveOfQuest(470,1)

if HasPlayerFinishedQuest(275)==false then   --- Objective if
Log("Getting Fen");

Fen = {};
Fen[1] = 1040;
KillLootFen = CreateObjective("KillMobsAndLoot",1,12,1,275,TableToList(Fen));
MyInfo = DoObjective(KillLootFen);
end;
TurnInQuestUsingDB(275)

CompleteObjectiveOfQuest(471,1)
TurnInQuestUsingDB(470)
TurnInQuestUsingDB(471)

TurnInQuestUsingDB(294)
AcceptQuestUsingDB(299);
CompleteObjectiveOfQuest(295,1)
CompleteObjectiveOfQuest(295,2)
CompleteObjectiveOfQuest(299,1)
CompleteObjectiveOfQuest(299,2)
CompleteObjectiveOfQuest(299,3)
CompleteObjectiveOfQuest(299,4)
TurnInQuestUsingDB(295)
TurnInQuestUsingDB(299)

if HasPlayerFinishedQuest(281)==false then 

QuestGoToPoint(-3292.004,-950.7999,9.083661);
SleepPlugin(2000);
Barrel();
end;
TurnInQuestAt(142151,284);  
TurnInQuestAt(259,285);  
TurnInQuestUsingDB(286)
CompleteObjectiveOfQuest(464,1)
TurnInQuestUsingDB(464)





Log("That is all for Wetlands")

StopQuestProfile();
