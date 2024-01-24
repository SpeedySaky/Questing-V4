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
TurnInQuestUsingDB(5541)
CompleteObjectiveOfQuest(313,1)

GrindAreaUntilLevel(8)
TurnInQuestUsingDB(313)

if HasPlayerFinishedQuest(317)==false and CanTurnInQuest(317)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end
TurnInQuestUsingDB(317)
AcceptQuestUsingDB(412);

TurnInQuestUsingDB(318)

AcceptQuestUsingDB(319);
CompleteObjectiveOfQuest(319,1)
CompleteObjectiveOfQuest(319,2)
CompleteObjectiveOfQuest(319,3)
TurnInQuestUsingDB(319)
CompleteObjectiveOfQuest(412,1)
CompleteObjectiveOfQuest(412,2)
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
TurnInQuestUsingDB(1879)

if HasPlayerFinishedQuest(1879)==true and IsOnQuest(2039)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end

if HasPlayerFinishedQuest(5637)==true and IsOnQuest(2039)==false then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end
if HasPlayerFinishedQuest(1679)==true and IsOnQuest(2039)==false then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end
if HasPlayerFinishedQuest(2239)==true and IsOnQuest(2039)==false then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end

if HasPlayerFinishedQuest(1679)==true and IsOnQuest(2039)==false then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end


AcceptQuestUsingDB(2039);

AcceptQuestUsingDB(224);
AcceptQuestUsingDB(267);
CompleteObjectiveOfQuest(224,1)
CompleteObjectiveOfQuest(224,2)
TurnInQuestUsingDB(224)
TurnInQuestUsingDB(414)
AcceptQuestUsingDB(418);
AcceptQuestUsingDB(416);
AcceptQuestUsingDB(1339);
TurnInQuestUsingDB(1339)
CompleteObjectiveOfQuest(418,1)
CompleteObjectiveOfQuest(418,2)
CompleteObjectiveOfQuest(418,3)
GrindAreaUntilLevel(13)

CompleteObjectiveOfQuest(416,1)

CompleteObjectiveOfQuest(267,1)
TurnInQuestUsingDB(267)
TurnInQuestUsingDB(418)    --- Objective if
 if HasPlayerFinishedQuest(416)==false  then   --- Objective if
 
Log("Turning!")
SleepPlugin(1000);
QuestGoToPoint(-5343.623,-2980.413,324.1577);
end
TurnInQuestUsingDB(416)

if (Player.Level <15) then 
Log("Grind to 15");

Grind = {};
Grind[1] = 1190;
Grind[2] = 1195;

Grind = CreateObjective("KillMobsAndLoot",1,10,1,999,TableToList(Grind));
GrindUntilLvl(15,Grind,true);
end;

if HasPlayerFinishedQuest(6387) == false and CanTurnInQuest(6387)==false then    
				Log("Taking Honor studens");	
      QuestGoToPoint(-5306.487,-3014.187,326.8584);    
	  	  	 SleepPlugin(1000);
      QuestGoToPoint(-5333.238,-3008.924,324.1583);    
      QuestGoToPoint(-5343.463,-3012.562,324.0692);    
	  	  	 SleepPlugin(1000);
		 Log("go straight");	
		 SendKey(38, 2000);
		 Log("turn left");	
	  	 SleepPlugin(1000);
		 SendKey(37, 500);
		 SleepPlugin(1000);
		 Log("go straight");	
		 SendKey(38, 700);
		 SleepPlugin(1000);
		 Log("turn right");			 
		 SendKey(39, 500);
		 SleepPlugin(1000);
		 Log("go straight");	
		 SendKey(38, 3000);
		 SleepPlugin(1000);
		 AcceptQuestUsingDB(6387);
		 AcceptQuestUsingDB(436);
end;

if HasPlayerFinishedQuest(6387) == false and CanTurnInQuest(6387)==true then    
			Log("Turning Honor studens");	
	        QuestGoToPoint(-5372.061,-3020.1,319.5656);   
			Log("go straight");	
			SendKey(38, 300);
			SleepPlugin(1000);			
			Log("turn right");			 
			SendKey(39, 500);
			SleepPlugin(1000);
			Log("go straight up");	
			SendKey(38, 1500);
			SleepPlugin(1000);
			Log("turn right");			 
			SendKey(39, 500);
			SleepPlugin(1000);
			Log("go straight up");	
			SendKey(38, 1500);
			SleepPlugin(1000);
			Log("turn right");			 
			SendKey(39, 500);
			SleepPlugin(1000);
			Log("go straight");	
			SendKey(38, 1200);
			SleepPlugin(1000);
			Log("go left");	
			SendKey(37, 550);
			SleepPlugin(1000);
			Log("go straight");	
			SendKey(38, 2000);
			SleepPlugin(1000);
end;

if (Player.Level <16) then 
Log("Grind to 16");

