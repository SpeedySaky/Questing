--------------------------------------------------

--- Just setting up some useful vars
Player = GetPlayer();
----- Welcome to questing profiles by SpeedySaky !
		Log("Welcome to questing profiles by SpeedySaky !");
		Log("This is Westfall profile--enjoy");

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
-- Interact with NPC
-----------------------------------------

function Innkeeper() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Innkeeper Heather") and (IsUnitValid(Unit)== true) then
         Log("Found the Innkeeper!");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end;

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


function Verna() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Verna Furlbrow") and (IsUnitValid(Unit)== true) then
         Log("Found Verna Furlbrow");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end;
function Trainer() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Katherine the Pure") and (IsUnitValid(Unit)== true) then
         Log("Found Katherine the Pure");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end;

function Innkeeper2() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Innkeeper Brianna") and (IsUnitValid(Unit)== true) then
         Log("Found Innkeeper Brianna");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
		

      end; -- IF
   end; -- For Each
end;

function Innkeeper3() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Innkeeper Trelayne") and (IsUnitValid(Unit)== true) then
         Log("Found the Innkeeper!");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end;

function Duthorian() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Duthorian Rall") and (IsUnitValid(Unit)== true) then
         Log("Found Duthorian Rall");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end;

-----------------------------------------
-- Interact with object functions
-----------------------------------------




------------------------------------------
info = Player.Class
Log("Found: " .. info)
------------------------------------------
--  Move to zone first quest
Log("Lets go do some quests " .. info)





if CanTurnInQuest(36)== true then

Log("Turning Westfall Stew");

TurnInQuestAt(235,36);    --- Westfall Stew
end;

Log("Taking Westfall Stew-2");

AcceptQuestFrom(235,38);    --- Westfall Stew-2

Log("Taking Goretusk Liver Pie");
AcceptQuestFrom(235,22);    --- Goretusk Liver Pie


Log("Doing Westfall Stew-2");




Meat = {}; 
Meat[1] = 199;  
KillLootMeat = CreateObjective("KillMobsAndLoot",1,3,4,38,TableToList(Meat));
MyInfo = DoObjective(KillLootMeat);

Eye = {}; 
Eye[1] = 515;  
KillLootEye = CreateObjective("KillMobsAndLoot",2,3,4,38,TableToList(Eye));
MyInfo = DoObjective(KillLootEye);

Snout = {}; 
Snout[1] = 454;  
KillLootSnout = CreateObjective("KillMobsAndLoot",3,3,4,38,TableToList(Snout));
MyInfo = DoObjective(KillLootSnout);

Okra = {}; 
Okra[1] = 36;  
KillLootOkra = CreateObjective("KillMobsAndLoot",4,3,4,38,TableToList(Okra));
MyInfo = DoObjective(KillLootOkra);

Log("Doing Goretusk Liver Pie");

Pie = {}; 
Pie[1] = 454;  
KillLootPie = CreateObjective("KillMobsAndLoot",1,8,1,22,TableToList(Pie));
MyInfo = DoObjective(KillLootPie);



Log("Doing Poor Old Blanchy");

Oats = {};
Oats[1] = 2724;
CollectOats = CreateObjective("GatherObject",1,8,1,151,nil,TableToList(Oats));
MyInfo = DoObjective(CollectOats);
Log("Doing The Forgotten Heirloom");

Heirloom = {};
Heirloom[1] = 290;
CollectHeirloom = CreateObjective("GatherObject",1,1,1,64,nil,TableToList(Heirloom));
MyInfo = DoObjective(CollectHeirloom);



if HasPlayerFinishedQuest(151)==false then
Log("Turning Poor Old Blanchy");

TurnInQuestAt(238,151);    --- Poor Old Blanchy

end;

Log("Turning The Forgotten Heirloom");
if HasPlayerFinishedQuest(64)==false then

TurnInQuestAt(237,64);    --- Furlbrow's Deed
end;

if HasPlayerFinishedQuest(38)==false then

TurnInQuestAt(235,38);    --- Westfall Stew-2
Log("Turning Westfall Stew-2");
end;
if HasPlayerFinishedQuest(22)==false then

Log("Turning Goretusk Liver Pie");
TurnInQuestAt(235,22);    --- Goretusk Liver Pie
end;

