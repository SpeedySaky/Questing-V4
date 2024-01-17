StartMobAvoidance();
UseDBToRepair(true)
UseDBToSell(true)
SetQuestRepairAt(30)
SetQuestSellAt(2)
Player = GetPlayer();

--This profile was auto-generated using MrFade's massive brain power.
---- Step Count [16] ----
AcceptQuestUsingDB(4641);
---------Step end-----------

---- Step Count [29] ----
AcceptQuestUsingDB(1485);
---------Step end-----------

---- Step Count [40] ----
TurnInQuestUsingDB(4641);
AcceptQuestUsingDB(788);
---------Step end-----------

---- Step Count [118] ----
CompleteObjectiveOfQuest(788,1)
---------Step end-----------

---- Step Count [128] ----
CompleteObjectiveOfQuest(1485,1)
---------Step end-----------

---- Step Count [133] ----
CompleteObjectiveOfQuest(788,1)
---------Step end-----------

---- Step Count [140] ----
AcceptQuestUsingDB(790);
---------Step end-----------

---- Step Count [145] ----
CompleteObjectiveOfQuest(790,1)
---------Step end-----------

---- Step Count [166] ----
CompleteObjectiveOfQuest(790,1)
---------Step end-----------

---- Step Count [173] ----
TurnInQuestUsingDB(790);
AcceptQuestUsingDB(804);
---------Step end-----------

---- Step Count [179] ----
CompleteObjectiveOfQuest(788,1)
---------Step end-----------

---- Step Count [184] ----
GrindAreaUntilLevel(2)
---------Step end-----------

---- Step Count [190] ----
GrindAreaUntilLevel(3)
TurnInQuestUsingDB(788);
TurnInQuestUsingDB(804);
---------Step end-----------

---- Step Count [219] ----
TurnInQuestUsingDB(1485);
AcceptQuestUsingDB(1499);
---------Step end-----------

---- Step Count [229] ----
TurnInQuestUsingDB(1499);
---------Step end-----------

---- Step Count [235] ----


AcceptQuestUsingDB(789);
---------Step end-----------

---- Step Count [262] ----
GrindAreaUntilLevel(4)
Log("Take Galgar's Cactus Apple Surprise");
AcceptQuestFrom(9796,4402);  

Log("Doing Apples");

Apples = {};
Apples[1] = 171938;
CollectApples = CreateObjective("GatherObject",1,10,1,4402,nil,TableToList(Apples));
MyInfo = DoObjective(CollectApples);


if HasPlayerFinishedQuest(4402)==false then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check


Log("Turn Galgar's Cactus Apple Surprise");
TurnInQuestAt(9796,4402);  


Log("Take Vile Familiars");
AcceptQuestFrom(3145,792);  

Log("Take Sting of the Scorpid");
AcceptQuestFrom(3143,789);  



Log("Doing Vile Familiars");

Vile = {};
Vile[1] = 3101;
KillLootVile = CreateObjective("KillMobsAndLoot",1,12,1,792,TableToList(Vile));
MyInfo = DoObjective(KillLootVile);

Log("Doing Scorpid");

Scorpid = {};
Scorpid[1] = 3124;
KillLootScorpid = CreateObjective("KillMobsAndLoot",1,10,1,789,TableToList(Scorpid));
MyInfo = DoObjective(KillLootScorpid);


Log("Turn Your Vile Familiars");
TurnInQuestAt(3145,792);  


---- Step Count [73] ----

Log("Turn Sting of the Scorpid");
TurnInQuestAt(3143,789);  


CompleteObjectiveOfQuest(792,1)
---------Step end-----------

CompleteObjectiveOfQuest(792,1)
---------Step end-----------

CompleteObjectiveOfQuest(792,1)
---------Step end-----------

---- Step Count [631] ----
CompleteObjectiveOfQuest(789,1)
---------Step end-----------

---- Step Count [637] ----
---------Step end-----------


---------Step end-----------

