StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();


AddNameToAvoidWhiteList("Young Wolf");
AddNameToAvoidWhiteList("Timber Wolf");
AddNameToAvoidWhiteList("Cobold Worker");
AddNameToAvoidWhiteList("Cobold Vermin");



AcceptQuestUsingDB(1598);
---- Step Count [31] ----
CompleteObjectiveOfQuest(1598,1)

CompleteObjectiveOfQuest(1598,1)
---------Step end-----------

---- Step Count [59] ----
TurnInQuestUsingDB(1598);
---------Step end-----------

---- Step Count [67] ----
AcceptQuestUsingDB(783);
---------Step end-----------

---- Step Count [85] ----
TurnInQuestUsingDB(783);
AcceptQuestUsingDB(7);
---------Step end-----------

---- Step Count [91] ----
AcceptQuestUsingDB(5261);
---------Step end-----------

---- Step Count [96] ----
TurnInQuestUsingDB(5261);
AcceptQuestUsingDB(33);
---------Step end-----------

---- Step Count [110] ----
CompleteObjectiveOfQuest(33,1)
---------Step end-----------

---- Step Count [116] ----
CompleteObjectiveOfQuest(7,1)
---------Step end-----------

---- Step Count [124] ----
CompleteObjectiveOfQuest(33,1)
---------Step end-----------

---- Step Count [134] ----
TurnInQuestUsingDB(33);
TurnInQuestUsingDB(33);
---------Step end-----------

---- Step Count [165] ----
TurnInQuestUsingDB(7);
AcceptQuestUsingDB(15);
AcceptQuestUsingDB(3100);
AcceptQuestUsingDB(3101);
AcceptQuestUsingDB(3102);
AcceptQuestUsingDB(3103);
AcceptQuestUsingDB(3104);
AcceptQuestUsingDB(3105);

TurnInQuestUsingDB(3100);
TurnInQuestUsingDB(3101);
TurnInQuestUsingDB(3102);
TurnInQuestUsingDB(3103);
TurnInQuestUsingDB(3104);
TurnInQuestUsingDB(3105);
---------Step end-----------

---- Step Count [177] ----
CompleteObjectiveOfQuest(15,1)
---------Step end-----------

---- Step Count [185] ----
GrindAreaUntilLevel(4)
---------Step end-----------

---- Step Count [196] ----
TurnInQuestUsingDB(15);
AcceptQuestUsingDB(21);
---------Step end-----------
Log("Training needed");
--training needed---- Step Count [274] ----
CompleteObjectiveOfQuest(21,1)
---------Step end-----------

---- Step Count [286] ----
CompleteObjectiveOfQuest(21,1)
---------Step end-----------

---- Step Count [292] ----
TurnInQuestUsingDB(21);
AcceptQuestUsingDB(54);
---------Step end-----------

---- Step Count [307] ----
---------Step end-----------

---- Step Count [314] ----
AcceptQuestUsingDB(18);
---------Step end-----------

---- Step Count [328] ----
CompleteObjectiveOfQuest(18,1)
---------Step end-----------

---------Step end-----------


GrindAreaUntilLevel(6)
---------Step end-----------


---- Step Count [545] ----
TurnInQuestUsingDB(18);
AcceptQuestUsingDB(3903);
AcceptQuestUsingDB(6);

---- Step Count [605] ----
CompleteObjectiveOfQuest(21,1)
---------Step end-----------



---- Step Count [629] ----
TurnInQuestUsingDB(3903);
---------Step end-----------

---- Step Count [635] ----
TurnInQuestUsingDB(3903);
AcceptQuestUsingDB(3904);
---------Step end-----------

---- Step Count [641] ----
---------Step end-----------

---- Step Count [648] ----
CompleteObjectiveOfQuest(3904,1)
---------Step end-----------

---- Step Count [652] ----
CompleteObjectiveOfQuest(6,1)
---- Step Count [672] ----
TurnInQuestUsingDB(3904);
---------Step end-----------

---- Step Count [678] ----
TurnInQuestUsingDB(6);
---------Step end-----------

---- Step Count [684] ----
TurnInQuestUsingDB(21);
AcceptQuestUsingDB(54);
---------Step end-----------

---- Step Count [709] ----
AcceptQuestUsingDB(5623);
---------Step end-----------

---- Step Count [714] ----
AcceptQuestUsingDB(2158);
---------Step end-----------

---- Step Count [736] ----
TurnInQuestUsingDB(54);
AcceptQuestUsingDB(62);
---------Step end-----------

---- Step Count [803] ----
TurnInQuestUsingDB(54);
AcceptQuestUsingDB(62);
---------Step end-----------

---- Step Count [810] ----
AcceptQuestUsingDB(60);
---------Step end-----------

---- Step Count [815] ----
TurnInQuestUsingDB(2158);
TurnInQuestUsingDB(2158);
---------Step end-----------
---- Step Count [852] ----
TurnInQuestUsingDB(5623);
AcceptQuestUsingDB(5624);
---------Step end-----------

---- Step Count [888] ----
AcceptQuestUsingDB(47);
---------Step end-----------

---- Step Count [893] ----
CompleteObjectiveOfQuest(5624,1)
---------Step end-----------

---- Step Count [903] ----
AcceptQuestUsingDB(85);
AcceptQuestUsingDB(88);
---------Step end-----------
AcceptQuestUsingDB(106);
TurnInQuestUsingDB(85);
CompleteObjectiveOfQuest(86,1)
---------Step end-----------