Log("Turning Report to Gryan Stoutmantle");
TurnInQuestAt(234,109);    --- Report to Gryan Stoutmantle


Log("Taking The People's Militia");
AcceptQuestFrom(234,12);    --- The People's Militia

Log("Taking A Swift Message");
AcceptQuestFrom(491,6181);    --- A Swift Message


Log("Taking Patrolling Westfall");
AcceptQuestFrom(821,102);    --- Patrolling Westfall

Log("Taking Red Leather Bandanas");
AcceptQuestFrom(878,153);    --- Red Leather Bandanas

if (Player.Level >=10) and HasPlayerFinishedQuest(6281)==false  then
Log("Taking Hearthstone");
QuestGoToPoint(-10627.66,1147.69,33.86063);    
Innkeeper();
SleepPlugin(2000);
UseMacro("Hearthstone2");
SleepPlugin(2000);
UseMacro("Hearthstone2");
SleepPlugin(2000);
UseMacro("Hearthstone2");
SleepPlugin(2000);
end;


if (Player.Level >=12) and (Player.Level <=18) then
DoBags (1668);
end;

Log("Getting  WestfallFP");
if (IsOnQuest(6181)==true) then

WestfallFP();
end;
Log("Turning A Swift Message");
TurnInQuestAt(523,6181);    --- A Swift Message

Log("Taking Continue to Stormwind");
AcceptQuestFrom(523,6281);    --- Continue to Stormwind


if (IsOnQuest(61)==true) then
QuestGoToPoint(-10627.74,1038.647,34.12702);    
WestfallFP();
SleepPlugin(2000);
UseMacro("Gossip1");
SleepPlugin(2000);
UseMacro("Stormwind");
Log("Flying to Stormwind");
SleepPlugin(2000);
UseMacro("Stormwind");
SleepPlugin(2000);
UseMacro("Stormwind");
SleepPlugin(2000);
SleepPlugin(90000);

end;

Log("Turning Continue to Stormwind");
TurnInQuestAt(1323,6281);    --- Continue to Stormwind

Log("Turning Tome of Divinity");

if (Player.Class == 2) and HasPlayerFinishedQuest(2998)==false then 
QuestGoToPoint(-8546.746,842.1191,106.5187); 
TurnInQuestAt(6171,2998);    --- Tome of Divinity

end;

Log("Training");

if (Player.Level >=12) and HasPlayerFinishedQuest(1642)==false  then
QuestGoToPoint(-8569.891,872.1966,106.5186);
Trainer();
SleepPlugin(2000);
UseMacro("Gossip2");
SleepPlugin(2000);
UseMacro("TrainMe");
SleepPlugin(2000);
UseMacro("TrainMe");
SleepPlugin(2000);

end;

if (Player.Class == 2) and (Player.Level >=12) and(IsOnQuest(1642)==false) and (HasItem("Tome of Divinity")==true) then

UseItem("Tome of Divinity");
SleepPlugin(2000);
end;

if (Player.Class == 2) then
Log("Turning Tome of Divinity");
TurnInQuestAt(6171,1642);    --- Tome of Divinity
end;

Log("Taking Humble Beginnings");
AcceptQuestFrom(1646,399);    --- Humble Beginnings
if (Player.Class == 2) and(IsOnQuest(1643)==true) then
Log("Turning Tome of Divinity");
TurnInQuestAt(6174,1643);    --- Tome of Divinity
end;
if (Player.Class == 2) and(IsOnQuest(1644)==true) then

Log("Turning Tome of Divinity");
TurnInQuestAt(6174,1644);    --- Tome of Divinity
end;

if (Player.Class == 2) and (HasPlayerFinishedQuest(1780)==false) then 
QuestGoToPoint(-8546.746,842.1191,106.5187); 
Log("Turning Tome of Divinity");
TurnInQuestAt(6171,1780);    --- Tome of Divinity
end;
if (Player.Class == 2) and(IsOnQuest(1781)==true) then

Log("Turning Tome of Divinity");
TurnInQuestAt(6173,1781);    --- Tome of Divinity
end;
Log("Turning Dungar Longdrink");

if  HasPlayerFinishedQuest(6261)==false then 
QuestGoToPoint(-8843.952,493.1302,109.6061); 

TurnInQuestAt(352,6261);    --- Dungar Longdrink
end;

