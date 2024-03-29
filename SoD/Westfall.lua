StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();

AddNameToAvoidWhiteList("Defias Trapper");
AddNameToAvoidWhiteList("Defias Smuggler");

function WestfallFP() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Thor") and (IsUnitValid(Unit)== true) then
         Log("Found flight master!");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; 

function StormwindFP() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Dungar Longdrink") and (IsUnitValid(Unit)== true) then
         Log("Found flight master!");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; 
function RedridgeFP() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Ariena Stormfeather") and (IsUnitValid(Unit)== true) then
         Log("Found flight master!");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; 
function DarkshireFP() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Felicia Maline") and (IsUnitValid(Unit)== true) then
         Log("Found flight master!");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; 


if (HasPlayerFinishedQuest(46)==false) then 

Log("Finishing Elwynn");
end;

AcceptQuestUsingDB(46);
CompleteObjectiveOfQuest(46,1)
TurnInQuestUsingDB(46);

AcceptQuestUsingDB(1638);
if Player.Level >= 12 and HasPlayerFinishedQuest(1638) == false then
Log("Attempting to train the player!");
TrainAtNearestClassTrainer();
end;
TurnInQuestUsingDB(1638);
TurnInQuestUsingDB(1639);

AcceptQuestUsingDB(399);
TurnInQuestUsingDB(1640);
TurnInQuestUsingDB(1665);

if (HasPlayerFinishedQuest(61)==false) then 

Log("Going Stormwind to turn in and get quests");
end;

TurnInQuestUsingDB(61);
TurnInQuestUsingDB(1097);

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
AcceptQuestUsingDB(6181);
TurnInQuestUsingDB(6181);

if HasPlayerFinishedQuest(6281)==false and GetZoneID() == 1436 then
Log("Flying to Stormwind");
QuestGoToPoint(-10627.74,1038.647,34.12702);    
WestfallFP();
SleepPlugin(2000);

UseMacro("Gossip1");
SleepPlugin(2000);
UseMacro("Stormwind");
Log("Flying to Stormwind");
SleepPlugin(2000);
UseMacro("Stormwind");
SleepPlugin(90000);
end;
TurnInQuestUsingDB(6281);
TurnInQuestUsingDB(6261);

if HasPlayerFinishedQuest(6285)==false and GetZoneID() == 1453 then
Log("Flying to Westfall");
QuestGoToPoint(-8843.952,493.1302,109.6061); 
StormwindFP();
UseMacro("Gossip1");
SleepPlugin(2000);
UseMacro("Sentinel Hill");
SleepPlugin(2000);
UseMacro("Sentinel Hill");
SleepPlugin(2000);
UseMacro("Sentinel Hill");
SleepPlugin(2000);
SleepPlugin(120000);

end;
TurnInQuestUsingDB(6285);


---- Step Count [1965] ----
AcceptQuestUsingDB(102);
AcceptQuestUsingDB(12);
AcceptQuestUsingDB(153);
CompleteObjectiveOfQuest(12,1)

CompleteObjectiveOfQuest(153,1)

CompleteObjectiveOfQuest(12,2)
TurnInQuestUsingDB(12);
TurnInQuestUsingDB(153);


CompleteObjectiveOfQuest(22,1)
TurnInQuestUsingDB(22);
CompleteObjectiveOfQuest(151,1)
TurnInQuestUsingDB(151);

CompleteObjectiveOfQuest(38,1)
CompleteObjectiveOfQuest(64,1)
CompleteObjectiveOfQuest(9,1)

CompleteObjectiveOfQuest(38,1)
if HasPlayerFinishedQuest(38)== false and CanTurnInQuest(38)==false then
Log("Doing Murlocs");

Murlocs = {};
Murlocs[1] = 515;
KillLootMurlocs = CreateObjective("KillMobsAndLoot",2,3,4,38,TableToList(Murlocs));
MyInfo = DoObjective(KillLootMurlocs);
end;
CompleteObjectiveOfQuest(38,3)
CompleteObjectiveOfQuest(38,4)

CompleteObjectiveOfQuest(11,1)
---------Step end-----------

---- Step Count [1799] ----
TurnInQuestUsingDB(11);

AcceptQuestUsingDB(239);

TurnInQuestUsingDB(22);
TurnInQuestUsingDB(38);
CompleteObjectiveOfQuest(151,1)
TurnInQuestUsingDB(151);

GrindAreaUntilLevel(16)
TurnInQuestUsingDB(64);
CompleteObjectiveOfQuest(102,1)
TurnInQuestUsingDB(102);
CompleteObjectiveOfQuest(13,1)
CompleteObjectiveOfQuest(13,2)
CompleteObjectiveOfQuest(399,1)
TurnInQuestUsingDB(13);
Log("Taking Hogger");
AcceptQuestFrom(156561,176);  
CompleteObjectiveOfQuest(176,1)
TurnInQuestUsingDB(176);
TurnInQuestUsingDB(6281);
TurnInQuestUsingDB(399);
TurnInQuestUsingDB(6261);
AcceptQuestUsingDB(244);
TurnInQuestUsingDB(244);
if IsOnQuest(65)==true  and HasPlayerFinishedQuest(65)== false then
QuestGoToPoint(-9223.782,-2163.917,63.73137);
		 SendKey(37, 300);
	  	 SleepPlugin(1000);
		 SendKey(38, 1500);
	  	 SleepPlugin(1000);
		 SendKey(37, 500);
		  SleepPlugin(1000);
		 SendKey(38, 500);
	  	 SleepPlugin(1000);
		 SendKey(37, 500);
		  SleepPlugin(1000);
		 SendKey(38, 1500);

Log("Turning The Defias Brotherhood");
TurnInQuestAt(266,65);    --- The Defias Brotherhood
end;
AcceptQuestUsingDB(132);

if IsOnQuest(129)==false and HasPlayerFinishedQuest(129)== false then
QuestGoToPoint(-9213.599,-2163.979,67.57477);
	  	 SendKey(38, 1000);
	  	 SleepPlugin(1000);
		 SendKey(39, 700);
		 SleepPlugin(1000);
		 SendKey(38, 1000);

end;


AcceptQuestUsingDB(129);
AcceptQuestUsingDB(120);

AcceptQuestUsingDB(118);
TurnInQuestUsingDB(129);
TurnInQuestUsingDB(120);

TurnInQuestUsingDB(118);

TurnInQuestUsingDB(6285);
TurnInQuestUsingDB(132);

CompleteObjectiveOfQuest(14,1)
CompleteObjectiveOfQuest(14,2)
CompleteObjectiveOfQuest(14,3)

TurnInQuestUsingDB(14);

if (Player.Level <19) then 
Log("Grind to 13");

Grind = {};
Grind[1] = 154;
Grind[2] = 115;

Grind = CreateObjective("KillMobsAndLoot",1,10,1,999,TableToList(Grind));
GrindUntilLvl(19,Grind,true);
end;
Log("This is the end of Westfall questing profile");

StopQuestProfile();