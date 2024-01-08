StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)

 AddNameToAvoidWhiteList("Moonwell");
 AddNameToAvoidWhiteList("Rascal Sprite");
 AddNameToAvoidWhiteList("Shadow Sprite");
 AddNameToAvoidWhiteList("Vicious Grell");
function UsePhial()
    UseItem("Crystal Phial");
     SleepPlugin(500);
   
    end;
function UsePhial2()
    UseItem("Jade Phial");
     SleepPlugin(500);
   
end;
function UsePhial3()
    UseItem("Tourmaline Phial");
     SleepPlugin(500);
   
end;
function UsePhial4()
    UseItem("Amethyst Phial");
     SleepPlugin(500);
   
end;
function UseSacrifice()
    UseItem("Sathrah's Sacrifice");
     SleepPlugin(1000);
end;
--This profile was auto-generated using MrFade's massive brain power.
---- Step Count [15] ----
AcceptQuestUsingDB(456);
---------Step end-----------

---- Step Count [20] ----
CompleteObjectiveOfQuest(456,1)
CompleteObjectiveOfQuest(456,2)
---------Step end-----------

---- Step Count [29] ----
GrindAreaUntilLevel(2)
---------Step end-----------

---- Step Count [31] ----
AcceptQuestUsingDB(4495);
AcceptQuestUsingDB(458);
---------Step end-----------

---- Step Count [39] ----
GrindAreaUntilLevel(4)
---------Step end-----------

---- Step Count [44] ----
GrindAreaUntilLevel(4)
---------Step end-----------

---- Step Count [49] ----
TurnInQuestUsingDB(4495);
AcceptQuestUsingDB(3519);
---------Step end-----------

---- Step Count [55] ----
GrindAreaUntilLevel(3)
---------Step end-----------

---- Step Count [62] ----
TurnInQuestUsingDB(458);
AcceptQuestUsingDB(459);
---------Step end-----------

---- Step Count [68] ----
TurnInQuestUsingDB(456);
TurnInQuestUsingDB(456);
AcceptQuestUsingDB(457);
AcceptQuestUsingDB(3116);
AcceptQuestUsingDB(3117);
AcceptQuestUsingDB(3118);
AcceptQuestUsingDB(3119);
AcceptQuestUsingDB(3120);
---------Step end-----------

---- Step Count [81] ----
TurnInQuestUsingDB(3119);
AcceptQuestUsingDB(77574);
---------Step end-----------

---- Step Count [89] ----
CompleteObjectiveOfQuest(457,1)
CompleteObjectiveOfQuest(457,2)
---------Step end-----------

---- Step Count [109] ----
CompleteObjectiveOfQuest(77574,1)
---------Step end-----------

---- Step Count [116] ----
TurnInQuestUsingDB(456);
AcceptQuestUsingDB(457);
AcceptQuestUsingDB(3118);
---------Step end-----------

---- Step Count [124] ----
TurnInQuestUsingDB(3118);
AcceptQuestUsingDB(77573);
---------Step end-----------

---- Step Count [147] ----
TurnInQuestUsingDB(77573);
---------Step end-----------

---- Step Count [165] ----
TurnInQuestUsingDB(3116);
---------Step end-----------

---- Step Count [172] ----
TurnInQuestUsingDB(3116);
AcceptQuestUsingDB(77575);
---------Step end-----------

---- Step Count [187] ----
CompleteObjectiveOfQuest(457,1)
CompleteObjectiveOfQuest(457,2)
---------Step end-----------

---- Step Count [194] ----
GrindAreaUntilLevel(3)
---------Step end-----------

---- Step Count [201] ----
TurnInQuestUsingDB(4495);
AcceptQuestUsingDB(3519);
---------Step end-----------

---- Step Count [210] ----
TurnInQuestUsingDB(458);
AcceptQuestUsingDB(459);
---------Step end-----------

---- Step Count [216] ----
TurnInQuestUsingDB(457);
---------Step end-----------

---- Step Count [221] ----
TurnInQuestUsingDB(3519);
AcceptQuestUsingDB(3521);
---------Step end-----------

---- Step Count [255] ----
AcceptQuestUsingDB(916);
---------Step end-----------

---- Step Count [260] ----
GrindAreaUntilLevel(4)
---------Step end-----------