Log("Flying to Westfall");

if (HasPlayerFinishedQuest(6285)==false) then
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

Log("Turning Return to Lewis");
TurnInQuestAt(491,6285);    --- Return to Lewis

Log("Doing Red Leather Bandanas");

Bandanas = {}; 
Bandanas[1] = 95;  
KillLootBandanas = CreateObjective("KillMobsAndLoot",1,15,1,153,TableToList(Bandanas));
MyInfo = DoObjective(KillLootBandanas);

Log("Doing Militia 1");

Trapper = {}; 
Trapper[1] = 504;  
KillLootTrapper = CreateObjective("KillMobsAndLoot",1,15,2,12,TableToList(Trapper));
MyInfo = DoObjective(KillLootTrapper);

Smuggler = {}; 
Smuggler[1] = 95;  
KillLootSmuggler = CreateObjective("KillMobsAndLoot",2,15,2,12,TableToList(Smuggler));
MyInfo = DoObjective(KillLootSmuggler);

Log("Turning Red Leather Bandanas");
TurnInQuestAt(878,153);    --- Red Leather Bandanas

Log("Turning Militia");
TurnInQuestAt(234,12);    --- Militia

if (Player.Level >=12) and (Player.Level <=18) then

DoBags(1668);
end;


Log("Taking The Killing Fields");
AcceptQuestFrom(233,9);    --- The Killing Fields

Log("Doing The Killing Fields");

Watcher = {}; 
Watcher[1] = 114;  
KillLootWatcher = CreateObjective("KillMobsAndLoot",1,20,1,9,TableToList(Watcher));
MyInfo = DoObjective(KillLootWatcher);

if (Player.Level >=12) and (Player.Level <=18) then
DoBags(1668);
end;

Log("Turning The Killing Fields");
TurnInQuestAt(233,9);    --- The Killing Fields

Log("Doing Patrolling Westfall");

Paw = {}; 
Paw[1] = 500;  
KillLootPaw = CreateObjective("KillMobsAndLoot",1,8,1,102,TableToList(Paw));
MyInfo = DoObjective(KillLootPaw);

Log("Doing Humble Beginnings");

Compass = {};
Compass[1] = 1166;
CollectCompass = CreateObjective("GatherObject",1,1,1,399,nil,TableToList(Compass));
MyInfo = DoObjective(CollectCompass);

Log("Turning Patrolling Westfall");
TurnInQuestAt(821,102);    --- Patrolling Westfall

Log("Doing Militia2");

Pillager = {}; 
Pillager[1] = 589;  
KillLootPillager = CreateObjective("KillMobsAndLoot",1,15,2,13,TableToList(Pillager));
MyInfo = DoObjective(KillLootPillager);


Looter = {}; 
Looter[1] = 590;  
KillLootLooter = CreateObjective("KillMobsAndLoot",2,15,2,13,TableToList(Looter));
MyInfo = DoObjective(KillLootLooter);

Log("Turning Militia2");
TurnInQuestAt(234,13);    --- Militia

if (Player.Level >=12) and (Player.Level <=18) then
DoBags(1668);
end;




if (CanTurnInQuest(399)==true) then
QuestGoToPoint(-10627.74,1038.647,34.12702);    
WestfallFP();
Log("Flying to SW");
SleepPlugin(2000);
UseMacro("Gossip1");
SleepPlugin(2000);
UseMacro("Stormwind");
Log("Flying to Stormwind");
SleepPlugin(2000);
UseMacro("Stormwind");
SleepPlugin(2000);
UseMacro("Stormwind");
SleepPlugin(2000);
SleepPlugin(90000);

end;

if (Player.Level >=16) and (HasPlayerFinishedQuest(399)==false)  then
QuestGoToPoint(-8569.891,872.1966,106.5186);
Trainer();
Log("Training");
SleepPlugin(2000);
UseMacro("Gossip2");
SleepPlugin(2000);
UseMacro("TrainMe");
SleepPlugin(2000);
UseMacro("TrainMe");
SleepPlugin(2000);

end;

if IsOnQuest(399) then
Log("Turning Humble Beginnings");
TurnInQuestAt(1646,399);    --- Humble Beginnings

end;

