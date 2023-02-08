--------------------------------------------------

--- Just setting up some useful vars
Player = GetPlayer();
----- Welcome to questing profiles by SpeedySaky !
		Log("Welcome to questing profiles by SpeedySaky !");
--------------------------------------------------

------------------------------------------
-- Attempt to use hearthstone !
------------------------------------------
function UseHearthStone()
    UseItem("Hearthstone");
    SleepPlugin(500);
    while(Player.IsChanneling or Player.IsCasting) do
        SleepPlugin(5000);
    end;
    while(InGame == false) do
        SleepPlugin(1000);
    end;
end;

-----------------------------------------
-- BagsCheck
-----------------------------------------
function DoBags(npc)
    if (FreeBagSpace() <= 2)  then
        Log("Bags almost full gonna do some Selling");
        SellItemsAt(npc);
    else
        Log("Bags empty slots: " .. FreeBagSpace() .. " no need to sell!!");
    end;
end;
-----------------------------------------
-- Making Hearthstone
-----------------------------------------

function Innkeeper()
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Innkeeper Farley") and (IsUnitValid(Unit)== true) then
         Log("Found the Innkeeper!");
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end;

-----------------------------------------
-- Interact with object functions
-----------------------------------------

function InteractWithGuard()
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "A half-eaten body" then
          Log("A half-eaten body!");
         InteractWithObject(Object);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end;

function InteractWithRolf()
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "Rolf's corpse" then
          Log("Rolf's corpse!");
         InteractWithObject(Object);
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
------------------------------------------
info = Player.Class

Log("Found: " .. info)
------------------------------------------
--  Move to zone first quest

Log("Taking A Threat Within");

AcceptQuestFrom(823,783);    --- A Threat Within

Log("Turning A Threat Within");

TurnInQuestAt(197,783);    --- A Threat Within

Log("Taking Kobold Camp Cleanup");

AcceptQuestFrom(197,7);    --- Kobold Camp Cleanup


Log("Taking Eagan Peltskinner");

AcceptQuestFrom(823,5261);    --- Eagan Peltskinner

Log("Turning Eagan Peltskinner");

TurnInQuestAt(196,5261);    --- Eagan Peltskinner

Log("Taking Wolves Across the Border");

AcceptQuestFrom(196,33);    --- Wolves Across the Border

Log("Doing Wolves Across the Border");

Wolf = {};
Wolf[1] = 69;
KillLootWolf = CreateObjective("KillMobsAndLoot",1,8,1,33,TableToList(Wolf));
MyInfo = DoObjective(KillLootWolf);


Log("Doing Kobold Camp Cleanup");

Vermin = {};
Vermin[1] = 6;
KillLootVermin = CreateObjective("KillMobsAndLoot",1,8,1,7,TableToList(Vermin));
MyInfo = DoObjective(KillLootVermin);


Log("Turning Wolves Across the Border");

TurnInQuestAt(196,33);    --- Wolves Across the Border

Log("Turning Kobold Camp Cleanup");

TurnInQuestAt(197,7);    --- Kobold Camp Cleanup

Log("Taking Investigate Echo Ridge");

AcceptQuestFrom(197,15);    --- Investigate Echo Ridge

if (Player.Class == 2) and (IsOnQuest(3101)== false) then   --- Paladin
Log("Oh I am a paladin so i need to do class quest!");

AcceptQuestFrom(197,3101);    ---

end;

if (Player.Class == 1) and (IsOnQuest(3100)== false) then   --- Warrior
Log("Oh I am a warrior so i need to do class quest!");

AcceptQuestFrom(197,3100);    ---

end;

if (Player.Class == 4) and (IsOnQuest(3102)== false) then   --- Rogue
Log("Oh I am a Rogue so i need to do class quest!");

AcceptQuestFrom(197,3102);    ---

end;

if (Player.Class == 8) and (IsOnQuest(3104)== false) then   --- Mage
Log("Oh I am a Mage so i need to do class quest!");

AcceptQuestFrom(197,3104);    ---

end;

if (Player.Class == 5) and (IsOnQuest(3103)== false) then   --- Priest
Log("Oh I am a Priest so i need to do class quest!");