---- Step Count [263] ----
TurnInQuestUsingDB(3120);
AcceptQuestUsingDB(77571);
GrindAreaUntilLevel(4)
---------Step end-----------

---- Step Count [274] ----
GrindAreaUntilLevel(4)
---------Step end-----------

---- Step Count [277] ----
TurnInQuestUsingDB(3117);
---------Step end-----------

---- Step Count [286] ----
CompleteObjectiveOfQuest(3521,2)
---------Step end-----------

---- Step Count [340] ----
CompleteObjectiveOfQuest(77571,1)
---------Step end-----------

---- Step Count [348] ----
CompleteObjectiveOfQuest(3521,1)
CompleteObjectiveOfQuest(459,1)
---------Step end-----------

---- Step Count [357] ----
CompleteObjectiveOfQuest(3521,3)
CompleteObjectiveOfQuest(916,1)
---------Step end-----------

---- Step Count [375] ----
CompleteObjectiveOfQuest(3521,1)
CompleteObjectiveOfQuest(459,1)
---------Step end-----------

---- Step Count [384] ----
TurnInQuestUsingDB(459);
---------Step end-----------

---- Step Count [389] ----
TurnInQuestUsingDB(3521);
AcceptQuestUsingDB(3522);
---------Step end-----------

---- Step Count [408] ----
TurnInQuestUsingDB(77575);
---------Step end-----------

---- Step Count [422] ----
TurnInQuestUsingDB(3119);
---------Step end-----------

---- Step Count [429] ----
TurnInQuestUsingDB(916);
AcceptQuestUsingDB(917);
---------Step end-----------

---- Step Count [435] ----
TurnInQuestUsingDB(3117);
AcceptQuestUsingDB(77568);
TurnInQuestUsingDB(77568);
---------Step end-----------

---- Step Count [447] ----
TurnInQuestUsingDB(3120);
---------Step end-----------

---- Step Count [456] ----
TurnInQuestUsingDB(3120);
AcceptQuestUsingDB(77571);
---------Step end-----------

---- Step Count [466] ----
TurnInQuestUsingDB(3522);
---------Step end-----------

---- Step Count [474] ----
CompleteObjectiveOfQuest(917,1)
---------Step end-----------

---- Step Count [489] ----
TurnInQuestUsingDB(917);
AcceptQuestUsingDB(920);
---------Step end-----------

---- Step Count [495] ----
TurnInQuestUsingDB(920);
AcceptQuestUsingDB(921);
---------Step end-----------
if (IsOnQuest(921) == true) and (CanTurnInQuest(921) == false) then
    
    
        QuestGoToPoint(10711.25,761.3188,1321.302);    
		UsePhial()
		Sleep(500);
       
end;
---- Step Count [503] ----
CompleteObjectiveOfQuest(921,1)
---------Step end-----------

---- Step Count [509] ----
CompleteObjectiveOfQuest(457,1)
CompleteObjectiveOfQuest(457,2)
---------Step end-----------

---- Step Count [521] ----
TurnInQuestUsingDB(457);
---------Step end-----------

---- Step Count [527] ----
AcceptQuestUsingDB(5622);
---------Step end-----------

---- Step Count [533] ----
TurnInQuestUsingDB(921);
AcceptQuestUsingDB(928);
---------Step end-----------

---- Step Count [542] ----
AcceptQuestUsingDB(2159);
---------Step end-----------

---- Step Count [557] ----
AcceptQuestUsingDB(488);
---------Step end-----------

---- Step Count [578] ----
Fang = {};
Fang[1] = 2042;

Feather = {};
Feather[1] = 1995;

Silk = {};
Silk[1] = 1998;

KillLootFang = CreateObjective("KillMobsAndLoot",1,3,3,488,TableToList(Fang));
MyInfo = DoObjective(KillLootFang);

KillLootFeather = CreateObjective("KillMobsAndLoot",2,3,3,488,TableToList(Feather));
MyInfo = DoObjective(KillLootFeather);

KillLootSilk = CreateObjective("KillMobsAndLoot",3,3,3,488,TableToList(Silk));
MyInfo = DoObjective(KillLootSilk);

---------Step end-----------

---- Step Count [598] ----
AcceptQuestUsingDB(997);
---------Step end-----------