Grind = {};
Grind[1] = 1191;

Grind = CreateObjective("KillMobsAndLoot",1,10,1,999,TableToList(Grind));
GrindUntilLvl(16,Grind,true);
end;
TurnInQuestUsingDB(6391)
if HasPlayerFinishedQuest(6388)==false and IsOnQuest(6388)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end
TurnInQuestUsingDB(6388)

TurnInQuestUsingDB(6387)
TurnInQuestUsingDB(436)
TurnInQuestUsingDB(2039)
	 AcceptQuestUsingDB(298);
	 AcceptQuestUsingDB(385);
	 AcceptQuestUsingDB(257);
CompleteObjectiveOfQuest(257,1)
TurnInQuestUsingDB(257)


Log("Accepting  Protecting the Herd");
AcceptQuestFrom(1265,314);    --- Protecting the Herd


if (IsOnQuest(314) == true) and (CanTurnInQuest(314) == false)  then
    
		Log("Finding Vagash");	

        QuestGoToPoint(-5415.113,-1261.803,446.3562);   
		SleepPlugin(3000);
		Log("Doing Protecting the Herd");
Vagash = {}; 
Vagash[1] = 1388; 
KillLootVagash = CreateObjective("KillMobsAndLoot",1,1,1,314,TableToList(Vagash));
MyInfo = DoObjective(KillLootVagash);
end;


Log("Turning Protecting the Herd");
if (IsOnQuest(314) == true) and (CanTurnInQuest(314) == true)  then
    
		Log("Turning Vagash");	

     TurnInQuestAt(1265,314);    --- Protecting the Herd

end;

TurnInQuestUsingDB(314)
if (HasPlayerFinishedQuest(312)== false) then 
Log("Accepting Tundra MacGrann's Stolen Stash");

QuestGoToPoint(-5572.105,97.64532,483.8041);
end;
AcceptQuestFrom(1266,312);

Log("Getting meat for McGrann");

Meat = {};
Meat[1] = 272;
CollectMeat = CreateObjective("GatherObject",1,1,1,312,nil,TableToList(Meat));
MyInfo = DoObjective(CollectMeat);


Log("Turning Tundra MacGrann's Stolen Stash");
TurnInQuestAt(1266,312);
TurnInQuestUsingDB(6392)
TurnInQuestUsingDB(298)
CompleteObjectiveOfQuest(307,1)
TurnInQuestUsingDB(307)
	 AcceptQuestUsingDB(237);
CompleteObjectiveOfQuest(237,1)
CompleteObjectiveOfQuest(237,2)
TurnInQuestUsingDB(237)
AcceptQuestUsingDB(263);
CompleteObjectiveOfQuest(263,1)
CompleteObjectiveOfQuest(263,2)
TurnInQuestUsingDB(263)
AcceptQuestUsingDB(217);

AcceptQuestUsingDB(250);
if HasPlayerFinishedQuest(250)== false and CanTurnInQuest(250)==false then 
Log("Going for Barrel");

QuestGoToPoint(-4728.51,-3541.705,303.64);
SleepPlugin(1000);
InteractBarrel();

end;



GrindAreaUntilLevel(18)
TurnInQuestUsingDB(301)

if HasPlayerFinishedQuest(302)==false and IsOnQuest(302)==true then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end
TurnInQuestUsingDB(302)
TurnInQuestUsingDB(273)
TurnInQuestUsingDB(454)

TurnInQuestUsingDB(199)
CompleteObjectiveOfQuest(385,1)
CompleteObjectiveOfQuest(385,2)
CompleteObjectiveOfQuest(2038,1)
CompleteObjectiveOfQuest(2038,2)
CompleteObjectiveOfQuest(2038,3)
CompleteObjectiveOfQuest(2038,4)
TurnInQuestUsingDB(2038)
GrindAreaUntilLevel(19)
TurnInQuestUsingDB(385)
AcceptQuestUsingDB(257);
CompleteObjectiveOfQuest(257,1)
TurnInQuestUsingDB(257)
AcceptQuestUsingDB(258);
CompleteObjectiveOfQuest(258,1)
TurnInQuestUsingDB(258)
CompleteObjectiveOfQuest(297,1)
TurnInQuestUsingDB(297)
 if HasPlayerFinishedQuest(468)==false  then   --- Objective if
 
Log("Getting quest!")
SleepPlugin(1000);
QuestGoToPoint(-5343.623,-2980.413,324.1577);
end
AcceptQuestUsingDB(468);

TurnInQuestUsingDB(468)

CompleteObjectiveOfQuest(455,1)
CompleteObjectiveOfQuest(455,2)

AcceptQuestUsingDB(469);
TurnInQuestUsingDB(161)
TurnInQuestUsingDB(274)
TurnInQuestUsingDB(455)
TurnInQuestUsingDB(484)
TurnInQuestUsingDB(469)


StopQuestProfile();
