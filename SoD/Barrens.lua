StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();

function Wanted()
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "WANTED" then
          Log("Found WANTED");
         InteractWithObject(Object);
		 SleepPlugin(3000);
      end; -- IF
   end; -- For Each
end;
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
CompleteObjectiveOfQuest(871,1)
CompleteObjectiveOfQuest(871,2)
CompleteObjectiveOfQuest(871,3)
GrindAreaUntilLevel(14)
TurnInQuestUsingDB(6384);
if HasPlayerFinishedQuest(6385)==false then   --- Objective if
  
      Log("Player needs training lvl 20!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check

TurnInQuestUsingDB(6385);
TurnInQuestUsingDB(6386);
TurnInQuestUsingDB(871);
AcceptQuestUsingDB(872);
AcceptQuestUsingDB(899);
AcceptQuestUsingDB(4921);
CompleteObjectiveOfQuest(845,1)
TurnInQuestUsingDB(1492);
TurnInQuestUsingDB(845);
CompleteObjectiveOfQuest(848,1)
if HasPlayerFinishedQuest(870)==false then
Log("The Forgotten Pools");
QuestGoToPoint(93.58234,-1943.214,88.14198);
end;

Log("Turn Fungal Spores");
TurnInQuestAt(3390,848);

Log("Turn The Forgotten Pools");
TurnInQuestAt(3448,870);

CompleteObjectiveOfQuest(903,1)
TurnInQuestUsingDB(903);
CompleteObjectiveOfQuest(5041,1)
CompleteObjectiveOfQuest(872,1)
CompleteObjectiveOfQuest(872,2)
TurnInQuestUsingDB(5041);
CompleteObjectiveOfQuest(867,1)
TurnInQuestUsingDB(867);
AcceptQuestUsingDB(855);
CompleteObjectiveOfQuest(855,1)
GrindAreaUntilLevel(16)
TurnInQuestUsingDB(855);

CompleteObjectiveOfQuest(872,3)
TurnInQuestUsingDB(872);

AcceptQuestUsingDB(1061);

if HasPlayerFinishedQuest(1061)==false then
 Log("Player needs training lvl 16!")
      TrainAtNearestClassTrainer();

end;

TurnInQuestUsingDB(1061);
AcceptQuestUsingDB(881);

if HasPlayerFinishedQuest(881)==false and HasItem("Echeyakee's Hide")==false  then
Log("Going to Echeyakee");
QuestGoToPoint(432.3051,-3046.973,92.07537);
SleepPlugin(1000);
UseItem("Horn of Echeyakee");
SleepPlugin(3000);
end;

if HasPlayerFinishedQuest(881)==false and HasItem("Echeyakee's Hide")==false then

Log("Killing Echayakee");

Echayakee = {};
Echayakee[1] = 3475;
KillLootEchayakee = CreateObjective("KillMobsAndLoot",1,1,1,881,TableToList(Echayakee));
MyInfo = DoObjective(KillLootEchayakee);
end;

Log("Turn Echayakee");
TurnInQuestAt(3338,881);

function Fissure()
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "Bubbling Fissure" then
          Log("Found Bubbling Fissure");
         InteractWithObject(Object);
		 SleepPlugin(3000);
      end; -- IF
   end; -- For Each
end;

if HasPlayerFinishedQuest(877)== false then
Log("Doing The Stagnant Oasis");
QuestGoToPoint(-1274.122,-3010.971,71.7179);
SleepPlugin(2000);
Fissure();
SleepPlugin(8000);
end;

Log("Turn The Stagnant Oasis");
TurnInQuestAt(3448,877);

AcceptQuestUsingDB(865);
AcceptQuestUsingDB(887);

AcceptQuestFrom(3442,894);

if IsOnQuest(895)==false and HasPlayerFinishedQuest(895)==false then
Log("Take WANTED: Baron Longshore");
QuestGoToPoint(-923.6127,-3720.682,9.170465);
Wanted();
SleepPlugin(2000);
end;
AcceptQuestUsingDB(1069);
AcceptQuestUsingDB(891);
CompleteObjectiveOfQuest(887,1)
CompleteObjectiveOfQuest(887,2)
TurnInQuestUsingDB(887);
TurnInQuestUsingDB(890);
TurnInQuestUsingDB(892);
CompleteObjectiveOfQuest(880,1)
CompleteObjectiveOfQuest(875,1)
TurnInQuestUsingDB(880);
TurnInQuestUsingDB(875);
GrindAreaUntilLevel(17)
AcceptQuestUsingDB(6541);
TurnInQuestUsingDB(6541);
CompleteObjectiveOfQuest(888,1)
CompleteObjectiveOfQuest(888,2)
TurnInQuestUsingDB(888);

Log("Doing WANTED: Baron Longshore");

Baron = {};
Baron[1] = 3467;
KillLootBaron = CreateObjective("KillMobsAndLoot",1,1,1,895,TableToList(Baron));


MyInfo = DoObjective(KillLootBaron);

TurnInQuestAt(3391,895);

CompleteObjectiveOfQuest(865,1)
CompleteObjectiveOfQuest(3281,1)
TurnInQuestUsingDB(865);
TurnInQuestUsingDB(3281);

CompleteObjectiveOfQuest(896,1)
GrindAreaUntilLevel(18)

TurnInQuestUsingDB(896);
TurnInQuestUsingDB(3281);



TurnInQuestAt(4141,894);
Log("Doing Samophlange1");

Fuel = {};
Fuel[1] = 4072;
CollectFuel = CreateObjective("GatherObject",1,1,3,900,nil,TableToList(Fuel));
MyInfo = DoObjective(CollectFuel);

Main = {};
Main[1] = 61936;
CollectMain = CreateObjective("GatherObject",2,1,3,900,nil,TableToList(Main));
MyInfo = DoObjective(CollectMain);

Regulator = {};
Regulator[1] = 61935;
CollectRegulator = CreateObjective("GatherObject",3,1,3,900,nil,TableToList(Regulator));
MyInfo = DoObjective(CollectRegulator);

TurnInQuestAt(4141,900);
Log("Doing Samophlange3");

Key = {};
Key[1] = 3471;
KillLootKey = CreateObjective("KillMobsAndLoot",1,1,1,901,TableToList(Key));
MyInfo = DoObjective(KillLootKey);
TurnInQuestAt(4141,901);
TurnInQuestAt(3442,902);
CompleteObjectiveOfQuest(850,1)
TurnInQuestUsingDB(850);
TurnInQuestUsingDB(3921);
CompleteObjectiveOfQuest(3922,1)
TurnInQuestUsingDB(3922);



function Yellow()
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "Yellow Raptor Nest" then
          Log("Found Yellow Raptor Nest");
         InteractWithObject(Object);
		 SleepPlugin(3000);
      end; -- IF
   end; -- For Each
end;

function Red()
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "Red Raptor Nest" then
          Log("Found Red Raptor Nest");
         InteractWithObject(Object);
		 SleepPlugin(3000);
      end; -- IF
   end; -- For Each
end;

function Blue()
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "Blue Raptor Nest" then
          Log("Found Blue Raptor Nest");
         InteractWithObject(Object);
		 SleepPlugin(3000);
      end; -- IF
   end; -- For Each
end;

if CanTurnInQuest(905)==false and HasPlayerFinishedQuest(905)==false then

Log("Doing The Angry Scytheclaws");

Log("Getting Blue");
QuestGoToPoint(-1505.228,-2706.944,92.830544);
Blue();
SleepPlugin(5000);
Blue = {};
Blue[1] = 6907;
CollectBlue = CreateObjective("GatherObject",1,1,3,905,nil,TableToList(Blue));
MyInfo = DoObjective(CollectBlue);

Log("Getting Yellow");
QuestGoToPoint(-1513.109,-2638.047,91.84564);
Yellow();
SleepPlugin(5000);
Yellow = {};
Yellow[1] = 6908;
CollectYellow = CreateObjective("GatherObject",2,1,3,905,nil,TableToList(Yellow));
MyInfo = DoObjective(CollectYellow);

Log("Getting Red");
QuestGoToPoint(-1533.395,-2687.135,91.50989);
Red();
SleepPlugin(5000);
Red = {};
Red[1] = 6906;
CollectRed = CreateObjective("GatherObject",3,1,3,905,nil,TableToList(Red));
MyInfo = DoObjective(CollectRed);

end;
TurnInQuestUsingDB(905);


function Wife() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Beaten Corpse") and (IsUnitValid(Unit)== true) then
         Log("Found Wife");         
         InteractWithUnit(Unit);
		 SleepPlugin(2000);
		 UseMacro("Gossip1")
		 SleepPlugin(2000);
      end; -- IF
   end; -- For Each
end;
if CanTurnInQuest(4921)==false and HasPlayerFinishedQuest(4921)==false then
QuestGoToPoint(-1790.527,-2375.617,91.67355);
		 SleepPlugin(5000);
		 Wife();
end;

TurnInQuestUsingDB(3261);
CompleteObjectiveOfQuest(899,1)

if IsOnQuest(882)==true and HasItem("Fresh Zhevra Carcass")==false and CanTurnInQuest(882)==false then 

Log("Getting Fresh Zhevra Carcass");

Carcass = CreateObjective("KillMobsAndLoot",1,1,882,1,TableToList{3426,3242});
KillMobsUntilItem("Fresh Zhevra Carcass",Carcass,1);
end;
if IsOnQuest(882)==true and HasItem("Fresh Zhevra Carcass")==true and CanTurnInQuest(882)==false then 
Log("Doing Fresh Zhevra Carcass");

QuestGoToPoint(-432.0163,-3435.21,91.75598);
SleepPlugin();
UseItem("Fresh Zhevra Carcass");
SleepPlugin(5000);
end;

Log("Doing Ishamuhale");

Ishamuhale = {};
Ishamuhale[1] = 3257;
KillLootIshamuhale = CreateObjective("KillMobsAndLoot",1,1,1,882,TableToList(Ishamuhale));
MyInfo = DoObjective(KillLootIshamuhale);


TurnInQuestUsingDB(4921);
TurnInQuestUsingDB(899);
if HasPlayerFinishedQuest(899)==true then
Log("Deleting old quests");
UseMacro("AbandonQuests");
end;






Log("This is the end of Barrens questing profile");

StopQuestProfile();