AcceptQuestFrom(197,3103);    ---

end;

if (Player.Class == 9) and (IsOnQuest(3105)== false) then   --- Warlock
Log("Oh I am a Warlock so i need to do class quest!");

AcceptQuestFrom(197,3105);    ---

end;


Log("Doing Investigate Echo Ridge");

Worker = {};
Worker[1] = 257;
KillLootWorker = CreateObjective("KillMobsAndLoot",1,8,1,15,TableToList(Worker));
MyInfo = DoObjective(KillLootWorker);





Log("Turning Investigate Echo Ridge");

TurnInQuestAt(197,15);    --- Investigate Echo Ridge

if (Player.Level <6)  then

DoBags(1213);
end;



Log("Taking Skirmish at Echo Ridge");

AcceptQuestFrom(197,21);    --- Skirmish at Echo Ridge

Log("Doing Skirmish at Echo Ridge");

Laborer = {};
Laborer[1] = 80;
KillLootLaborer = CreateObjective("KillMobsAndLoot",1,8,1,21,TableToList(Laborer));
MyInfo = DoObjective(KillLootLaborer);

Log("Turning Skirmish at Echo Ridge");

TurnInQuestAt(197,21);    --- Skirmish at Echo Ridge

if (Player.Level <6)  then

DoBags(1213);
end;

if (Player.Class == 2) and (IsOnQuest(3101)== true) then   --- Paladin
Log("Oh I am a paladin so i need to do class quest!");

TurnInQuestAt(925,3101);    ---
Log("Training");
QuestTrainAt(925);
UseMacro("TrainMe");
SleepPlugin(2000);
end;

if (Player.Class == 1) and (IsOnQuest(3100)== true) then   --- Warrior
Log("Oh I am a warrior so i need to do class quest!");

TurnInQuestAt(911,3100);    ---
Log("Training");
QuestTrainAt(911);
UseMacro("TrainMe");
SleepPlugin(2000);
end;

if (Player.Class == 4) and (IsOnQuest(3102)== true) then   --- Rogue
Log("Oh I am a Rogue so i need to do class quest!");

TurnInQuestAt(915,3102);    ---
Log("Training");
QuestTrainAt(915);
UseMacro("TrainMe");
SleepPlugin(2000);
end;

if (Player.Class == 8) and (IsOnQuest(3104)== true) then   --- Mage
Log("Oh I am a Mage so i need to do class quest!");

TurnInQuestAt(198,3104);    ---
Log("Training");
QuestTrainAt(198);
UseMacro("TrainMe");
SleepPlugin(2000);
end;

if (Player.Class == 5) and (IsOnQuest(3103)== true) then   --- Priest
Log("Oh I am a Priest so i need to do class quest!");

TurnInQuestAt(375,3103);    ---
Log("Training");
QuestTrainAt(375);
UseMacro("TrainMe");
SleepPlugin(2000);
end;

if (Player.Class == 9) and (IsOnQuest(3105)== true) then   --- Warlock

Log("Oh I am a Warlock so i need to do class quest!");

TurnInQuestAt(459,3105);    ---
Log("Training");
QuestTrainAt(459);
UseMacro("TrainMe");
SleepPlugin(2000);
end;

Log("Taking Brotherhood of Thieves");

AcceptQuestFrom(823,18);    --- Brotherhood of Thieves

Log("Doing Brotherhood of Thieves");

Bandana = {};
Bandana[1] = 38;
KillLootBandana = CreateObjective("KillMobsAndLoot",1,8,1,18,TableToList(Bandana));
MyInfo = DoObjective(KillLootBandana);


Log("Turning Brotherhood of Thieves");

TurnInQuestAt(823,18);    --- Brotherhood of Thieves

Log("Taking Bounty on Garrick Padfoot");

AcceptQuestFrom(823,6);    --- Bounty on Garrick Padfoot

Log("Taking Milly Osworth");

AcceptQuestFrom(823,3903);    --- Milly Osworth

Log("Turning Milly Osworth");

TurnInQuestAt(9296,3903);    --- Milly Osworth

Log("Taking Milly's Harvest");

AcceptQuestFrom(9296,3904);    --- Milly's Harvest

