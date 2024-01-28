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



Log("This is the end of Barrens questing profile");

StopQuestProfile();

