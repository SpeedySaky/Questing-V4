StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();

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

---- Step Count [29] ----
---------Step end-----------


StopQuestProfile();