Log("Doing Bounty on Garrick Padfoot");
if IsOnQuest(6)==true then
QuestGoToPoint(-9047.063,-445.6359,71.31967);

Garrick = {};
Garrick[1] = 103;
KillLootGarrick = CreateObjective("KillMobsAndLoot",1,1,1,6,TableToList(Garrick));
MyInfo = DoObjective(KillLootGarrick);
end;
Log("Doing Milly's Harvest");

Harvest = {};
Harvest[1] = 161557;
CollectHarvest = CreateObjective("GatherObject",1,8,1,3904,nil,TableToList(Harvest));
MyInfo = DoObjective(CollectHarvest);

Log("Turning Milly's Harvest");

TurnInQuestAt(9296,3904);    --- Milly's Harvest

Log("Turning Bounty on Garrick Padfoot");

TurnInQuestAt(823,6);    --- Bounty on Garrick Padfoot
if (Player.Level <6)  then

DoBags(1213);
end;


Log("Taking Report to Goldshire");

AcceptQuestFrom(197,54);    --- Report to Goldshire


Log("Taking Rest and Relaxation");

AcceptQuestFrom(6774,2158);    --- Rest and Relaxation

Log("Turning Report to Goldshire");

TurnInQuestAt(240,54);    --- Report to Goldshire

Log("Turning Rest and Relaxation");

TurnInQuestAt(295,2158);    --- Rest and Relaxation
Log("Taking Hearthstone");

if HasPlayerFinishedQuest(60)==false  then
 QuestGoToPoint(-9466.45,15.73886,56.96272);
Log("Taking Hearthstone");

Innkeeper();
SleepPlugin(2000);
UseMacro("Hearthstone3");
SleepPlugin(2000);
UseMacro("Hearthstone3");
SleepPlugin(2000);
UseMacro("Hearthstone3");
SleepPlugin(2000);
end;

Log("Taking Kobold Candles");

AcceptQuestFrom(253,60);    --- Kobold Candles

Log("Taking Gold Dust Exchange");

AcceptQuestFrom(241,47);    --- Gold Dust Exchange

Log("Taking The Fargodeep Mine");

AcceptQuestFrom(240,62);    --- The Fargodeep Mine


if (Player.Level <6)  then
Log("Grind to 6");

Grind = {};
Grind[1] = 113;
Grind = CreateObjective("KillMobsAndLoot",3,8,3,319,TableToList(Grind));
GrindUntilLvl(6,Grind,true);
end;
if (Player.Level <8)  then

DoBags(2046);
end;

if (Player.Level ==6) and (Player.Class == 2) then
QuestTrainAt(927);
Log("Training");
QuestTrainAt(459);
UseMacro("TrainMe");
SleepPlugin(2000);
end;

if (Player.Level ==6) and (Player.Class == 1) then
QuestTrainAt(913);
Log("Training");
QuestTrainAt(459);
UseMacro("TrainMe");
SleepPlugin(2000);
end;
if (Player.Level ==6) and (Player.Class == 4) then
QuestTrainAt(917);
Log("Training");
QuestTrainAt(459);
UseMacro("TrainMe");
SleepPlugin(2000);
end;
if (Player.Level ==6) and (Player.Class == 5) then
QuestTrainAt(377);
Log("Training");
QuestTrainAt(459);
UseMacro("TrainMe");
SleepPlugin(2000);
end;
if (Player.Level ==6) and (Player.Class == 8) then
QuestTrainAt(328);
Log("Training");
QuestTrainAt(459);
UseMacro("TrainMe");
SleepPlugin(2000);
end;
if (Player.Level ==6) and (Player.Class == 9) then
QuestTrainAt(906);
Log("Training");
QuestTrainAt(906);
UseMacro("TrainMe");
SleepPlugin(2000);
end;

Log("Taking Lost Necklace");

AcceptQuestFrom(246,85);    --- Lost Necklace

Log("Taking Princess Must Die!");

AcceptQuestFrom(244,88);    ---Princess Must Die!

Log("Doing Kobold Candles");

Candle = {};
Candle[1] = 40;
KillLootCandle = CreateObjective("KillMobsAndLoot",1,8,1,60,TableToList(Candle));
MyInfo = DoObjective(KillLootCandle);