---- Step Count [650] ----
TurnInQuestUsingDB(4402);
---------Step end-----------

---- Step Count [668] ----
TurnInQuestUsingDB(789);
TurnInQuestUsingDB(789);
---------Step end-----------

---- Step Count [748] ----
TurnInQuestUsingDB(792);
AcceptQuestUsingDB(794);
---------Step end-----------

CompleteObjectiveOfQuest(4402,1)
GrindAreaUntilLevel(5)
---------Step end-----------

---- Step Count [852] ----
CompleteObjectiveOfQuest(1516,1)
CompleteObjectiveOfQuest(794,1)
---------Step end-----------

GrindAreaUntilLevel(6)

if HasPlayerFinishedQuest(794)==false then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check
---------Step end-----------

---- Step Count [1014] ----
TurnInQuestUsingDB(794);
AcceptQuestUsingDB(784);
---------Step end-----------
AcceptQuestUsingDB(784);
---- Step Count [949] ----
AcceptQuestUsingDB(791);
---------Step end-----------


AcceptQuestUsingDB(805);
---------Step end-----------
AcceptQuestUsingDB(2161);
---------Step end-----------

---- Step Count [1212] ----
AcceptQuestUsingDB(786);
---------Step end-----------

---- Step Count [1221] ----
TurnInQuestUsingDB(805);
AcceptQuestUsingDB(823);
---------Step end-----------

CompleteObjectiveOfQuest(791,1)
GrindAreaUntilLevel(8)

---- Step Count [1439] ----
Log("Doing Thwarting Kolkar Aggression");

Trials = {};
Trials[1] = 3189;
CollectTrials = CreateObjective("GatherObject",1,1,3,786,nil,TableToList(Trials));
MyInfo = DoObjective(CollectTrials);

Village = {};
Village[1] = 3190;
CollectVillage = CreateObjective("GatherObject",2,1,3,786,nil,TableToList(Village));
MyInfo = DoObjective(CollectVillage);

Orgrimmar = {};
Orgrimmar[1] = 3192;
CollectOrgrimmar = CreateObjective("GatherObject",3,1,3,786,nil,TableToList(Orgrimmar));
MyInfo = DoObjective(CollectOrgrimmar);
---------Step end-----------
if HasPlayerFinishedQuest(786)==false then   --- Objective if
  
      Log("Player needs training!")
      TrainAtNearestClassTrainer(); -- TrainMe  
end -- HasSpell check
TurnInQuestUsingDB(786);
---------Step end-----------
TurnInQuestUsingDB(2161);
TurnInQuestUsingDB(791);
TurnInQuestUsingDB(823);

---- Step Count [1682] ----
CompleteObjectiveOfQuest(784,1)
CompleteObjectiveOfQuest(784,2)
CompleteObjectiveOfQuest(791,1)
---------Step end-----------

---- Step Count [1690] ----
CompleteObjectiveOfQuest(784,3)
CompleteObjectiveOfQuest(784,1)
CompleteObjectiveOfQuest(784,2)
---------Step end-----------

---- Step Count [1762] ----
---------Step end-----------

---- Step Count [1780] ----
TurnInQuestUsingDB(823);
AcceptQuestUsingDB(806);
TurnInQuestUsingDB(784);
AcceptQuestUsingDB(837);
---------Step end-----------

---- Step Count [1813] ----
TurnInQuestUsingDB(791);
---------Step end-----------

---- Step Count [1953] ----
TurnInQuestUsingDB(2161);
---------Step end-----------

---- Step Count [1968] ----
TurnInQuestUsingDB(2161);

---------Step end-----------

---------Step end-----------

---- Step Count [2209] ----
CompleteObjectiveOfQuest(837,1)
CompleteObjectiveOfQuest(837,2)
---------Step end-----------

---- Step Count [2228] ----
CompleteObjectiveOfQuest(837,1)
CompleteObjectiveOfQuest(837,2)
---------Step end-----------