---- Step Count [961] ----
TurnInQuestUsingDB(86);
TurnInQuestUsingDB(106);
AcceptQuestUsingDB(111);
TurnInQuestUsingDB(111);
TurnInQuestUsingDB(84);

if (Player.Level <8) then 
Log("Grind to 8");

Grind = {};
Grind[1] = 113;

Grind = CreateObjective("KillMobsAndLoot",1,10,1,999,TableToList(Grind));
GrindUntilLvl(8,Grind,true);
end;

Log("Training needed");

---- Step Count [913] ----
CompleteObjectiveOfQuest(60,1)
CompleteObjectiveOfQuest(47,1)
---------Step end-----------
if HasPlayerFinishedQuest(87)== false and CanTurnInQuest(87)==false then
Log("Doing Goldtooth");
QuestGoToPoint(-9753.248,116.2802,14.82017);

Goldtooth = {};
Goldtooth[1] = 327;
KillLootGoldtooth = CreateObjective("KillMobsAndLoot",1,1,1,87,TableToList(Goldtooth));
MyInfo = DoObjective(KillLootGoldtooth);
end;--



---- Step Count [1110] ----
TurnInQuestUsingDB(87);
---------Step end-----------


---- Step Count [1123] ----
TurnInQuestUsingDB(47);
AcceptQuestUsingDB(40);
---------Step end-----------

---- Step Count [1130] ----
TurnInQuestUsingDB(40);
AcceptQuestUsingDB(35);
TurnInQuestUsingDB(62);
AcceptQuestUsingDB(76);
TurnInQuestUsingDB(107);

TurnInQuestUsingDB(60);
-------Step end-----------

AcceptQuestUsingDB(61);
AcceptQuestUsingDB(112);
---------Step end-----------

if HasPlayerFinishedQuest(76)==false  then
Log("Doing The Fargodeep Mine");
QuestGoToPoint(-9100.666,-564.2968,61.3069);

end;
GrindAreaUntilLevel(9)
TurnInQuestUsingDB(76);

CompleteObjectiveOfQuest(112,1)

if (Player.Level <10) then 
Log("Grind to 10");

Grind = {};
Grind[1] = 524;
Grind[2] = 1922;
Grind[3] = 822;

Grind = CreateObjective("KillMobsAndLoot",1,10,1,999,TableToList(Grind));
GrindUntilLvl(10,Grind,true);
end;


if HasPlayerFinishedQuest(88)==false and CanTurnInQuest(88)==false then

Log("Doing Princess Must Die!");

Princess = {};
Princess[1] = 330;
KillLootPrincess = CreateObjective("KillMobsAndLoot",1,1,1,88,TableToList(Princess));
MyInfo = DoObjective(KillLootPrincess);
end;

TurnInQuestUsingDB(76);
TurnInQuestUsingDB(112);

---------Step end-----------

---- Step Count [1363] ----

---- Step Count [1378] ----
AcceptQuestFrom(10616,5545);  
---------Step end-----------
CompleteObjectiveOfQuest(5545,1)
TurnInQuestAt(10616,5545);

AcceptQuestUsingDB(83);
TurnInQuestUsingDB(114);
TurnInQuestUsingDB(88);
TurnInQuestUsingDB(239);
AcceptQuestUsingDB(83);

CompleteObjectiveOfQuest(83,1)
GrindAreaUntilLevel(11)

TurnInQuestUsingDB(83);
TurnInQuestUsingDB(61);



TurnInQuestUsingDB(35);
AcceptQuestUsingDB(52);
---------Step end-----------



TurnInQuestAt(55,37);
---------Step end-----------
TurnInQuestAt(55,37);
---- Step Count [1395] ----
---------Step end-----------

---- Step Count [1403] ----
---------Step end-----------
CompleteObjectiveOfQuest(52,1)
CompleteObjectiveOfQuest(52,2)
TurnInQuestUsingDB(52);
GrindAreaUntilLevel(12)

---- Step Count [1407] ----
TurnInQuestAt(56,45);
---------Step end-----------



---- Step Count [1478] ----
TurnInQuestAt(240,39);
AcceptQuestUsingDB(109);
TurnInQuestAt(261,71);
AcceptQuestUsingDB(114);
---------Step end-----------

---- Step Count [1656] ----
AcceptQuestUsingDB(59);
AcceptQuestUsingDB(109);
---------Step end-----------

---- Step Count [1665] ----
AcceptQuestUsingDB(1097);
---------Step end-----------
TurnInQuestUsingDB(1097);



---- Step Count [1747] ----
TurnInQuestUsingDB(114);
---------Step end-----------

---- Step Count [1752] ----
TurnInQuestUsingDB(88);
---------Step end-----------

---- Step Count [1759] ----
---------Step end-----------

---- Step Count [1770] ----
TurnInQuestUsingDB(239);
AcceptQuestUsingDB(11);

---- Step Count [1944] ----
TurnInQuestUsingDB(184);


TurnInQuestUsingDB(59);
if (Player.Level <13) then 
Log("Grind to 13");

Grind = {};
Grind[1] = 118;
Grind[2] = 822;

Grind = CreateObjective("KillMobsAndLoot",1,10,1,999,TableToList(Grind));
GrindUntilLvl(13,Grind,true);
end;

---------Step end-----------
---- Step Count [2166] ----

---------Step end-----------
Log("This is the end of Elwynn questing profile");

StopQuestProfile();