Log("Doing Gold Dust Exchange");

Dust = {};
Dust[1] = 40;
KillLootDust = CreateObjective("KillMobsAndLoot",1,10,1,47,TableToList(Dust));
MyInfo = DoObjective(KillLootDust);

if (Player.Level <8)  then

DoBags(2046);
end;

Log("Turning Lost Necklace");

TurnInQuestAt(247,85);    --- Lost Necklace

Log("Taking Pie for Billy");

AcceptQuestFrom(247,86);    --- Pie for Billy

Log("Taking Young Lovers");

AcceptQuestFrom(251,106);    --- Young Lovers

Log("Doing Pie for Billy");

Pie = {};
Pie[1] = 524;
KillLootPie = CreateObjective("KillMobsAndLoot",1,4,1,86,TableToList(Pie));
MyInfo = DoObjective(KillLootPie);

if (Player.Level <8)  then

DoBags(2046);
end;

Log("Turning Young Lovers");

TurnInQuestAt(252,106);    --- Young Lovers

Log("Taking Speak with Gramma");

AcceptQuestFrom(252,111);    --- Speak with Gramma

Log("Turning Pie for Billy");

TurnInQuestAt(246,86);    --- Pie for Billy

Log("Taking Back to Billy");

AcceptQuestFrom(246,84);    --- Back to Billy

Log("Turning Speak with Gramma");

TurnInQuestAt(248,111);    --- Speak with Gramma

Log("Taking Note to William");

AcceptQuestFrom(248,107);    --- Note to William

Log("Turning Back to Billy");

TurnInQuestAt(247,84);    --- Back to Billy

Log("Taking Goldtooth");

if (Player.Level <8)  then
Log("Grind to 8");

Goldtooth = {};
Goldtooth[1] = 40;
KillLootGoldtooth = CreateObjective("KillMobsAndLoot",1,1,1,87,TableToList(Goldtooth));
MyInfo = DoObjective(KillLootGoldtooth);
end;

AcceptQuestFrom(247,87);    --- Goldtooth
if IsOnQuest(87)== true then
Log("Doing Goldtooth");
QuestGoToPoint(-9753.248,116.2802,14.82017);

Goldtooth = {};
Goldtooth[1] = 327;
KillLootGoldtooth = CreateObjective("KillMobsAndLoot",1,1,1,87,TableToList(Goldtooth));
MyInfo = DoObjective(KillLootGoldtooth);
end;

Log("Turning Goldtooth");

TurnInQuestAt(246,87);    --- Goldtooth

Log("Turning Gold Dust Exchange");

TurnInQuestAt(241,47);    --- Gold Dust Exchange


Log("Taking A Fishy Peril");

AcceptQuestFrom(241,40);    --- A Fishy Peril
if (Player.Level <=8)  then

DoBags(2046);
end;
Log("Turning A Fishy Peril");

TurnInQuestAt(240,40);    --- A Fishy Peril

Log("Taking Further Concerns");

AcceptQuestFrom(240,35);    --- Further Concerns

Log("Taking The Fargodeep Mine");

AcceptQuestFrom(240,62);    --- The Fargodeep Mine

Log("Taking The Jasperlode Mine");

AcceptQuestFrom(240,76);    --- Jasperlode Mine

Log("Turning Kobold Candles");

TurnInQuestAt(253,60);    --- Kobold Candles

Log("Taking Shipment to Stormwind");

AcceptQuestFrom(253,61);    --- Shipment to Stormwind




if (Player.Level ==8) and (Player.Class == 2)  and HasPlayerFinishedQuest(107)==false then
Log("Training");

QuestTrainAt(927);
SleepPlugin(2000);
UseMacro("TrainMe");
SleepPlugin(2000);
end;

Log("Turning Note to William");

TurnInQuestAt(253,107);    --- Note to William

Log("Taking Collecting Kelp");

AcceptQuestFrom(253,112);    --- Collecting Kelp

Log("Doing Kelp");

Kelp = {};
Kelp[1] = 735;
KillLootKelp = CreateObjective("KillMobsAndLoot",1,4,1,112,TableToList(Kelp));
MyInfo = DoObjective(KillLootKelp);



