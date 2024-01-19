StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();

function InteractWithPilot() 
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "A Dwarven Corpse" then
          Log("Found the Pilot!");
         InteractWithObject(Object);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end;
--This profile was auto-generated using MrFade's massive brain power.
---- Step Count [16] ----
AcceptQuestUsingDB(179);
CompleteObjectiveOfQuest(179,1)
GrindAreaUntilLevel(4)



if HasPlayerFinishedQuest(179)==false and CanTurnInQuest(179)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check
TurnInQuestUsingDB(179)
AcceptQuestUsingDB(170);
AcceptQuestUsingDB(3361);
TurnInQuestUsingDB(3114)
TurnInQuestUsingDB(3113)
TurnInQuestUsingDB(3108)
TurnInQuestUsingDB(3109)
TurnInQuestUsingDB(3110)
TurnInQuestUsingDB(3112)
TurnInQuestUsingDB(3106)
TurnInQuestUsingDB(3115)

CompleteObjectiveOfQuest(170,1)
CompleteObjectiveOfQuest(170,2)
AcceptQuestUsingDB(183);
CompleteObjectiveOfQuest(183,1)
TurnInQuestUsingDB(183)
AcceptQuestUsingDB(3364);
TurnInQuestUsingDB(3364)
TurnInQuestUsingDB(170)
TurnInQuestUsingDB(3365)
TurnInQuestUsingDB(182)
TurnInQuestUsingDB(234)
CompleteObjectiveOfQuest(3361,1)
CompleteObjectiveOfQuest(3361,2)
CompleteObjectiveOfQuest(3361,3)
CompleteObjectiveOfQuest(182,1)
GrindAreaUntilLevel(6)
if HasPlayerFinishedQuest(3361)==false and CanTurnInQuest(3361)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check
TurnInQuestUsingDB(3361)
TurnInQuestUsingDB(182)
CompleteObjectiveOfQuest(218,1)
TurnInQuestUsingDB(218)
TurnInQuestUsingDB(282)
AcceptQuestUsingDB(2160);
TurnInQuestUsingDB(2160)
TurnInQuestUsingDB(420)
AcceptQuestUsingDB(400);
AcceptQuestUsingDB(5541);
AcceptQuestUsingDB(313);
AcceptQuestUsingDB(317);
TurnInQuestUsingDB(400)
CompleteObjectiveOfQuest(317,1)
CompleteObjectiveOfQuest(317,2)
CompleteObjectiveOfQuest(5541,1)
GrindAreaUntilLevel(8)
if HasPlayerFinishedQuest(317)==false and CanTurnInQuest(317)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end
TurnInQuestUsingDB(317)
TurnInQuestUsingDB(384)
TurnInQuestUsingDB(5541)
GrindAreaUntilLevel(10)
if HasPlayerFinishedQuest(412)==false and CanTurnInQuest(412)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end
TurnInQuestUsingDB(412)
TurnInQuestUsingDB(320)
AcceptQuestUsingDB(432);
AcceptQuestUsingDB(433);
CompleteObjectiveOfQuest(432,1)
CompleteObjectiveOfQuest(433,1)
TurnInQuestUsingDB(432)
TurnInQuestUsingDB(433)
TurnInQuestUsingDB(413)
AcceptQuestFrom(1960,419);

if HasPlayerFinishedQuest(419)==false then
QuestGoToPoint(-5064.667,-2124.331,403.1526);
   InteractWithPilot();
	SleepPlugin(1000);
end;
if HasPlayerFinishedQuest(417)==false then

Log("Doing A Pilot's Revenge");
Claw = {}; 
Claw[1] = 1961; 
KillLootClaw = CreateObjective("KillMobsAndLoot",1,1,1,417,TableToList(Claw));
MyInfo = DoObjective(KillLootClaw);
end;

TurnInQuestAt(1960,417);

GrindAreaUntilLevel(12)

AcceptQuestUsingDB(224);
AcceptQuestUsingDB(267);
CompleteObjectiveOfQuest(224,1)
CompleteObjectiveOfQuest(224,2)
CompleteObjectiveOfQuest(267,1)
TurnInQuestUsingDB(224)
TurnInQuestUsingDB(267)


StopQuestProfile();