---- Step Count [2244] ----
CompleteObjectiveOfQuest(837,3)
CompleteObjectiveOfQuest(837,4)
---------Step end-----------

---- Step Count [2251] ----
GrindAreaUntilLevel(9)
---------Step end-----------


---------Step end-----------

---- Step Count [2271] ----
TurnInQuestUsingDB(837);



---------Step end-----------

---- Step Count [2376] ----
AcceptQuestUsingDB(834);
---------Step end-----------

---- Step Count [2391] ----
CompleteObjectiveOfQuest(834,1)
---------Step end-----------

---- Step Count [2422] ----
TurnInQuestUsingDB(834);

AcceptQuestUsingDB(835);


AcceptQuestUsingDB(5726);
---------Step end-----------

CompleteObjectiveOfQuest(835,1)
CompleteObjectiveOfQuest(835,2)
---------Step end-----------
TurnInQuestUsingDB(835);

if HasPlayerFinishedQuest(5726)==false then
Log("Doing Hidden Enemies");
QuestGoToPoint(1400.764,-4882.437,12.53824);
end;

CompleteObjectiveOfQuest(5726,1)

---- Step Count [3369] ----
TurnInQuestUsingDB(5726);

AcceptQuestUsingDB(828);
TurnInQuestUsingDB(837);

AcceptQuestUsingDB(840);
---------Step end-----------

---- Step Count [2680] ----
AcceptQuestUsingDB(816);
CompleteObjectiveOfQuest(816,1)
TurnInQuestUsingDB(816);
TurnInQuestUsingDB(840);

AcceptQuestUsingDB(842);
TurnInQuestUsingDB(2983);

---- Step Count [2707] ----
AcceptQuestUsingDB(870);
---------Step end-----------

---- Step Count [2713] ----
TurnInQuestUsingDB(842);
AcceptQuestUsingDB(844);
---------Step end-----------

---- Step Count [2719] ----
AcceptQuestUsingDB(6365);
---------Step end-----------

---- Step Count [2724] ----
AcceptQuestUsingDB(869);
---------Step end-----------

---- Step Count [2729] ----
AcceptQuestUsingDB(871);
AcceptQuestUsingDB(5041);
---------Step end-----------

---- Step Count [2735] ----
TurnInQuestUsingDB(6365);
AcceptQuestUsingDB(6384);
---------Step end-----------

---- Step Count [2744] ----
AcceptQuestUsingDB(848);
AcceptQuestUsingDB(1492);
---------Step end-----------

---- Step Count [2752] ----
CompleteObjectiveOfQuest(848,1)
---------Step end-----------

---- Step Count [2756] ----
CompleteObjectiveOfQuest(870,1)
---------Step end-----------

---- Step Count [2760] ----
CompleteObjectiveOfQuest(848,1)
---------Step end-----------

---- Step Count [2777] ----
TurnInQuestUsingDB(848);
AcceptQuestUsingDB(853);
---------Step end-----------

---- Step Count [2796] ----
TurnInQuestUsingDB(870);
---------Step end-----------

---- Step Count [2810] ----
AcceptQuestUsingDB(749);
---------Step end-----------

---- Step Count [2822] ----
TurnInQuestUsingDB(749);
AcceptQuestUsingDB(751);
---------Step end-----------

---- Step Count [2829] ----
AcceptQuestUsingDB(761);
---------Step end-----------

---- Step Count [2835] ----
AcceptQuestUsingDB(767);
AcceptQuestUsingDB(746);
---------Step end-----------

---- Step Count [2842] ----
AcceptQuestUsingDB(743);
---------Step end-----------

---- Step Count [2848] ----
TurnInQuestUsingDB(767);
AcceptQuestUsingDB(771);
---------Step end-----------

---- Step Count [2855] ----
AcceptQuestUsingDB(766);
---------Step end-----------

---- Step Count [2861] ----
CompleteObjectiveOfQuest(766,1)
CompleteObjectiveOfQuest(766,2)
CompleteObjectiveOfQuest(766,3)
CompleteObjectiveOfQuest(766,4)
CompleteObjectiveOfQuest(761,1)
---------Step end-----------