if (IsOnQuest(65)==true)  then
QuestGoToPoint(-8840.56,489.7,109.6099);
StormwindFP();
Log("Flying to Lakeshire");
UseMacro("Gossip1");
SleepPlugin(2000);
UseMacro("Lakeshire");
SleepPlugin(2000);
UseMacro("Lakeshire");
SleepPlugin(2000);
UseMacro("Lakeshire");
SleepPlugin(2000);
SleepPlugin(120000);

end;

if IsOnQuest(65) then
QuestGoToPoint(-9230.551,-2148.631,71.21226);

Log("Turning The Defias Brotherhood");
TurnInQuestAt(266,65);    --- The Defias Brotherhood
end;


Log("Taking A Free Lunch");
AcceptQuestFrom(379,129);    --- A Free Lunch

Log("Taking Hilary's Necklace");
AcceptQuestFrom(8965,3741);    --- Hilary's Necklace


Log("Taking The Lost Tools");
AcceptQuestFrom(341,125);    --- The Lost Tools

Log("Taking The Price of Shoes");
AcceptQuestFrom(415,118);    --- The Price of Shoes


Log("Doing The Lost Tools");

Tools = {};
Tools[1] = 32;
CollectTools = CreateObjective("GatherObject",1,1,1,125,nil,TableToList(Tools));
MyInfo = DoObjective(CollectTools);

Log("Doing Hilary's Necklace");

Necklace = {};
Necklace[1] = 154357;
CollectNecklace = CreateObjective("GatherObject",1,1,1,3741,nil,TableToList(Necklace));
MyInfo = DoObjective(CollectNecklace);

Log("Turning Hilary's Necklace");
TurnInQuestAt(8962,3741);    --- Hilary's Necklace


Log("Turning The Lost Tools");
TurnInQuestAt(341,125);    --- The Lost Tools

Log("Turning A Free Lunch");
TurnInQuestAt(464,129);    --- A Free Lunch

Log("Accept Enroaching Gnolls");
AcceptQuestFrom(464,244);    --- Enroaching Gnolls


if (Player.Class == 2) and (IsOnQuest(1786)== true) then   --- Paladin

Log("Doing Tome of Divinity");
QuestGoToPoint(-9130.982,-986.6014,75.71194);
SleepPlugin(2000);
Log("Using Macro");
UseMacro("Henze");
SleepPlugin(2000);
Log("Using Item");

UseItem("Symbol of Life");
SleepPlugin(15000);

end;


if (Player.Class == 2) and (HasPlayerFinishedQuest(1768)== true) then   --- Paladin

Log("Turning The Tome of Divinity");
TurnInQuestAt(6172,1786);    --- The Tome of Divinity
end;

Log("Taking The Tome of Divinity");
AcceptQuestFrom(6172,1787);    --- The Tome of Divinity

Log("Doing The Tome of Divinity");

Script = {}; 
Script[1] = 474;  
KillLootScript = CreateObjective("KillMobsAndLoot",1,1,1,1787,TableToList(Script));
MyInfo = DoObjective(KillLootScript);



Log("Turning The Price of Shoes");
TurnInQuestAt(514,118);    --- The Price of Shoes
if (Player.Class == 2) and (CanTurnInQuest(1787)== true) then   --- Paladin
QuestGoToPoint(-8518.538,858.2464,109.5805)
Log("Turning The Tome of Divinity");
TurnInQuestAt(6173,1787);    --- The Tome of Divinity
end;




if CanTurnInQuest(132)==true then
Log("Hearthing");

UseHearthStone();
SleepPlugin(10000);
end;

Log("Turning The Defias Brotherhood");
TurnInQuestAt(234,132);    --- The Defias Brotherhood

Log("Taking The Defias Brotherhood");
AcceptQuestFrom(234,14);    --- The Defias Brotherhood

Log("Doing The Defias Brotherhood");

Highwayman = {}; 
Highwayman[1] = 122;  
KillLootHighwayman = CreateObjective("KillMobsAndLoot",1,15,3,14,TableToList(Highwayman));
MyInfo = DoObjective(KillLootHighwayman);

Pathstalker = {}; 
Pathstalker[1] = 121;  
KillLootPathstalker = CreateObjective("KillMobsAndLoot",2,5,3,14,TableToList(Pathstalker));
MyInfo = DoObjective(KillLootPathstalker);

