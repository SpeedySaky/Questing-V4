StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();
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

CompleteObjectiveOfQuest(153,1)

CompleteObjectiveOfQuest(12,1)
CompleteObjectiveOfQuest(12,2)
TurnInQuestUsingDB(12);
TurnInQuestUsingDB(153);


CompleteObjectiveOfQuest(22,1)
TurnInQuestUsingDB(22);
GrindAreaUntilLevel(14)
AcceptQuestUsingDB(6181);
TurnInQuestUsingDB(6181);
Log("Taking Hogger");
AcceptQuestFrom(156561,176);  
CompleteObjectiveOfQuest(11,1)
TurnInQuestUsingDB(11);

TurnInQuestUsingDB(6281);


if HasPlayerFinishedQuest(6281)==true and CanTurnInQuest(6261)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check
TurnInQuestUsingDB(6261);
CompleteObjectiveOfQuest(176,1)
TurnInQuestUsingDB(176);

TurnInQuestUsingDB(6285);
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
TurnInQuestUsingDB(38);
CompleteObjectiveOfQuest(9,1)

TurnInQuestUsingDB(9);
CompleteObjectiveOfQuest(64,1)
TurnInQuestUsingDB(64);


CompleteObjectiveOfQuest(13,1)
CompleteObjectiveOfQuest(13,2)
CompleteObjectiveOfQuest(399,1)
CompleteObjectiveOfQuest(151,1)
TurnInQuestUsingDB(13);

TurnInQuestUsingDB(151);
CompleteObjectiveOfQuest(102,1)
GrindAreaUntilLevel(16)

TurnInQuestUsingDB(102);

TurnInQuestUsingDB(399);

if HasPlayerFinishedQuest(244)==false then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check

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


if (Player.Level <20) then 
Log("Grind to 20");

Grind = {};
Grind[1] = 154;
Grind[2] = 115;

Grind = CreateObjective("KillMobsAndLoot",1,10,1,999,TableToList(Grind));
GrindUntilLvl(20,Grind,true);
end;
AcceptQuestUsingDB(5);
TurnInQuestUsingDB(14);

Log("Going to SW");

TurnInQuestUsingDB(135);