if IsOnQuest(88)== true then
Log("Doing Princess");
QuestGoToPoint(-9758.289,-873.542,39.51582);

Princess = {};
Princess[1] = 330;
KillLootPrincess = CreateObjective("KillMobsAndLoot",1,1,1,88,TableToList(Princess));
MyInfo = DoObjective(KillLootPrincess);
end;

if HasPlayerFinishedQuest(76)==false then
Log("Doing The Fargodeep Mine");
QuestGoToPoint(-9100.666,-564.2968,61.3069);
end;

if HasPlayerFinishedQuest(76)==false then
Log("Hearthing");

UseHearthStone();
SleepPlugin(5000);
end;

Log("Turning Collecting Kelp");

TurnInQuestAt(253,112);    --- Collecting Kelp

Log("Turning The Jasperlode Mine");

TurnInQuestAt(240,76);    --- The Fargodeep Mine

Log("Turning Princess Must Die!");

TurnInQuestAt(244,88);    ---Princess Must Die!

Log("Turning Further Concerns");

TurnInQuestAt(261,35);    --- Further Concerns

Log("Taking Find the Lost Guards");

AcceptQuestFrom(261,37);    --- Find the Lost Guards

Log("Taking Protect the Frontier");

AcceptQuestFrom(261,52);    --- Protect the Frontier

Log("Doing Protect the Frontier");

Prowler = {};
Prowler[1] = 118;
KillLootProwler = CreateObjective("KillMobsAndLoot",1,8,2,52,TableToList(Prowler));
MyInfo = DoObjective(KillLootProwler);

Bear = {};
Bear[1] = 822;
KillLootBear = CreateObjective("KillMobsAndLoot",2,5,2,52,TableToList(Bear));
MyInfo = DoObjective(KillLootBear);

Log("Turning Find the Lost Guards");
if HasPlayerFinishedQuest(37)== false then
QuestGoToPoint(-9342.755,-987.5959,67.8389);
SleepPlugin(2000);
InteractWithGuard();
SleepPlugin(2000);

end;



Log("Taking A Bundle of Trouble");

AcceptQuestFrom(10616,5545);    --- A Bundle of Trouble

if (Player.Level >8) and HasPlayerFinishedQuest(5545)==false then

DoBags (1198);
end;

if HasPlayerFinishedQuest(5545)==false then
Log("Doing  A Bundle of Trouble");

Bundle = {};
Bundle[1] = 176793;
CollectBundle = CreateObjective("GatherObject",1,8,1,5545,nil,TableToList(Bundle));
MyInfo = DoObjective(CollectBundle);

end;

if HasPlayerFinishedQuest(45)== false then
Log("Turning Discover Rolf's Fate");
QuestGoToPoint(-9252.368,-1244.068,73.82883);
SleepPlugin(2000);

InteractWithRolf();
SleepPlugin(2000);

end;


Log("Turning A Bundle of Trouble");

TurnInQuestAt(10616,5545);    --- A Bundle of Trouble

Log("Taking Red Linen Goods");

AcceptQuestFrom(278,83);    --- Red Linen Goods

Log("Turning Protect the Frontier");

TurnInQuestAt(261,52);    --- Protect the Frontier

Log("Turning Report to Thomas");

TurnInQuestAt(261,71);    --- Report to Thomas

Log("Taking Report to Gryan Stoutmantle");

AcceptQuestFrom(261,109);    --- Report to Gryan Stoutmantle

Log("Doing Red Linen Goods");

if HasPlayerFinishedQuest(83)==false then
QuestGoToPoint(-9699.286,-845.0477,43.97099);
Goods = {};
Goods[1] = 116;
KillLootGoods = CreateObjective("KillMobsAndLoot",1,6,1,83,TableToList(Goods));
MyInfo = DoObjective(KillLootGoods);
end;




if (Player.Level >8) and HasPlayerFinishedQuest(83)==false then
DoBags (1198);
end;
Log("Turning Red Linen Goods");

TurnInQuestAt(278,83);    --- Red Linen Goods
Log("Getting  RedridgeFP");

