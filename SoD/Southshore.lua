StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();

--TurnInQuestUsingDB(146);
--AcceptQuestUsingDB(128);
--AcceptQuestFrom(313,94); 
--CompleteObjectiveOfQuest(128,1)
--TurnInQuestAt(289,134);

TurnInQuestUsingDB(538);
AcceptQuestUsingDB(555);
AcceptQuestUsingDB(536);
AcceptQuestUsingDB(505);
Log("That is all for Southshore")

StopQuestProfile();