if HasPlayerFinishedQuest(141)==false then   --- Objective if
  
      Log("Player needs training lvl 20!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check



Log("Going to Westfall");
TurnInQuestUsingDB(141);


CompleteObjectiveOfQuest(142,1)
TurnInQuestUsingDB(142);


Log("Going to Redridge");

TurnInQuestUsingDB(119);
TurnInQuestUsingDB(121);
TurnInQuestUsingDB(130);

AcceptQuestUsingDB(92);
AcceptQuestUsingDB(125);

AcceptQuestUsingDB(3741);
CompleteObjectiveOfQuest(3741,1)


CompleteObjectiveOfQuest(125,1)

TurnInQuestUsingDB(3741);
TurnInQuestUsingDB(125);
TurnInQuestUsingDB(143);
TurnInQuestUsingDB(144);
TurnInQuestUsingDB(131);
AcceptQuestUsingDB(122);
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

GrindAreaUntilLevel(21)
GrindAreaUntilLevel(21)
GrindAreaUntilLevel(21)



TurnInQuestUsingDB(92);
TurnInQuestUsingDB(122);

CompleteObjectiveOfQuest(246,1)
CompleteObjectiveOfQuest(246,2)

TurnInQuestUsingDB(246);

CompleteObjectiveOfQuest(124,1)
CompleteObjectiveOfQuest(124,2)

CompleteObjectiveOfQuest(89,1)
CompleteObjectiveOfQuest(89,2)



TurnInQuestUsingDB(89);
TurnInQuestUsingDB(124);
TurnInQuestUsingDB(145);
AcceptQuestUsingDB(144);
AcceptQuestUsingDB(164);
AcceptQuestUsingDB(245);
AcceptQuestUsingDB(5);
CompleteObjectiveOfQuest(245,1)
TurnInQuestUsingDB(165);
AcceptQuestUsingDB(148);

TurnInQuestUsingDB(164);
GrindAreaUntilLevel(22);
AcceptQuestUsingDB(226);

AcceptQuestFrom(311,95); 
TurnInQuestUsingDB(165);
AcceptQuestUsingDB(148);
CompleteObjectiveOfQuest(226,1)
CompleteObjectiveOfQuest(226,2)
TurnInQuestUsingDB(226);
TurnInQuestUsingDB(245);
TurnInQuestUsingDB(5);
TurnInQuestUsingDB(148);
TurnInQuestUsingDB(66);
TurnInQuestUsingDB(149);
TurnInQuestUsingDB(240);

AcceptQuestFrom(313,94); 
AcceptQuestUsingDB(20);
AcceptQuestUsingDB(150);
AcceptQuestUsingDB(127);
AcceptQuestUsingDB(91);
TurnInQuestUsingDB(146);
AcceptQuestUsingDB(128);
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
TurnInQuestUsingDB(150);
TurnInQuestUsingDB(127);
TurnInQuestUsingDB(20);
CompleteObjectiveOfQuest(34,1)
TurnInQuestUsingDB(34);
TurnInQuestAt(3643,67);  
TurnInQuestUsingDB(154);
TurnInQuestAt(267,68);  
AcceptQuestUsingDB(56);
CompleteObjectiveOfQuest(56,2)
CompleteObjectiveOfQuest(56,1)


GrindAreaUntilLevel(24)

TurnInQuestUsingDB(56);


TurnInQuestUsingDB(68);
TurnInQuestUsingDB(154);
TurnInQuestUsingDB(157);
TurnInQuestUsingDB(69);
if HasPlayerFinishedQuest(70)==false and CanTurnInQuest(70)==false then
Log("Lets go up");   --- Objective if
QuestGoToPoint(-9477.151,23.9494,56.33975);
SleepPlugin(1000);
SendKey(38,2000);
SleepPlugin(1000);
SendKey(37,500);
SleepPlugin(1000);
SendKey(38,1000);
SleepPlugin(1000);
SendKey(37,500);
SleepPlugin(1000);
SendKey(38,2000);
SleepPlugin(1000);

CompleteObjectiveOfQuest(70,1)
end;

if HasPlayerFinishedQuest(70)==false and CanTurnInQuest(70)==true then   --- Objective if
Log("Lets go down");   --- Objective if

QuestGoToPoint(-9471.4,23.45249,63.82101);
SleepPlugin(1000);
SendKey(37,500);
SleepPlugin(1000);
SendKey(38,2000);
SleepPlugin(1000);
SendKey(39,600);
SleepPlugin(1000);
SendKey(38,500);
SleepPlugin(1000);
SendKey(39,500);
SleepPlugin(1000);
SendKey(38,500);
SleepPlugin(2000);

end;
TurnInQuestUsingDB(70);


if HasPlayerFinishedQuest(72)==false then
Log("Stalvan");   --- Objective if
Stalvan();
end;

TurnInQuestUsingDB(74);

CompleteObjectiveOfQuest(75,1)
TurnInQuestUsingDB(75);

AcceptQuestUsingDB(343);

if HasPlayerFinishedQuest(343)==false then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end 
TurnInQuestUsingDB(343);
TurnInQuestUsingDB(344);


TurnInQuestUsingDB(345);
CompleteObjectiveOfQuest(347,1)

TurnInQuestUsingDB(347);
CompleteObjectiveOfQuest(57,1)
CompleteObjectiveOfQuest(57,2)
CompleteObjectiveOfQuest(101,1)
CompleteObjectiveOfQuest(101,2)
CompleteObjectiveOfQuest(101,3)

TurnInQuestUsingDB(78);
TurnInQuestUsingDB(158);



--CompleteObjectiveOfQuest(91,1)
--TurnInQuestAt(36,94);  
--TurnInQuestUsingDB(91);


Log("This is the end of Redridge questing profile");

StopQuestProfile();