---- Step Count [603] ----
AcceptQuestUsingDB(475);
---------Step end-----------

---- Step Count [608] ----
TurnInQuestUsingDB(5622);
AcceptQuestUsingDB(5621);
---------Step end-----------

---- Step Count [620] ----
AcceptQuestUsingDB(932);
AcceptQuestUsingDB(2438);
---------Step end-----------

---- Step Count [627] ----
AcceptQuestUsingDB(932);
AcceptQuestUsingDB(2438);
---------Step end-----------

---- Step Count [706] ----
TurnInQuestUsingDB(2159);
TurnInQuestUsingDB(2159);
---------Step end-----------

---- Step Count [723] ----
TurnInQuestUsingDB(928);
AcceptQuestUsingDB(929);
---------Step end-----------

---- Step Count [740] ----
CompleteObjectiveOfQuest(5621,1)
---------Step end-----------

---- Step Count [746] ----
TurnInQuestUsingDB(997);
AcceptQuestUsingDB(918);
AcceptQuestUsingDB(919);
---------Step end-----------

---- Step Count [762] ----
CompleteObjectiveOfQuest(918,1)
CompleteObjectiveOfQuest(919,1)
---------Step end-----------

---- Step Count [789] ----
CompleteObjectiveOfQuest(918,1)
CompleteObjectiveOfQuest(919,1)
---------Step end-----------

---- Step Count [812] ----
TurnInQuestUsingDB(918);
AcceptQuestUsingDB(922);
TurnInQuestUsingDB(919);
---------Step end-----------

---- Step Count [822] ----
CompleteObjectiveOfQuest(2438,1)
---------Step end-----------
if (IsOnQuest(475) == true) and (CanTurnInQuest(475) == true)  then    
				Log("Doing A Troubling Breeze");	
      QuestGoToPoint(9823.377,434.2727,1307.794);    
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
---- Step Count [826] ----
TurnInQuestUsingDB(475);AcceptQuestUsingDB(476);
---------Step end-----------

if (IsOnQuest(929) == true) and (CanTurnInQuest(929) == false)  then
------------------------------------------
    
				Log("Doing Phial part 2");	

        QuestGoToPoint(9859.428,589.2924,1300.6);    
		UsePhial2();
       
    
end;
---- Step Count [832] ----
---------Step end-----------

---- Step Count [853] ----
CompleteObjectiveOfQuest(488,1)
CompleteObjectiveOfQuest(488,2)
CompleteObjectiveOfQuest(488,3)
---------Step end-----------

---- Step Count [891] ----
GrindAreaUntilLevel(7)
---------Step end-----------

---- Step Count [895] ----
GrindAreaUntilLevel(7)
---------Step end-----------

---- Step Count [899] ----
TurnInQuestUsingDB(488);
---------Step end-----------

---- Step Count [904] ----
AcceptQuestUsingDB(489);
---------Step end-----------

---- Step Count [909] ----
TurnInQuestUsingDB(476);
---------Step end-----------

---- Step Count [914] ----
TurnInQuestUsingDB(5621);
---------Step end-----------

---- Step Count [920] ----
TurnInQuestUsingDB(2438);
AcceptQuestUsingDB(2459);
---------Step end-----------

---- Step Count [1002] ----
TurnInQuestUsingDB(929);
AcceptQuestUsingDB(933);
---------Step end-----------

---- Step Count [1013] ----
CompleteObjectiveOfQuest(489,1)
---------Step end-----------

---- Step Count [1018] ----
CompleteObjectiveOfQuest(2459,1)
---------Step end-----------

---- Step Count [1024] ----
if (IsOnQuest(2459) == true) and (CanTurnInQuest(2459) == false)  then

Ferocitas = {};
Ferocitas[1] = 7234;

FerocitasKill  = CreateObjective("KillMobsAndLoot",2,1,2,2459,TableToList(Ferocitas));
DoObjective(FerocitasKill);
SleepPlugin(5000);

end;
---------Step end-----------

---- Step Count [1030] ----
---------Step end-----------

---- Step Count [1038] ----
CompleteObjectiveOfQuest(489,1)
---------Step end-----------

---- Step Count [1047] ----
TurnInQuestUsingDB(489);
---------Step end-----------

