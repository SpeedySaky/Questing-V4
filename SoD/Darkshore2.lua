StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)

function UsePhial()
    UseItem("Empty Sampling Tube");
     SleepPlugin(2000);
   
    end;
TurnInQuestUsingDB(952);
TurnInQuestUsingDB(4681);
if IsOnQuest(965) == false and HasPlayerFinishedQuest(965) == false then
    Log("Taking Tower of Althalaxx");	
  
        QuestGoToPoint(6441.234,363.9493,13.93966);    
		Sleep(500);
		SendKey(38, 100);
	  	 SleepPlugin(1000);
		 SendKey(37, 500);
		 SleepPlugin(1000);
		 SendKey(38, 1800);
		 SleepPlugin(1000);
		 SendKey(37, 500);
		 SleepPlugin(1000);
		 SendKey(38, 2000);
		 SleepPlugin(1000);
		 SendKey(37, 500);
		 SleepPlugin(1000);
		 SendKey(38, 2000);
		 SleepPlugin(1000);
		 SendKey(39, 500);
		 SleepPlugin(1000);
		 SendKey(38, 2000);
		 SleepPlugin(1000);
       end;
AcceptQuestFrom(3657,965);
if IsOnQuest(1001)==true and HasPlayerFinishedQuest(1001)== false then
QuestGoToPoint(6440.624,375.8457,23.32953);
	  	 SleepPlugin(1000);
		 SendKey(38, 300);
	  	 SleepPlugin(1000);

	  	 SendKey(37, 200);
	  	 SleepPlugin(1000);
		 SendKey(38, 1800);
		 SleepPlugin(1000);
		 SendKey(39, 400);
		SleepPlugin(1000);
		 SendKey(38, 1800);
		 SleepPlugin(1000);
		 SendKey(39, 500);
		SleepPlugin(1000);
		 SendKey(38, 3000);
		 SleepPlugin(1000);
end;

TurnInQuestAt(17183,1001);
AcceptQuestFrom(175233,4723);
TurnInQuestUsingDB(965);
if IsOnQuest(1002) == true and HasPlayerFinishedQuest(1002) == false then

Log("doing Moonstalkers");

Moonstalker = {};
Moonstalker[1] = 2069;
KillLootMoonstalker = CreateObjective("KillMobsAndLoot",1,6,1,1002,TableToList(Moonstalker));
MyInfo = DoObjective(KillLootMoonstalker);
end
TurnInQuestAt(17184,1002);

if IsOnQuest(4762) == true and HasPlayerFinishedQuest(4762) == false then
    Log("Doing Water Cascades");	

    
        QuestGoToPoint(7230.424,-353.1792,32.58273); 
        QuestGoToPoint(7232.16,-360.1862,32.63924); 
		Log("Jumping");	
		SendKey(38, 3000);
		Sleep(1500);
		Log("Get into position");	
		SendKey(39, 300);
		Sleep(1500);
		SendKey(38, 3000);
		Sleep(1500);
		Log("Use phial");	
		UsePhial()
		Sleep(1500);
		Log("Jumping");	
		SendKey(32, 1000);
		Sleep(1500);
		SendKey(39, 1200);
		Sleep(1500);
		Log("Swimming out 15s");	
		SendKey(38, 15000);
		Sleep(1500);
		Log("Swimming out 15s");	
		SendKey(38, 15000);
		Sleep(1500);
		Log("Turning");	
		SendKey(37, 500);
		Sleep(1500);
		Log("Exit water");	
		SendKey(37, 5000);
		Sleep(1500);

		
       end;
TurnInQuestAt(3649,4762);
TurnInQuestAt(10219,4723);
CompleteObjectiveOfQuest(963,1)
GrindAreaUntilLevel(16)


if IsOnQuest(1003) == true and HasPlayerFinishedQuest(1003) == false then

Log("doing bears");

bears = {};
bears[1] = 2165;
KillLootbears = CreateObjective("KillMobsAndLoot",1,4,1,1003,TableToList(bears));
MyInfo = DoObjective(KillLootbears);
end;
GrindAreaUntilLevel(16)

AcceptQuestFrom(176190,4722);
AcceptQuestFrom(175226,4728);
AcceptQuestFrom(175227,4730);

TurnInQuestUsingDB(1003);


StopQuestProfile();