Knuckleduster = {}; 
Knuckleduster[1] = 449;  
KillLootKnuckleduster = CreateObjective("KillMobsAndLoot",3,5,3,14,TableToList(Knuckleduster));
MyInfo = DoObjective(KillLootKnuckleduster);

Log("Turning The Defias Brotherhood");
TurnInQuestAt(234,14);    --- The Defias Brotherhood
Log("Grind to 18");

if Player.Level<=18 then
Grind = {};
Grind[1] = 121;
Grind = CreateObjective("KillMobsAndLoot",3,8,3,319,TableToList(Grind));
GrindUntilLvl(19,Grind,true);



end;

if (Player.Level >=12) and (Player.Level <=18) then
DoBags(1668);
end;

if HasPlayerFinishedQuest(103)==false then
QuestGoToPoint(-11385.76,1944.942,2.531227)
end;


Log("Taking Keeper of the Flame");
AcceptQuestFrom(392,103);    --- Keeper of the Flame

Log("Taking The Coast Isn't Clear");
AcceptQuestFrom(392,152);    --- The Coast Isn't Clear

Log("Taking The Coastal Menace");
AcceptQuestFrom(392,104);    --- The Coastal Menace

Log("Turning Keeper of the Flame");
TurnInQuestAt(392,103);    --- Keeper of the Flame



if HasPlayerFinishedQuest(152)==false then
Log("Going for  The Coast Isn't Clear");

QuestGoToPoint(-9693.31,1495.395,22.92626)
end;

if HasPlayerFinishedQuest(152)==false then
Log("Doing The Coast Isn't Clear");
Coastrunner = {}; 
Coastrunner[1] = 126;  
KillLootCoastrunner = CreateObjective("KillMobsAndLoot",1,7,4,152,TableToList(Coastrunner));
MyInfo = DoObjective(KillLootCoastrunner);

Warrior = {}; 
Warrior[1] = 171;  
KillLootWarrior = CreateObjective("KillMobsAndLoot",2,7,4,152,TableToList(Warrior));
MyInfo = DoObjective(KillLootWarrior);

Tidehunter = {}; 
Tidehunter[1] = 127;  
KillLootTidehunter = CreateObjective("KillMobsAndLoot",3,7,4,152,TableToList(Tidehunter));
MyInfo = DoObjective(KillLootTidehunter);

Oracle = {}; 
Oracle[1] = 127;  
KillLootOracle = CreateObjective("KillMobsAndLoot",4,7,4,152,TableToList(Oracle));
MyInfo = DoObjective(KillLootOracle);
end;

if HasPlayerFinishedQuest(104)==false then
Log("Going for The Coastal Menace");

QuestGoToPoint(-11332.01,1860.482,10.91963)
end;


if HasPlayerFinishedQuest(104)==false then

Log("Doing The Coastal Menace");
Murk = {}; 
Murk[1] = 391;  
KillLootMurk = CreateObjective("KillMobsAndLoot",1,1,1,104,TableToList(Murk));
MyInfo = DoObjective(KillLootMurk);
end;

if CanTurnInQuest(104)==true then
Log("Going on island");

QuestGoToPoint(-11385.76,1944.942,2.531227)
end;

Log("Turning The Coast Isn't Clear");
TurnInQuestAt(392,152);    --- The Coast Isn't Clear

Log("Turning The Coastal Menace");
TurnInQuestAt(392,104);    --- The Coastal Menace

if IsOnQuest(1788)==true then
Log("Hearthing");

UseHearthStone();
SleepPlugin(5000);
end;


Log("Flying to Stormwind");

if (IsOnQuest(1788)==true) then
QuestGoToPoint(-10627.74,1038.647,34.12702);    
WestfallFP();
SleepPlugin(2000);
UseMacro("Gossip1");
SleepPlugin(2000);
UseMacro("Stormwind");
Log("Flying to Stormwind");
SleepPlugin(2000);
UseMacro("Stormwind");
SleepPlugin(2000);
UseMacro("Stormwind");
SleepPlugin(2000);
SleepPlugin(90000);

end;

if (IsOnQuest(1788)==true) then

Log("Turning The Tome of Divinity");
QuestGoToPoint(-8518.538,858.2464,109.5805)
TurnInQuestAt(6171,1788);    --- The Tome of Divinity
end;