---- Step Count [1065] ----

if (IsOnQuest(932) == true) and (CanTurnInQuest(932) == false) then
    
		Melenas = {};
Melenas[1] = 2038;

MelenasKill  = CreateObjective("KillMobsAndLoot",1,1,1,932,TableToList(Melenas));
DoObjective(MelenasKill);
		         
end;---------Step end-----------

if (IsOnQuest(933) == true) and (CanTurnInQuest(933) == false)  then
    
    				Log("Doing Phial part 3");	

  QuestGoToPoint(9553.602,1655.84,1299.343);    
	UsePhial3();
   

end;

---- Step Count [1136] ----
---------Step end-----------

---- Step Count [1141] ----
---------Step end-----------

---- Step Count [1150] ----
---------Step end-----------

---- Step Count [1158] ----
---------Step end-----------
AcceptQuestFrom(6751,930);    --- Gnarlpine Corruption

---- Step Count [1182] ----
TurnInQuestUsingDB(933);
AcceptQuestUsingDB(7383);
---------Step end-----------

---- Step Count [1189] ----
---------Step end-----------

---- Step Count [1202] ----
TurnInQuestUsingDB(932);
TurnInQuestUsingDB(2459);
---------Step end-----------

---- Step Count [1209] ----
TurnInQuestUsingDB(932);
TurnInQuestUsingDB(2459);
---------Step end-----------

---- Step Count [1216] ----
AcceptQuestUsingDB(487);
---------Step end-----------
GrindAreaUntilLevel(10)

---- Step Count [1235] ----
Ambusher = {};
Ambusher[1] = 2152;

AmbusherKill  = CreateObjective("KillMobsAndLoot",1,6,1,487,TableToList(Ambusher));
DoObjective(AmbusherKill);---------Step end-----------

---- Step Count [1266] ----
TurnInQuestUsingDB(487);
---------Step end-----------

---- Step Count [1277] ----
AcceptQuestUsingDB(937);

if (IsOnQuest(7383) == true) and (CanTurnInQuest(7383) == false)  then
  QuestGoToPoint(10675.87,1857.784,1324.197);    
  Log("Attempting Crown of the Earth3");
	UsePhial4();   
end;
---------Step end-----------

---- Step Count [1283] ----
---------Step end-----------
GrindAreaUntilLevel(11)

---- Step Count [1301] ----
CompleteObjectiveOfQuest(937,1)
---------Step end-----------

---- Step Count [1314] ----
AcceptQuestFrom(6752,931);    --- Gnarlpine Corruption
---------Step end-----------

---- Step Count [1354] ----
AcceptQuestUsingDB(938);
---------Step end-----------

---- Step Count [1363] ----
GrindAreaUntilLevel(10)
---------Step end-----------

---- Step Count [1369] ----
GrindAreaUntilLevel(10)
---------Step end-----------

---- Step Count [1375] ----
TurnInQuestUsingDB(938);
---------Step end-----------

---- Step Count [1383] ----
TurnInQuestUsingDB(937);
AcceptQuestUsingDB(940);
---------Step end-----------

---- Step Count [1392] ----
AcceptQuestUsingDB(938);
---------Step end-----------

---- Step Count [1400] ----
TurnInQuestUsingDB(937);
AcceptQuestUsingDB(940);
TurnInQuestUsingDB(938);
---------Step end-----------

---- Step Count [1408] ----
GrindAreaUntilLevel(10)
GrindAreaUntilLevel(10)
---------Step end-----------

---- Step Count [1413] ----
GrindAreaUntilLevel(10)
GrindAreaUntilLevel(10)
---------Step end-----------

---- Step Count [1454] ----
GrindAreaUntilLevel(10)
---------Step end-----------

---- Step Count [1461] ----
GrindAreaUntilLevel(10)
---------Step end-----------

---- Step Count [1488] ----
TurnInQuestUsingDB(922);
AcceptQuestUsingDB(923);
---------Step end-----------

---- Step Count [1495] ----
TurnInQuestUsingDB(940);
---------Step end-----------

---- Step Count [1502] ----
---------Step end-----------

---- Step Count [1508] ----
AcceptQuestUsingDB(2518);
---------Step end-----------



