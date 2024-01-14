	Author = "SpeedySaky";
	

	--Varibales--
	Player = GetPlayer();
	Log("Player Name: " .. Player.Name)
	Log("Player Level: " .. Player.Level)
	Log("Player Class: " .. Player.Class)
	Log("Player Race: " .. Player.Race)
	
	-- Date Checker
-- Calculate the expiration date as October 25th of the current year


StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();





	Durotar3 = CreateObjective("KillMobsAndLoot",1,1,1,999,TableToList{3098});
	Durotar6 = CreateObjective("KillMobsAndLoot",1,1,1,998,TableToList{10685,3101,3102}); 
	Durotar9 = CreateObjective("KillMobsAndLoot",1,1,1,998,TableToList{3099});
	Durotar12 = CreateObjective("KillMobsAndLoot",1,1,1,998,TableToList{3100});
	Durotar16 = CreateObjective("KillMobsAndLoot",1,1,1,998,TableToList{3242,3246});
	Durotar18 = CreateObjective("KillMobsAndLoot",1,1,1,998,TableToList{3234,3248});
	Durotar21 = CreateObjective("KillMobsAndLoot",1,1,1,998,TableToList{3426,3463});
	Durotar25 = CreateObjective("KillMobsAndLoot",1,1,1,998,TableToList{3236,3466});



if(Player.Level < 3) then
		
		--Startup(x2,y2,z2,npc);
		Log("Grinding to 3..");
		GrindUntilLvl(3,Durotar3,true,true);
	end
if(Player.Level < 6) then
		
		--Startup(x2,y2,z2,npc);
		Log("Grinding to 6..");
		GrindUntilLvl(6,Durotar6,true,true);
	end
if(Player.Level < 9) then
		
		--Startup(x2,y2,z2,npc);
		Log("Grinding to 9..");
		GrindUntilLvl(9,Durotar9,true,true);
	end
if(Player.Level < 12) then
		
		--Startup(x2,y2,z2,npc);
		Log("Grinding to 12..");
		GrindUntilLvl(12,Durotar12,true,true);
	end
if(Player.Level < 16) then
		
		--Startup(x2,y2,z2,npc);
		Log("Grinding to 16..");
		GrindUntilLvl(16,Durotar16,true,true);
	end
	if(Player.Level < 18) then
		
		--Startup(x2,y2,z2,npc);
		Log("Grinding to 18..");
		GrindUntilLvl(18,Durotar18,true,true);
	end
	if(Player.Level < 21) then
		
		--Startup(x2,y2,z2,npc);
		Log("Grinding to 21..");
		GrindUntilLvl(21,Durotar21,true,true);
	end
	if(Player.Level < 25) then
		
		--Startup(x2,y2,z2,npc);
		Log("Grinding to 25..");
		GrindUntilLvl(25,Durotar25,true,true);
	end
	hing to do");
	StopQuestProfile();

