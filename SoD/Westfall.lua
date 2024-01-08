StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();

AddNameToAvoidWhiteList("Defias Trapper");
AddNameToAvoidWhiteList("Defias Smuggler");


if (HasPlayerFinishedQuest(46)==false) then 

Log("Finishing Elwynn");
end;

AcceptQuestUsingDB(46);
CompleteObjectiveOfQuest(46,1)
TurnInQuestUsingDB(46);

if (HasPlayerFinishedQuest(61)==false) then 

Log("Going Stormwind to turn in and get quests");
end;
TurnInQuestUsingDB(61);
TurnInQuestUsingDB(1097);
AcceptQuestUsingDB(399);

if (HasPlayerFinishedQuest(61)==false) then 

Log("Going to Westfall");
end;

AcceptQuestUsingDB(36);
AcceptQuestUsingDB(151);
AcceptQuestUsingDB(64);
---------Step end-----------

---- Step Count [1960] ----
AcceptQuestUsingDB(9);
AcceptQuestUsingDB(22);
---------Step end-----------
TurnInQuestUsingDB(109);
TurnInQuestUsingDB(109);
---- Step Count [1965] ----
AcceptQuestUsingDB(102);
AcceptQuestUsingDB(12);
AcceptQuestUsingDB(153);


CompleteObjectiveOfQuest(12,1)
CompleteObjectiveOfQuest(12,2)
CompleteObjectiveOfQuest(153,1)
TurnInQuestUsingDB(12);
TurnInQuestUsingDB(153);

CompleteObjectiveOfQuest(151,1)
TurnInQuestUsingDB(151);

CompleteObjectiveOfQuest(22,1)
CompleteObjectiveOfQuest(38,1)
CompleteObjectiveOfQuest(38,2)
CompleteObjectiveOfQuest(38,3)
CompleteObjectiveOfQuest(38,4)

TurnInQuestUsingDB(22);
TurnInQuestUsingDB(38);


Log("This is the end of Westfall questing profile");

StopQuestProfile();