---- Step Count [2870] ----
AcceptQuestUsingDB(770);
---------Step end-----------

---- Step Count [2878] ----
CompleteObjectiveOfQuest(771,2)
---------Step end-----------

---- Step Count [2887] ----
CompleteObjectiveOfQuest(771,1)
---------Step end-----------

---- Step Count [2895] ----
TurnInQuestUsingDB(771);
AcceptQuestUsingDB(772);
---------Step end-----------

---- Step Count [2930] ----
TurnInQuestUsingDB(853);
---------Step end-----------

---- Step Count [2947] ----
CompleteObjectiveOfQuest(766,1)
CompleteObjectiveOfQuest(766,2)
CompleteObjectiveOfQuest(766,3)
CompleteObjectiveOfQuest(766,4)
CompleteObjectiveOfQuest(761,1)
---------Step end-----------

---- Step Count [2956] ----
AcceptQuestUsingDB(770);
---------Step end-----------

---- Step Count [2964] ----
TurnInQuestUsingDB(772);
AcceptQuestUsingDB(773);
---------Step end-----------

---- Step Count [2976] ----
CompleteObjectiveOfQuest(743,1)
---------Step end-----------

---- Step Count [2983] ----
CompleteObjectiveOfQuest(746,1)
---------Step end-----------

---- Step Count [2991] ----
AcceptQuestUsingDB(833);
---------Step end-----------

---- Step Count [2997] ----
CompleteObjectiveOfQuest(833,1)
---------Step end-----------

---- Step Count [3003] ----
TurnInQuestUsingDB(773);
---------Step end-----------

---- Step Count [3009] ----
CompleteObjectiveOfQuest(833,1)
---------Step end-----------

---- Step Count [3015] ----
TurnInQuestUsingDB(833);
---------Step end-----------

---- Step Count [3022] ----
CompleteObjectiveOfQuest(766,1)
CompleteObjectiveOfQuest(766,2)
CompleteObjectiveOfQuest(766,3)
CompleteObjectiveOfQuest(766,4)
CompleteObjectiveOfQuest(761,1)
---------Step end-----------

---- Step Count [3032] ----
TurnInQuestUsingDB(749);
AcceptQuestUsingDB(751);
---------Step end-----------

---- Step Count [3038] ----
TurnInQuestUsingDB(766);
---------Step end-----------

---- Step Count [3045] ----
TurnInQuestUsingDB(770);
---------Step end-----------

---- Step Count [3053] ----
TurnInQuestUsingDB(746);
---------Step end-----------

---- Step Count [3059] ----
TurnInQuestUsingDB(743);
---------Step end-----------

---- Step Count [3065] ----
TurnInQuestUsingDB(761);
---------Step end-----------

---- Step Count [3072] ----
GrindAreaUntilLevel(12)
---------Step end-----------

---- Step Count [3078] ----
GrindAreaUntilLevel(12)
---------Step end-----------

---- Step Count [3084] ----
TurnInQuestUsingDB(751);
AcceptQuestUsingDB(764);
AcceptQuestUsingDB(765);
---------Step end-----------

---- Step Count [3103] ----
CompleteObjectiveOfQuest(764,1)
CompleteObjectiveOfQuest(764,2)
---------Step end-----------

---- Step Count [3111] ----
CompleteObjectiveOfQuest(765,1)
---------Step end-----------

---- Step Count [3118] ----
CompleteObjectiveOfQuest(764,1)
CompleteObjectiveOfQuest(764,2)
---------Step end-----------

---- Step Count [3126] ----
GrindAreaUntilLevel(11)
TurnInQuestUsingDB(764);
TurnInQuestUsingDB(765);
---------Step end-----------

---- Step Count [3148] ----
GrindAreaUntilLevel(12)
---------Step end-----------

