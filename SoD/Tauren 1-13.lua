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


AcceptQuestUsingDB(747);
AcceptQuestUsingDB(752);
CompleteObjectiveOfQuest(747,1)
CompleteObjectiveOfQuest(747,2)
TurnInQuestUsingDB(752);
CompleteObjectiveOfQuest(753,1)
TurnInQuestUsingDB(753);

GrindAreaUntilLevel(4)
if HasPlayerFinishedQuest(747)==false then
 Log("Player needs training !")
      TrainAtNearestClassTrainer();

end;
TurnInQuestUsingDB(747);



TurnInQuestUsingDB(3091);
TurnInQuestUsingDB(3092);
TurnInQuestUsingDB(3093);
TurnInQuestUsingDB(3094);

CompleteObjectiveOfQuest(750,1)
TurnInQuestUsingDB(755);
TurnInQuestUsingDB(750);
AcceptQuestUsingDB(3376);
CompleteObjectiveOfQuest(757,1)
CompleteObjectiveOfQuest(780,1)
CompleteObjectiveOfQuest(780,2)
CompleteObjectiveOfQuest(3376,1)
GrindAreaUntilLevel(6)

TurnInQuestUsingDB(757);
TurnInQuestUsingDB(780);
TurnInQuestUsingDB(3376);
AcceptQuestUsingDB(1656);
TurnInQuestUsingDB(1656);
AcceptQuestUsingDB(743);
AcceptQuestUsingDB(761);
AcceptQuestUsingDB(766);
AcceptQuestUsingDB(745);
AcceptQuestUsingDB(748);
TurnInQuestUsingDB(767);
CompleteObjectiveOfQuest(748,1)
CompleteObjectiveOfQuest(748,2)
CompleteObjectiveOfQuest(761,1)
CompleteObjectiveOfQuest(745,1)
CompleteObjectiveOfQuest(745,2)
CompleteObjectiveOfQuest(745,3)
TurnInQuestUsingDB(748);
TurnInQuestUsingDB(761);
TurnInQuestUsingDB(745);
CompleteObjectiveOfQuest(743,1)
CompleteObjectiveOfQuest(766,1)
CompleteObjectiveOfQuest(766,2)
CompleteObjectiveOfQuest(766,3)
CompleteObjectiveOfQuest(766,4)
TurnInQuestUsingDB(743);
if HasPlayerFinishedQuest(766)==false  then
 Log("Player needs training !")
      TrainAtNearestClassTrainer();

end;

TurnInQuestUsingDB(766);

Log("Doing Rite of Vision");

Stone = {};
Stone[1] = 2910;
CollectStone = CreateObjective("GatherObject",1,2,2,771,nil,TableToList(Stone));
MyInfo = DoObjective(CollectStone);

Amber = {};
Amber[1] = 2912;
CollectAmber = CreateObjective("GatherObject",2,2,2,771,nil,TableToList(Amber));
MyInfo = DoObjective(CollectAmber);
TurnInQuestUsingDB(771);
TurnInQuestUsingDB(772);
GrindAreaUntilLevel(10)
AcceptQuestUsingDB(861);
if HasPlayerFinishedQuest(861)==false  then
 Log("Player needs training !")
      TrainAtNearestClassTrainer();

end;
CompleteObjectiveOfQuest(861,1)

AcceptQuestUsingDB(833);
CompleteObjectiveOfQuest(833,1)
TurnInQuestUsingDB(773);

TurnInQuestUsingDB(833);
TurnInQuestUsingDB(861);

Log("This is the end of Mulgore questing profile");

StopQuestProfile();