if (IsOnQuest(1097)==true) then
Log("Turning Elmore's Task");
QuestGoToPoint(-8392.825,686.6979,95.27206);    

TurnInQuestAt(1416,1097);    --- Elmore's Task

end;

if (IsOnQuest(135)==true) then

Log("Turning Defias Brotherhood");
QuestGoToPoint(-8814.818,361.4208,109.5209);    

TurnInQuestAt(332,135);    --- Defias Brotherhood
end;


Log("Flying to Westfall");

if (IsOnQuest(141)==true) then
QuestGoToPoint(-8840.56,489.7,109.6099);

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

Log("Turning Defias Brotherhood");
TurnInQuestAt(234,141);    --- Defias Brotherhood

Log("Taking Defias Brotherhood");
AcceptQuestFrom(234,142);    --- Defias Brotherhood


if (IsOnQuest(142)==true) then
QuestGoToPoint(-10656.99,1517.626,47.13383);

Log("Doing Defias Brotherhood");

Messenger = {}; 
Messenger[1] = 550;  
KillLootMessenger = CreateObjective("KillMobsAndLoot",1,1,1,142,TableToList(Messenger));
MyInfo = DoObjective(KillLootMessenger);
end;
Log("Turning Defias Brotherhood");
TurnInQuestAt(234,142);    --- Defias Brotherhood

Log("Taking Jitters Growling Gut");
AcceptQuestFrom(288,5);    --- Jitters Growling Gut

Log("Taking Wolves at Our Heels");
AcceptQuestFrom(893,226);    --- Wolves at Our Heels

if (IsOnQuest(244)==true) then
Log("Flying to Lakeshire");

QuestGoToPoint(-10627.74,1038.647,34.12702);    
WestfallFP();
SleepPlugin(2000);
UseMacro("Gossip1");
SleepPlugin(2000);
UseMacro("Lakeshire");
Log("Flying to Lakeshire");
SleepPlugin(2000);
UseMacro("Lakeshire");
SleepPlugin(2000);
UseMacro("Lakeshire");
SleepPlugin(2000);
SleepPlugin(120000);

end;


Log("Turning Enroaching Gnolls");
TurnInQuestAt(1070,142);    --- Enroaching Gnolls

Log("Turning Visit the Herbalist");
TurnInQuestAt(342,130);    ---Visit the Herbalist

Log("Turning Delivering Daffodils");
TurnInQuestAt(379,131);    --- Delivering Daffodils

if (Player.Level >=18) and HasPlayerFinishedQuest(119)==false  then
Log("Taking Hearthstone Lakeshire");
QuestGoToPoint(-9223.311,-2154.86,63.73082);    
Innkeeper2();
SleepPlugin(2000);
UseMacro("Hearthstone2");
SleepPlugin(2000);
UseMacro("Hearthstone2");
SleepPlugin(2000);
UseMacro("Hearthstone2");
SleepPlugin(2000);
end;






Log("Turning Return to Verner");
TurnInQuestAt(415,119);    --- Return to Verner


Log("Taking Messenger to Stormwind");
AcceptQuestFrom(344,120);    --- Messenger to Stormwind

Log("Taking Blackrock Menace");
AcceptQuestFrom(382,20);    --- Blackrock Menace

Log("Taking Assessing the Threat");
AcceptQuestFrom(1070,246);    --- Assessing the Threat

if (Player.Level >=19) and (Player.Level <=25) then
DoBags (956);
end;

Log("Doing Assessing the Threat");

Mongrel = {}; 
Mongrel[1] = 423;  
KillLootMongrel = CreateObjective("KillMobsAndLoot",1,10,2,246,TableToList(Mongrel));
MyInfo = DoObjective(KillLootMongrel);

Poacher = {}; 
Poacher[1] = 424;  
KillLootPoacher = CreateObjective("KillMobsAndLoot",2,6,2,246,TableToList(Poacher));
MyInfo = DoObjective(KillLootPoacher);

if (HasPlayerFinishedQuest(246)==false)  then

Log("Turning Assessing the Threat");
TurnInQuestAt(1070,246);    --- Assessing the Threat
end;