---- Step Count [3154] ----
GrindAreaUntilLevel(12)
---------Step end-----------

---- Step Count [3174] ----
---------Step end-----------

---- Step Count [3206] ----
TurnInQuestUsingDB(828);
AcceptQuestUsingDB(827);
---------Step end-----------

---- Step Count [3220] ----
CompleteObjectiveOfQuest(827,1)
---------Step end-----------

---- Step Count [3238] ----
---------Step end-----------

---- Step Count [3244] ----
CompleteObjectiveOfQuest(827,1)
CompleteObjectiveOfQuest(5726,1)
---------Step end-----------

---- Step Count [3261] ----
CompleteObjectiveOfQuest(827,1)
---------Step end-----------

---- Step Count [3278] ----
AcceptQuestUsingDB(832);
---------Step end-----------

---- Step Count [3288] ----
CompleteObjectiveOfQuest(827,1)
CompleteObjectiveOfQuest(5726,1)
---------Step end-----------

---- Step Count [3306] ----
CompleteObjectiveOfQuest(827,1)
---------Step end-----------

---- Step Count [3323] ----
---------Step end-----------

---- Step Count [3334] ----
TurnInQuestUsingDB(827);
AcceptQuestUsingDB(829);
---------Step end-----------

---- Step Count [3345] ----
CompleteObjectiveOfQuest(835,1)
CompleteObjectiveOfQuest(835,2)
---------Step end-----------

---- Step Count [3369] ----
TurnInQuestUsingDB(835);
---------Step end-----------

---- Step Count [3375] ----
---------Step end-----------

---- Step Count [3389] ----
TurnInQuestUsingDB(6384);
AcceptQuestUsingDB(6385);
---------Step end-----------

---- Step Count [3396] ----
TurnInQuestUsingDB(6385);
AcceptQuestUsingDB(6386);
---------Step end-----------



---- Step Count [3448] ----
---------Step end-----------

---- Step Count [3454] ----
TurnInQuestUsingDB(5726);
AcceptQuestUsingDB(5727);
---------Step end-----------

---- Step Count [3463] ----
TurnInQuestUsingDB(5726);
---------Step end-----------

---- Step Count [3471] ----
AcceptQuestUsingDB(1963);
---------Step end-----------

---- Step Count [3476] ----
---------Step end-----------

---- Step Count [3487] ----
TurnInQuestUsingDB(829);
TurnInQuestUsingDB(832);
AcceptQuestUsingDB(809);
---------Step end-----------

---- Step Count [3497] ----
TurnInQuestUsingDB(829);
AcceptQuestUsingDB(809);
---------Step end-----------

---- Step Count [3537] ----
---------Step end-----------

---- Step Count [3544] ----
---------Step end-----------

---- Step Count [3550] ----
CompleteObjectiveOfQuest(835,1)
CompleteObjectiveOfQuest(835,2)
TurnInQuestUsingDB(835);


---------Step end-----------

---- Step Count [3561] ----

---------Step end-----------

---- Step Count [3571] ----
TurnInQuestUsingDB(840);
AcceptQuestUsingDB(842);
---------Step end-----------

---- Step Count [3577] ----
TurnInQuestUsingDB(809);
AcceptQuestUsingDB(924);
---------Step end-----------

---- Step Count [3585] ----
TurnInQuestUsingDB(926);
---------Step end-----------

---- Step Count [3590] ----
---------Step end-----------

---- Step Count [3673] ----
AcceptQuestUsingDB(354);
AcceptQuestUsingDB(362);
AcceptQuestUsingDB(375);
---------Step end-----------

---- Step Count [3686] ----
---------Step end-----------

---- Step Count [3691] ----
---------Step end-----------

---- Step Count [3696] ----
---------Step end-----------

---- Step Count [3727] ----
AcceptQuestUsingDB(427);
---------Step end-----------

---- Step Count [3735] ----
AcceptQuestUsingDB(427);
---------Step end-----------

---- Step Count [3744] ----
AcceptQuestUsingDB(427);
---------Step end-----------