---- Step Count [1596] ----
TurnInQuestUsingDB(7383);
AcceptQuestUsingDB(935);
---------Step end-----------

---- Step Count [1603] ----
TurnInQuestAt(2080,931);    --- Crown of the Earth
TurnInQuestAt(2080,930);    --- Crown of the Earth
---------Step end-----------




CompleteObjectiveOfQuest(2518,1)
CompleteObjectiveOfQuest(923,1)


if HasPlayerFinishedQuest(483)==false then
Log("Doing  The Relics of Wakening");

Claw = {};
Claw[1] = 2740;
CollectClaw = CreateObjective("GatherObject",1,1,4,483,nil,TableToList(Claw));
MyInfo = DoObjective(CollectClaw);

Quill = {};
Quill[1] = 2739;
CollectQuill = CreateObjective("GatherObject",2,1,4,483,nil,TableToList(Quill));
MyInfo = DoObjective(CollectQuill);

Sky = {};
Sky[1] = 2741;
CollectSky = CreateObjective("GatherObject",3,1,4,483,nil,TableToList(Sky));
MyInfo = DoObjective(CollectSky);

Nesting = {};
Nesting[1] = 2742;
CollectNesting = CreateObjective("GatherObject",4,1,4,483,nil,TableToList(Nesting));
MyInfo = DoObjective(CollectNesting);


end;
---- Step Count [1610] ----
---------Step end-----------
TurnInQuestUsingDB(483);

---- Step Count [1617] ----

---- Step Count [1757] ----
TurnInQuestUsingDB(922);
AcceptQuestUsingDB(923);
---------Step end-----------

---- Step Count [1763] ----
TurnInQuestUsingDB(935);
TurnInQuestUsingDB(940);
AcceptQuestUsingDB(952);
---------Step end-----------

---- Step Count [1770] ----
---------Step end-----------
TurnInQuestUsingDB(923);

---- Step Count [1777] ----
AcceptQuestUsingDB(2518);
---------Step end-----------

---- Step Count [1793] ----
---------Step end-----------

---- Step Count [1803] ----
CompleteObjectiveOfQuest(2518,1)
---------Step end-----------

---- Step Count [1814] ----
---------Step end-----------

---- Step Count [1822] ----
AcceptQuestUsingDB(937);
---------Step end-----------

---- Step Count [1829] ----
CompleteObjectiveOfQuest(937,1)
---------Step end-----------

---- Step Count [1844] ----
AcceptQuestUsingDB(938);
---------Step end-----------

---- Step Count [1852] ----
TurnInQuestUsingDB(938);
---------Step end-----------

---- Step Count [1859] ----
TurnInQuestUsingDB(937);
AcceptQuestUsingDB(940);
---------Step end-----------

---- Step Count [1877] ----
AcceptQuestUsingDB(6344);
---------Step end-----------


---------Step end-----------

---- Step Count [1997] ----
TurnInQuestUsingDB(935);
TurnInQuestUsingDB(940);
AcceptQuestUsingDB(952);
---------Step end-----------

---- Step Count [2004] ----
TurnInQuestUsingDB(923);
---------Step end-----------


---- Step Count [2015] ----
TurnInQuestAt(7313,2518); --- Tears
if (HasPlayerFinishedQuest(2520) == false)  then
    
    
        QuestGoToPoint(9622.718,2517.868,1333.279);     
		UseSacrifice()
end;
TurnInQuestAt(7313,2520); --- Sathrah's Sacrifice
CompleteObjectiveOfQuest(486,1)
TurnInQuestUsingDB(486);

TurnInQuestAt(2080,2498); --- Tears

CompleteObjectiveOfQuest(2499,1)
TurnInQuestUsingDB(2499);

AcceptQuestUsingDB(2520);
---------Step end-----------

---- Step Count [2022] ----
CompleteObjectiveOfQuest(2520,1)
---------Step end-----------

---- Step Count [2026] ----
TurnInQuestUsingDB(2520);
---------Step end-----------

---- Step Count [2060] ----
TurnInQuestUsingDB(6344);
AcceptQuestUsingDB(6341);
---------Step end-----------

---- Step Count [2067] ----
TurnInQuestUsingDB(6341);
AcceptQuestUsingDB(6342);
---------Step end-----------

StopQuestProfile();