if (IsOnQuest(120)==true)  then
QuestGoToPoint(-9446.712,-2245.989,71.82812);  
RedridgeFP();
Log("Flying to Stormwind");
UseMacro("Gossip1");
SleepPlugin(2000);
UseMacro("Stormwind");
SleepPlugin(2000);
UseMacro("Stormwind");
SleepPlugin(2000);
UseMacro("Stormwind");
SleepPlugin(2000);
SleepPlugin(120000);
end;

if HasPlayerFinishedQuest(120)== false then
Log("Doing Messenger to Stormwind");
QuestGoToPoint(-8959.551,525.0543,96.35619);  

TurnInQuestAt(466,120);    --- Messenger to Stormwind
end;

Log("Training");

if (Player.Level >=20) and HasPlayerFinishedQuest(1649)==false and Player.Class==2 and HasSpell(643)==false  then
QuestGoToPoint(-8569.891,872.1966,106.5186);
Trainer();
SleepPlugin(2000);
UseMacro("Gossip2");
SleepPlugin(2000);
UseMacro("TrainMe");
SleepPlugin(2000);
UseMacro("TrainMe");
SleepPlugin(2000);

end;


if (Player.Level >=12) and HasPlayerFinishedQuest(1649)==false then
Log("Taking The Tome of Valor");
Duthorian();
SleepPlugin(2000)
UseItem("Tome of Valor");
SleepPlugin(2000)
end;

Log("Turning The Tome of Valor");
TurnInQuestAt(6171,1649);    --- The Tome of Valor

Log("Taking Speaking of Fortitude");
AcceptQuestFrom(1444,343);    --- Speaking of Fortitude
if IsOnQuest(343)==true then
Log("Turning Speaking of Fortitude");
QuestGoToPoint(-8349.944,384.3087,122.2752);

TurnInQuestAt(1440,343);    --- Speaking of Fortitude
end;

Log("Taking Brother Paxton");
AcceptQuestFrom(1440,344);    --- Brother Paxton

Log("Turning Brother Paxton");
TurnInQuestAt(951,344);    --- Brother Paxton

Log("Taking Ink Supplies");
AcceptQuestFrom(951,345);    --- Ink Supplies

if IsOnQuest(345)==true then
UseHearthStone();
SleepPlugin(5000);
end;

Log("Turning Messenger to Stormwind");
TurnInQuestAt(344,121);    --- Messenger to Stormwind


Log("Taking Solomon Law");
AcceptQuestFrom(900,91);    --- Solomon Law

Log("Taking A Baying of Gnolls");
AcceptQuestFrom(415,124);    --- A Baying of Gnolls



Log("Turning Ink Supplies");
TurnInQuestAt(341,345);    --- Ink Supplies

Log("Taking Underbelly Scales");
AcceptQuestFrom(415,122);    --- Underbelly Scales

if (IsOnQuest(143)==true)  then
Log("Going to FP");
QuestGoToPoint(-9446.712,-2245.989,71.82812);  
RedridgeFP();
Log("Flying to Westfall");
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

Log("Turning Messenger to Stormwind");
TurnInQuestAt(234,143);    --- Messenger to Stormwind

if (IsOnQuest(144)==true) then
Log("Going to FP");

QuestGoToPoint(-10627.74,1038.647,34.12702);    
WestfallFP();
SleepPlugin(2000);
UseMacro("Gossip1");
SleepPlugin(2000);
UseMacro("Lakeshire");
Log("Flying to Lakeshire");
SleepPlugin(2000);
UseMacro("Lakeshire");
SleepPlugin(2000);
UseMacro("Lakeshire");
SleepPlugin(2000);
SleepPlugin(90000);

end;

Log("Turning Messenger to Stormwind");
TurnInQuestAt(344,144);    --- Messenger to Stormwind

Log("Taking Murloc Poachers");
AcceptQuestFrom(381,150);    --- Murloc Poachers

Log("Taking Selling Fish");
AcceptQuestFrom(381,127);    --- Selling Fish


Log("Taking Redridge Goulash");
AcceptQuestFrom(343,92);    --- Redridge Goulash

Log("Doing Redridge Goulash");

Snout = {}; 
Snout[1] = 547;  
KillLootSnout = CreateObjective("KillMobsAndLoot",1,5,3,92,TableToList(Snout));
MyInfo = DoObjective(KillLootSnout);