---- Step Count [3752] ----
AcceptQuestUsingDB(398);
---------Step end-----------

---- Step Count [3760] ----
AcceptQuestUsingDB(398);
---------Step end-----------

---- Step Count [3769] ----
AcceptQuestUsingDB(398);
---------Step end-----------

---- Step Count [3776] ----
AcceptQuestUsingDB(358);
---------Step end-----------

---- Step Count [3784] ----
AcceptQuestUsingDB(358);
---------Step end-----------

---- Step Count [3793] ----
AcceptQuestUsingDB(358);
---------Step end-----------

---- Step Count [3801] ----
AcceptQuestUsingDB(445);
AcceptQuestUsingDB(367);
---------Step end-----------

---- Step Count [3810] ----
AcceptQuestUsingDB(445);
AcceptQuestUsingDB(367);
---------Step end-----------

---- Step Count [3820] ----
AcceptQuestUsingDB(445);
AcceptQuestUsingDB(367);
---------Step end-----------

---- Step Count [3828] ----
AcceptQuestUsingDB(445);
---------Step end-----------

---- Step Count [3834] ----
AcceptQuestUsingDB(404);
---------Step end-----------

---- Step Count [3842] ----
AcceptQuestUsingDB(404);
---------Step end-----------

---- Step Count [3851] ----
AcceptQuestUsingDB(404);
---------Step end-----------

---- Step Count [3859] ----

---- Step Count [3876] ----
CompleteObjectiveOfQuest(367,1)
---------Step end-----------

---- Step Count [3885] ----
CompleteObjectiveOfQuest(404,1)
---------Step end-----------

---- Step Count [3902] ----
CompleteObjectiveOfQuest(375,1)
---------Step end-----------

---- Step Count [3910] ----
AcceptQuestUsingDB(365);
---------Step end-----------

---- Step Count [3920] ----
AcceptQuestUsingDB(365);
---------Step end-----------

---- Step Count [3931] ----
AcceptQuestUsingDB(365);
---------Step end-----------

---- Step Count [3947] ----
CompleteObjectiveOfQuest(365,1)
---------Step end-----------

---- Step Count [3981] ----
CompleteObjectiveOfQuest(427,1)
---------Step end-----------

---- Step Count [4020] ----
CompleteObjectiveOfQuest(367,1)
---------Step end-----------

---- Step Count [4044] ----
TurnInQuestUsingDB(404);
AcceptQuestUsingDB(426);
---------Step end-----------

---- Step Count [4052] ----
AcceptQuestUsingDB(426);
---------Step end-----------

---- Step Count [4059] ----
TurnInQuestUsingDB(367);
AcceptQuestUsingDB(368);
---------Step end-----------

---- Step Count [4067] ----
AcceptQuestUsingDB(368);
---------Step end-----------

---- Step Count [4074] ----
TurnInQuestUsingDB(365);
AcceptQuestUsingDB(407);
---------Step end-----------

---- Step Count [4082] ----
AcceptQuestUsingDB(407);
---------Step end-----------

---- Step Count [4089] ----
TurnInQuestUsingDB(427);
AcceptQuestUsingDB(370);
---------Step end-----------

---- Step Count [4097] ----
AcceptQuestUsingDB(370);
---------Step end-----------

---- Step Count [4104] ----
AcceptQuestUsingDB(374);
---------Step end-----------

---------Step end-----------

---- Step Count [4281] ----
CompleteObjectiveOfQuest(374,1)
---------Step end-----------

---- Step Count [4295] ----
---------Step end-----------

---- Step Count [4301] ----
CompleteObjectiveOfQuest(370,1)
CompleteObjectiveOfQuest(370,2)
CompleteObjectiveOfQuest(370,3)
---------Step end-----------


---- Step Count [4368] ----
CompleteObjectiveOfQuest(375,1)
---------Step end-----------

---- Step Count [4380] ----
AcceptQuestUsingDB(361);
---------Step end-----------