if (IsOnQuest(39)==true) then

QuestGoToPoint(-9613.338,-1714.411,56.04213);
QuestGoToPoint(-9587.507,-1912.695,62.32493);
QuestGoToPoint(-9574.431,-2095.281,79.75043);
QuestGoToPoint(-9522.275,-2236.25,80.7622);
QuestGoToPoint(-9446.712,-2245.989,71.82812);

RedridgeFP();
end;


Log("HS to Goldshire");

if (IsOnQuest(39)==true) then

UseHearthStone();
end;


if (Player.Level >=10) and (Player.Class == 9)  and HasPlayerFinishedQuest(39)==false then
Log("Training");

QuestTrainAt(906);
SleepPlugin(2000);
UseMacro("TrainMe");
SleepPlugin(2000);
end;

if (Player.Level >=10) and (Player.Class == 9)  then
Log("Taking Gakin Summons");
AcceptQuestFrom(6121,1685);    --- Gakin Summons

end;

Log("Turning Deliver Thomas' Report");

TurnInQuestAt(240,39);    --- Deliver Thomas' Report

if (Player.Level >=11) and (Player.Class == 2)  then
Log("Training");

QuestTrainAt(927);
SleepPlugin(2000);
UseMacro("TrainMe");
SleepPlugin(2000);
end;

Log("Taking The Escape");

AcceptQuestFrom(253,114);    --- The Escape
Log("Turning Shipment to Stormwind");

if (IsOnQuest(61)==true) then

QuestGoToPoint(-8860.328,621.5507,95.98809);    

TurnInQuestAt(279,61);    --- Shipment to Stormwind
end;






Log("Turning The Escape");

TurnInQuestAt(251,114);    --- The Escape

Log("Taking Bounty on Murlocs");

AcceptQuestFrom(261,46);    --- Bounty on Murlocs
if (Player.Level >8) and HasPlayerFinishedQuest(46)==false then
DoBags (1198);
end;
Log("Doing Bounty on Murlocs");

Fin = {};
Fin[1] = 732;
KillLootFin = CreateObjective("KillMobsAndLoot",1,8,1,46,TableToList(Fin));
MyInfo = DoObjective(KillLootFin);

Log("Turning Bounty on Murlocs");

TurnInQuestAt(261,46);    --- Bounty on Murlocs

Log("Turning Cloth and Leather Armor");

TurnInQuestAt(278,59);    --- Cloth and Leather Armor


if (Player.Level >8) and HasPlayerFinishedQuest(239)==false then
DoBags (1198);
end;
Log("Hearthing");

if IsOnQuest(239)==false then
SleepPlugin(2000);
UseHearthStone();
SleepPlugin(2000);
end;

Log("Taking Westbrook Garrison Needs Help!");

AcceptQuestFrom(240,239);    --- Westbrook Garrison Needs Help!

Log("Turning Westbrook Garrison Needs Help!");

TurnInQuestAt(963,239);    --- Westbrook Garrison Needs Help!
 
Log("Taking Riverpaw Gnoll Bounty");

AcceptQuestFrom(963,11);    --- Riverpaw Gnoll Bounty

Log("Taking Wanted: \"Hogger\"");

AcceptQuestFrom(156561,176);    --- Wanted: \"Hogger\"


Log("Doing Riverpaw Gnoll Bounty");

Armband = {};
Armband[1] = 478;
KillLootArmband = CreateObjective("KillMobsAndLoot",1,8,1,11,TableToList(Armband));
MyInfo = DoObjective(KillLootArmband);

Log("Doing Hogger");
--QuestGoToPoint(-9446.712,-2245.989,71.82812);

Hogger = {};
Hogger[1] = 448;
KillLootHogger = CreateObjective("KillMobsAndLoot",1,1,1,176,TableToList(Hogger));
MyInfo = DoObjective(KillLootHogger);

Log("Turning Riverpaw Gnoll Bounty");

TurnInQuestAt(963,11);    --- Riverpaw Gnoll Bounty

Log("Turning Wanted: \"Hogger\"");

TurnInQuestAt(240,176);    --- Wanted: \"Hogger\"


Log("That is it for now :-)");

StopQuestProfile();