Condor  = {}; 
Condor [1] = 428;  
KillLootCondor  = CreateObjective("KillMobsAndLoot",2,5,3,92,TableToList(Condor));
MyInfo = DoObjective(KillLootCondor);

Spider   = {}; 
Spider  [1] = 505;  
KillLootSpider = CreateObjective("KillMobsAndLoot",3,5,3,92,TableToList(Spider));
MyInfo = DoObjective(KillLootSpider);

Log("Doing Murloc Poachers");

Fin = {}; 
Fin  [1] = 1083;  
KillLootFin = CreateObjective("KillMobsAndLoot",1,8,1,150,TableToList(Fin));
MyInfo = DoObjective(KillLootFin);

Log("Doing Underbelly Scales");

Scale = {}; 
Scale  [1] = 441;  
KillLootScale = CreateObjective("KillMobsAndLoot",1,6,1,122,TableToList(Scale));
MyInfo = DoObjective(KillLootScale);

Log("Doing Selling Fish");

Fish = {}; 
Fish  [1] = 1083;  
KillLootFish = CreateObjective("KillMobsAndLoot",1,10,1,127,TableToList(Fish));
MyInfo = DoObjective(KillLootFish);


if (Player.Level >=19) and (Player.Level <=25) then
DoBags (956);
end;

Log("Turning Redridge Goulash");
TurnInQuestAt(343,92);    --- Redridge Goulash

Log("Turning Underbelly Scales");
TurnInQuestAt(415,122);    --- Underbelly Scales

Log("Turning Murloc Poachers");
TurnInQuestAt(381,150);    --- Murloc Poachers

Log("Turning Selling Fish");
TurnInQuestAt(381,127);    --- Selling Fish

Log("Turning Messenger to Darkshire");
TurnInQuestAt(263,145);    --- Messenger to Darkshire	

Log("Turning Jitters Growling Gut");
TurnInQuestAt(272,5);    --- Jitters Growling Gut

if (Player.Level >=20) and IsOnQuest(164)==false  then
Log("Taking Hearthstone");
Innkeeper3();
SleepPlugin(2000);
UseMacro("Hearthstone2");
SleepPlugin(2000);
UseMacro("Hearthstone2");
SleepPlugin(2000);
UseMacro("Hearthstone2");
SleepPlugin(2000);
end;


Log("Taking Deliveries to Sven");
AcceptQuestFrom(633,164);    --- Deliveries to Sven





if (IsOnQuest(146)==true) then
QuestGoToPoint(-10514.73,-1261.438,41.34765);
Log("Getting  DarkshireFP");
DarkshireFP();
end;

if (IsOnQuest(146)==true)  then
DarkshireFP();
Log("Flying to Lakeshire");
UseMacro("Gossip1");
SleepPlugin(2000);
UseMacro("Lakeshire");
SleepPlugin(2000);
UseMacro("Lakeshire");
SleepPlugin(2000);
UseMacro("Lakeshire");
SleepPlugin(2000);
SleepPlugin(120000);

end;

Log("Turning Messenger to Darkshire");
TurnInQuestAt(344,146);    --- Messenger to Darkshire


Log("Doing A Baying of Gnolls");

Brute = {}; 
Brute  [1] = 426;  
KillLootBrute = CreateObjective("KillMobsAndLoot",1,10,2,124,TableToList(Brute));
MyInfo = DoObjective(KillLootBrute);

Mystic = {}; 
Mystic  [1] = 426;  
KillLootMystic = CreateObjective("KillMobsAndLoot",2,8,2,124,TableToList(Mystic));
MyInfo = DoObjective(KillLootMystic);


if IsOnQuest(20)==true then
Log("Doing Blackrock Menace");
QuestGoToPoint(-9674.17,-3088.358,51.6262);
Axe = {}; 
Axe  [1] = 440;  
KillLootAxe = CreateObjective("KillMobsAndLoot",1,10,1,20,TableToList(Axe));
MyInfo = DoObjective(KillLootAxe);
end;

Log("Turning A Baying of Gnolls");
TurnInQuestAt(415,124);    --- A Baying of Gnolls

Log("Turning Blackrock Menace");
TurnInQuestAt(382,20);    --- Blackrock Menace

Log("Turning Everstill Bridge");
TurnInQuestAt(341,89);    --- Blackrock Menace

Log("That is it");

StopQuestProfile();