---- Step Count [4387] ----
CompleteObjectiveOfQuest(426,1)
CompleteObjectiveOfQuest(426,2)
---------Step end-----------

---- Step Count [4398] ----
CompleteObjectiveOfQuest(362,1)
---------Step end-----------

---- Step Count [4406] ----
CompleteObjectiveOfQuest(354,2)
---------Step end-----------

---- Step Count [4413] ----
CompleteObjectiveOfQuest(354,3)
CompleteObjectiveOfQuest(354,1)
---------Step end-----------

---- Step Count [4439] ----
CompleteObjectiveOfQuest(358,2)
CompleteObjectiveOfQuest(358,3)
---------Step end-----------

---- Step Count [4449] ----
CompleteObjectiveOfQuest(398,1)
---------Step end-----------

---- Step Count [4464] ----
CompleteObjectiveOfQuest(368,1)
---------Step end-----------

---- Step Count [4498] ----
CompleteObjectiveOfQuest(375,1)
---------Step end-----------

---- Step Count [4513] ----
CompleteObjectiveOfQuest(358,2)
CompleteObjectiveOfQuest(358,1)
CompleteObjectiveOfQuest(358,3)
---------Step end-----------

---- Step Count [4570] ----
TurnInQuestUsingDB(426);
---------Step end-----------

---- Step Count [4577] ----
TurnInQuestUsingDB(368);
AcceptQuestUsingDB(369);
---------Step end-----------

---- Step Count [4585] ----
AcceptQuestUsingDB(369);
---------Step end-----------

---- Step Count [4592] ----
TurnInQuestUsingDB(398);
TurnInQuestUsingDB(370);
AcceptQuestUsingDB(371);
---------Step end-----------

---- Step Count [4620] ----
TurnInQuestUsingDB(398);
AcceptQuestUsingDB(371);
---------Step end-----------

---- Step Count [4628] ----
TurnInQuestUsingDB(398);
---------Step end-----------

---- Step Count [4635] ----
TurnInQuestUsingDB(358);
AcceptQuestUsingDB(359);
---------Step end-----------

---- Step Count [4643] ----
AcceptQuestUsingDB(359);
---------Step end-----------

---- Step Count [4650] ----
CompleteObjectiveOfQuest(375,2)
---------Step end-----------

---- Step Count [4659] ----
TurnInQuestUsingDB(361);
---------Step end-----------

---- Step Count [4666] ----
TurnInQuestUsingDB(354);
TurnInQuestUsingDB(362);
AcceptQuestUsingDB(355);
---------Step end-----------

---- Step Count [4675] ----
TurnInQuestUsingDB(354);
TurnInQuestUsingDB(362);
AcceptQuestUsingDB(355);
---------Step end-----------

---- Step Count [4685] ----
AcceptQuestUsingDB(355);
---------Step end-----------

---- Step Count [4692] ----
AcceptQuestUsingDB(355);
---------Step end-----------

---- Step Count [4699] ----
TurnInQuestUsingDB(375);
---------Step end-----------

---- Step Count [4706] ----
GrindAreaUntilLevel(12)
---------Step end-----------

---- Step Count [4712] ----
GrindAreaUntilLevel(12)
---------Step end-----------

---- Step Count [4718] ----
GrindAreaUntilLevel(12)
---------Step end-----------

---- Step Count [4724] ----
GrindAreaUntilLevel(12)
---------Step end-----------

---- Step Count [4730] ----
CompleteObjectiveOfQuest(806,1)
TurnInQuestUsingDB(806);
---------Step end-----------

---- Step Count [4750] ----
TurnInQuestUsingDB(359);
AcceptQuestUsingDB(360);
AcceptQuestUsingDB(356);
---------Step end-----------

---- Step Count [4760] ----
AcceptQuestUsingDB(356);
---------Step end-----------

---- Step Count [4767] ----
CompleteObjectiveOfQuest(375,1)
---------Step end-----------

