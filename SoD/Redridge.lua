StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();
Objects = GetObjectList();

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
AddNameToAvoidWhiteList("Defias Trapper");
AddNameToAvoidWhiteList("Defias Smuggler");

Log("Going to SW");

TurnInQuestUsingDB(135);

Log("Going to SW");
TurnInQuestUsingDB(141);


CompleteObjectiveOfQuest(142,1)
TurnInQuestUsingDB(142);


Log("Going to Redridge");
AcceptQuestUsingDB(244);
TurnInQuestUsingDB(244);

TurnInQuestUsingDB(119);
TurnInQuestUsingDB(121);
TurnInQuestUsingDB(130);

AcceptQuestUsingDB(92);

AcceptQuestUsingDB(3741);
AcceptQuestUsingDB(125);
CompleteObjectiveOfQuest(3741,1)


CompleteObjectiveOfQuest(125,1)

TurnInQuestUsingDB(3741);
TurnInQuestUsingDB(125);
TurnInQuestUsingDB(143);
TurnInQuestUsingDB(144);
TurnInQuestUsingDB(131);
AcceptQuestUsingDB(122);
AcceptQuestUsingDB(118);
TurnInQuestUsingDB(118);
TurnInQuestUsingDB(119);

CompleteObjectiveOfQuest(122,1)


Log("Doing Reddridge Goulash");




Boar = {}; 
Boar[1] = 547;  
KillLootBoar = CreateObjective("KillMobsAndLoot",1,5,3,92,TableToList(Boar));
MyInfo = DoObjective(KillLootBoar);

Condor = {}; 
Condor[1] = 428;  
KillLootCondor = CreateObjective("KillMobsAndLoot",2,5,3,92,TableToList(Condor));
MyInfo = DoObjective(KillLootCondor);

Spider = {}; 
Spider[1] = 442;  
KillLootSpider = CreateObjective("KillMobsAndLoot",3,5,3,92,TableToList(Spider));
MyInfo = DoObjective(KillLootSpider);




TurnInQuestUsingDB(92);
TurnInQuestUsingDB(122);

CompleteObjectiveOfQuest(246,1)
CompleteObjectiveOfQuest(246,2)
GrindAreaUntilLevel(22)
GrindAreaUntilLevel(22)

TurnInQuestUsingDB(246);
GrindAreaUntilLevel(22)
GrindAreaUntilLevel(22)
CompleteObjectiveOfQuest(89,1)
CompleteObjectiveOfQuest(89,2)

CompleteObjectiveOfQuest(124,1)
CompleteObjectiveOfQuest(124,2)



AcceptQuestUsingDB(129);
TurnInQuestUsingDB(129);
TurnInQuestUsingDB(130);
TurnInQuestUsingDB(131);


TurnInQuestUsingDB(89);
TurnInQuestUsingDB(124);
TurnInQuestUsingDB(145);
TurnInQuestUsingDB(5);
AcceptQuestUsingDB(144);
AcceptQuestUsingDB(164);

AcceptQuestFrom(313,94); 
AcceptQuestUsingDB(20);
AcceptQuestUsingDB(150);
AcceptQuestUsingDB(127);
AcceptQuestUsingDB(91);
TurnInQuestUsingDB(146);
AcceptQuestUsingDB(128);
AcceptQuestFrom(313,94); 

CompleteObjectiveOfQuest(150,1)
CompleteObjectiveOfQuest(127,1)
if HasPlayerFinishedQuest(20)==false then   --- Objective if
Log("Doing Blackrock Menace");

Axes = {};
Axes[1] = 440;
Axes[2] = 485;
KillLootAxes = CreateObjective("KillMobsAndLoot",1,10,1,20,TableToList(Axes));
MyInfo = DoObjective(KillLootAxes);
end;
TurnInQuestAt(31,94);    --- The Defias Brotherhood

TurnInQuestUsingDB(150);
TurnInQuestUsingDB(127);
TurnInQuestUsingDB(20);
CompleteObjectiveOfQuest(34,1)
TurnInQuestUsingDB(34);
TurnInQuestAt(3643,67);  
TurnInQuestUsingDB(154);
TurnInQuestAt(267,68);  


CompleteObjectiveOfQuest(91,1)
TurnInQuestUsingDB(91);
TurnInQuestUsingDB(178);




--CompleteObjectiveOfQuest(91,1)
--TurnInQuestAt(36,94);  
--TurnInQuestUsingDB(91);


Log("This is the end of Redridge questing profile");

StopQuestProfile();