---- Step Count [4775] ----
CompleteObjectiveOfQuest(356,1)
CompleteObjectiveOfQuest(356,2)
---------Step end-----------

---- Step Count [4784] ----
---------Step end-----------

---- Step Count [4788] ----
CompleteObjectiveOfQuest(356,1)
CompleteObjectiveOfQuest(356,2)
---------Step end-----------

---- Step Count [4805] ----
CompleteObjectiveOfQuest(374,1)
---------Step end-----------

---- Step Count [4811] ----
CompleteObjectiveOfQuest(371,1)
CompleteObjectiveOfQuest(371,2)
---------Step end-----------

---- Step Count [4830] ----
CompleteObjectiveOfQuest(374,1)
---------Step end-----------

---- Step Count [4861] ----
CompleteObjectiveOfQuest(375,1)
---------Step end-----------

---- Step Count [4869] ----
CompleteObjectiveOfQuest(369,1)
---------Step end-----------

---- Step Count [4893] ----
CompleteObjectiveOfQuest(375,1)
---------Step end-----------

---- Step Count [4902] ----
TurnInQuestUsingDB(356);
---------Step end-----------

---- Step Count [4910] ----
CompleteObjectiveOfQuest(375,2)
---------Step end-----------

---- Step Count [4919] ----
TurnInQuestUsingDB(374);
---------Step end-----------

---- Step Count [4926] ----
TurnInQuestUsingDB(371);
---------Step end-----------

---- Step Count [4933] ----
TurnInQuestUsingDB(360);
---------Step end-----------

---- Step Count [4940] ----
TurnInQuestUsingDB(355);
---------Step end-----------

---- Step Count [4947] ----
TurnInQuestUsingDB(355);
AcceptQuestUsingDB(408);
---------Step end-----------

---- Step Count [4954] ----
TurnInQuestUsingDB(369);
AcceptQuestUsingDB(492);
AcceptQuestUsingDB(445);
---------Step end-----------

---- Step Count [4963] ----
AcceptQuestUsingDB(445);
---------Step end-----------

---- Step Count [4968] ----
TurnInQuestUsingDB(375);
---------Step end-----------

---- Step Count [4975] ----
GrindAreaUntilLevel(12)


---- Step Count [5018] ----
CompleteObjectiveOfQuest(408,1)
CompleteObjectiveOfQuest(408,2)
---------Step end-----------

---- Step Count [5027] ----
CompleteObjectiveOfQuest(408,3)
---------Step end-----------

---- Step Count [5037] ----
CompleteObjectiveOfQuest(1821,1)
CompleteObjectiveOfQuest(1821,2)
CompleteObjectiveOfQuest(1821,3)
CompleteObjectiveOfQuest(1821,3)
CompleteObjectiveOfQuest(1821,4)
---------Step end-----------

---- Step Count [5045] ----
CompleteObjectiveOfQuest(408,1)
CompleteObjectiveOfQuest(408,2)
---------Step end-----------

---- Step Count [5054] ----
---------Step end-----------

---- Step Count [5071] ----
TurnInQuestUsingDB(408);
---------Step end-----------

---- Step Count [5077] ----
TurnInQuestUsingDB(1821);
---------Step end-----------

---- Step Count [5083] ----
TurnInQuestUsingDB(1822);
---------Step end-----------

---- Step Count [5089] ----
TurnInQuestUsingDB(407);
---------Step end-----------

---- Step Count [5096] ----
TurnInQuestUsingDB(492);
if (Player.Level <13) then 
Log("Grind to 13");

Grind = {};
Grind[1] = 3115;
Grind[2] = 3100;
Grind[3] = 3122;
Grind[4] = 3126;
Grind[5] = 3099;
Grind = CreateObjective("KillMobsAndLoot",1,10,1,999,TableToList(Grind));
GrindUntilLvl(13,Grind,true);
end;GrindAreaUntilLevel(13)


---- Step Count [5181] ----
---------Step end-----------

StopQuestProfile();
