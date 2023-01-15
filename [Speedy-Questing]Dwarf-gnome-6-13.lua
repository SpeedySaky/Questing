
--------------------------------------------------

--- Just setting up some useful vars
Player = GetPlayer();
----- Welcome to questing profiles by SpeedySaky !
		Log("Welcome to questing profiles by SpeedySaky !");

--------------------------------------------------



------------------------------------------
-- Attempt to use hearthstone !
function UseHearthStone()
UseItem("Hearthstone");
 SleepPlugin(500);
	while(Player.IsChanneling or Player.IsCasting) do
	SleepPlugin(100);
	end;

	while(InGame == false) do
	SleepPlugin(100);
	end;
end;

function BuyRhapsodyMalt() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Innkeeper Belm") and (IsUnitValid(Unit)== true) then
         Log("Found the vendor!");         
         InteractWithUnit(Unit);
      end; -- IF
   end; -- For Each
end; 

function Innkeeper() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Innkeeper Belm") and (IsUnitValid(Unit)== true) then
         Log("Found the Innkeeper!");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; 
function Jarven()
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Jarven Thunderbrew") and (IsUnitValid(Unit)== true) then
         Log("Found Jarven!");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; 
	


function BuyThunderAle() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Innkeeper Belm") and (IsUnitValid(Unit)== true) then
         Log("Found the Innkeeper!");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; 
function InteractWithPilot() 
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "A Dwarven Corpse" then
          Log("Found the Pilot!");
         InteractWithObject(Object);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; -- Function


function InteractWithBarrel() 
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.ID == 269 then
          Log("Found the barrel!");
         InteractWithObject(Object);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; 


function Ammo() 
local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "Ammo Crate" then
          Log("Found the ammo crate!");
         InteractWithObject(Object);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; 

function InteractWithPilot() 

local Objects = GetObjectList();
  foreach Object in Objects do
     if Object.Name == "A Dwarven Corpse" then
          Log("Found the Pilot!");
         InteractWithObject(Object);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; -- Function


------------------------------------------




Log("Turning Supplies to Tannok");
if( IsOnQuest(2160) == true ) then

TurnInQuestAt(6806,2160);     --- Supplies to Tannok
end;


Log("Accepting Hearthstone");

if (HasPlayerFinishedQuest(2160) == true) and (HasPlayerFinishedQuest(384) == false)   then
QuestGoToPoint(-5601.224,-529.989,399.6532); 
Innkeeper();
SleepPlugin(2000);
UseMacro("Hearthstone");
SleepPlugin(2000);
end;

if (FreeBagSpace() <= 2) and (HasPlayerFinishedQuest(384) == false) then
    
				Log("Selling");	

        SellItemsAt(1243);
		
       
    
end;

Log("Turning Senir's Observations2");
TurnInQuestAt(1252,420); 


Log("Accepting Beer Basted Boar Ribs");
AcceptQuestFrom(1267,384);    --- Beer Basted Boar Ribs

Cook = {}; 
Cook[1] = 1127; 
KillLootCook = CreateObjective("KillMobsAndLoot",1,6,2,384,TableToList(Cook));
MyInfo = DoObjective(KillLootCook);

if(HasItem("Rhapsody Malt") <1) and (HasPlayerFinishedQuest(384) == false ) then
	Log("Going shopping");
 QuestGoToPoint(-5601.224,-529.989,399.6532);    
		BuyRhapsodyMalt();
		SleepPlugin(1000);
		UseMacro("Rhapsody");
		SleepPlugin(1000);
		UseMacro("Rhapsody");
		SleepPlugin(1000);
		
end;

Log("Turning Beer Basted Boar Ribs");
TurnInQuestAt(1267,384);    --- Beer Basted Boar Ribs




Log("Taking Tools for Steelgrill");
AcceptQuestFrom(1872,400);    --- Tools for Steelgrill
Log("Taking Stocking Jetsteam");
AcceptQuestFrom(1378,317);    --- Stocking Jetsteam
Log("Taking Ammo for Rumbleshot");
AcceptQuestFrom(1694,5541);    --- Ammo for Rumbleshot
Log("Turning Tools for Steelgrill");
TurnInQuestAt(1376,400); 
Log("Taking The Grizzled Den");
AcceptQuestFrom(1377,313);    --- The Grizzled Den


if (FreeBagSpace() <= 2)and (HasPlayerFinishedQuest(313) == false)  then
    
				Log("Selling");	

        SellItemsAt(1243);
		
       
    
end;
Log("Doing Stocking Jetsteam");

Meat = {}; 
Meat[1] = 1125; 
KillLootMeat = CreateObjective("KillMobsAndLoot",1,4,2,317,TableToList(Meat));
MyInfo = DoObjective(KillLootMeat);

Fur = {}; 
Fur[1] = 1128; 
KillLootFur = CreateObjective("KillMobsAndLoot",2,2,2,317,TableToList(Fur));
MyInfo = DoObjective(KillLootFur);

Log("Turning Stocking Jetsteam");

TurnInQuestAt(1378,317); 
AcceptQuestFrom(1694,5541);    --- Ammo for Rumbleshot

Log("The Grizzled Den");

Mane = {}; 
Mane[1] = 1135; 
KillLootMane = CreateObjective("KillMobsAndLoot",1,8,1,313,TableToList(Mane));
MyInfo = DoObjective(KillLootMane);

Log("Turning The Grizzled Den");
TurnInQuestAt(1377,313);    --- The Grizzled Den
if (FreeBagSpace() <= 2)  then
    
				Log("Selling");	

        SellItemsAt(1690);
		
       
    
end;
Log("Doing Ammo for Rumbleshot");

if (HasItem(13850)==false) and (HasPlayerFinishedQuest(5541) == false)  then
	QuestGoToPoint(-5746.898,-373.2178,365.7534);
	Ammo();
	SleepPlugin(2000);
end;
	





--------------------------------------------------
Log("Turning Ammo for Rumbleshot");
TurnInQuestAt(1243,5541); 

Log("Accepting Tundra MacGrann's Stolen Stash");
if (HasPlayerFinishedQuest(312)== false) then 
QuestGoToPoint(-5572.105,97.64532,483.8041);
end;
AcceptQuestFrom(1266,312);    --- Tundra MacGrann's Stolen Stash






Log("Accepting Speak with Bink");

if (Player.Class == 8) and (IsOnQuest(1879)== false) then 
AcceptQuestFrom(1228,1879);    --- Speak with Bink
end;

Log("Turning Evershine");
TurnInQuestAt(1374,318);    --- Evershine

Log("Accepting A Favor for Evershine");
AcceptQuestFrom(1374,319);    --- A Favor for Evershine
Log("Accepting The Perfect Stout");
AcceptQuestFrom(1374,315);    --- The Perfect Stout
Log("Accepting Bitter Rivals");
AcceptQuestFrom(1375,310);    --- Bitter Rivals

if (FreeBagSpace() <= 2)  then
    
				Log("Selling");	

        SellItemsAt(1690);
		
       
    
end;
Log("Doing A Favor for Evershine");

Bear = {}; 
Bear[1] = 1196; 
Bear = CreateObjective("KillMobs",1,6,3,319,TableToList(Bear));
MyInfo = DoObjective(Bear);

Boar = {}; 
Boar[1] = 1127; 
Boar = CreateObjective("KillMobs",2,8,3,319,TableToList(Boar));
MyInfo = DoObjective(Boar);

Leopard = {}; 
Leopard[1] = 1201; 
Leopard = CreateObjective("KillMobs",3,8,3,319,TableToList(Leopard));
MyInfo = DoObjective(Leopard);

SnowLeopard = {};
SnowLeopard[1] = 1201;
SnowLeopard = CreateObjective("KillMobsAndLoot",3,8,3,319,TableToList(SnowLeopard));
if (Player.Level <10)  then
Log("Grind");
GrindUntilLvl(10,SnowLeopard,True);
end;

Log("Turning A Favor for Evershine");
TurnInQuestAt(1374,319);    --- A Favor for Evershine
Log("Accepting Return to Bellowfiz");
AcceptQuestFrom(1374,320);    --- Return to Bellowfiz


Log("Turning Bitter Rivals");
if CanTurnInQuest(310) then
UseHearthStone();
end;

Log("Barrel");	
if (IsOnQuest(310) == true) and (CanTurnInQuest(310) == true) then
	QuestGoToPoint(-5598.758,-530.1631,399.6519); 
	Log("Buying");
	BuyThunderAle();
	UseMacro("ThunderAle");
	SleepPlugin(2000);
	UseMacro("ThunderAle");
	SleepPlugin(2000);
	QuestGoToPoint(-5604.542,-543.4545,392.4309);
	Log("Jarven talk")
	Jarven();
	SleepPlugin(2000);
	Log("Barrel interact")
	TurnInQuestAt(269,310)
	SleepPlugin(2000);
end;



if (Player.Class == 8) and  (Player.Level <= 10) then --- Mage
Log("Oh I am a mage let me train quick!");
QuestTrainAt(1228);
Log("Training");
UseMacro("TrainMe");
SleepPlugin(5000);
end
if (Player.Class == 2) and (HasSpell(10290)==false) then --- Pala training
Log("Oh it's time to train!");
QuestTrainAt(1232);
Log("Training");
UseMacro("TrainMe");
SleepPlugin(5000);

end

Log("Accepting Return to Marleth");
AcceptQuestFrom(270,311);    --- Return to Marleth

Log("Accepting Frostmane Hold");
AcceptQuestFrom(1252,287);    --- Frostmane Hold

Log("Turning Return to Bellowfiz");
TurnInQuestAt(1378,320);    --- Return to Bellowfiz

Log("Doing The Perfect Stout");
Shimmerweed = {};
Shimmerweed[1] = 276;
CollectShimmerweed = CreateObjective("GatherObject",1,6,1,315,nil,TableToList(Shimmerweed));
MyInfo = DoObjective(CollectShimmerweed);




Log("Turning The Perfect Stout");
TurnInQuestAt(1374,315);    --- The Perfect Stout

Log("Accepting Shimmer Stout");
AcceptQuestFrom(1374,413);    --- Shimmer Stout
	
Log("Turning Return to Marleth");
TurnInQuestAt(1375,311);    --- Return to Marleth

Log("Doing Frostmane Hold");

if (HasPlayerFinishedQuest(287) == false)  then
    
		Log("Frostmane Hold scouting");	

        QuestGoToPoint(-5527.134,519.282,389.3576);   
		QuestGoToPoint(-5596.859,737.6855,391.4992);   
		SleepPlugin(500);
			     
    
end;

Headhunter = {}; 
Headhunter[1] = 1123; 
Headhunter = CreateObjective("KillMobs",1,5,3,287,TableToList(Headhunter));
MyInfo = DoObjective(Headhunter);

Log("Hearthing");
if CanTurnInQuest(287) then
UseHearthStone();
end;

Log("Turning Frostmane Hold");
TurnInQuestAt(1252,287);    --- Frostmane Hold

Log("Accepting  The Reports");
AcceptQuestFrom(1252,291);    --- The Reports

Log("Getting meat for McGrann");

Meat = {};
Meat[1] = 272;
CollectMeat = CreateObjective("GatherObject",1,1,1,312,nil,TableToList(Meat));
MyInfo = DoObjective(CollectMeat);


Log("Turning Tundra MacGrann's Stolen Stash");
TurnInQuestAt(1266,312);    --- Tundra MacGrann's Stolen Stash

Log("Accepting Operation Recombobulation");
AcceptQuestFrom(1269,412);    --- Operation Recombobulation

Cog = {}; 
Cog[1] = 1211; 
KillLootCog = CreateObjective("KillMobsAndLoot",1,8,2,412,TableToList(Cog));
MyInfo = DoObjective(KillLootCog);

Gear = {}; 
Gear[1] = 1211; 
KillLootGear = CreateObjective("KillMobsAndLoot",2,8,2,412,TableToList(Gear));
MyInfo = DoObjective(KillLootGear);

if (FreeBagSpace() <= 2)  then
    
				Log("Selling");	

        SellItemsAt(1690);   
		
       
    
end;





if (Player.Level <12)  then
Log("Grind");
Grind = {};
Grind[1] = 1211;
Grind = CreateObjective("KillMobsAndLoot",2,8,2,412,TableToList(Grind));
GrindUntilLvl(12,Grind,True);
end;

Log("Turning Speak with Bink");
if (Player.Class == 8) then
AcceptQuestFrom(1228,1879);    --- Speak with 
end;

Log("Turning Operation Recombobulation");
TurnInQuestAt(1269,412);    --- Tundra MacGrann's Stolen Stash

if (Player.Class == 2) and (HasSpell(53408)==false) then  
Log("LvL 12 training");
QuestTrainAt(1232);
UseMacro("TrainMe");
SleepPlugin(1000);  
UseMacro("TrainMe"); 
SleepPlugin(5000);
end;




if (Player.Class == 2) and (HasPlayerFinishedQuest(2997)==false) then  
Log("Taking The Divinity");
AcceptQuestFrom(1232,2997);   
end;


if(HasPlayerFinishedQuest(291)==false) then
QuestGoToPoint(-4871.014,-1023.87,505.715);
Log("Turning The Reports");
TurnInQuestAt(1274,291);    --- The Reports
end;


if (Player.Class == 2) and (HasPlayerFinishedQuest(1646)==false)then  
Log("Turning The Divinity");
UseItem(6916);
AcceptQuestFrom(6916,1646);   
QuestGoToPoint(-4633.484,-930.4896,524.6945);
TurnInQuestAt(6179,1646);   
end;

if (Player.Class == 8) then

TurnInQuestAt(5144,1879);    --- Speak with Bink
end;

if (Player.Class == 8) and (HasSpell(145)== false) then   --- Mage
Log("Oh I am a mage let me train quick!");
QuestTrainAt(5144);
Log("Training");
UseMacro("TrainMe");
SleepPlugin(5000);
end;

if (Player.Class == 8) then  

AcceptQuestFrom(5144,1880);   
end;


if (Player.Class == 8) and (IsOnQuest(1880)== true) then   --- Mage
Log("Doing Class Quest");
Gizmonitor = {};
Gizmonitor [1] = 102984;
CollectGizmonitor = CreateObjective("GatherObject",1,1,1,1880,nil,TableToList(Gizmonitor));
MyInfo = DoObjective(CollectGizmonitor);
end;

if IsOnQuest(1880) then
UseHearthStone();
end;

if (Player.Class == 8) and (CanTurnInQuest(1880)== true) then   --- Mage

TurnInQuestAt(5144,1880);    --- Gizmonitor

end;

Log("Accepting  Protecting the Herd");
AcceptQuestFrom(1265,314);    --- Protecting the Herd

Log("Doing Protecting the Herd");
Vagash = {}; 
Vagash[1] = 1388; 
KillLootVagash = CreateObjective("KillMobsAndLoot",1,1,1,314,TableToList(Vagash));
MyInfo = DoObjective(KillLootVagash);
if (IsOnQuest(314) == true) and (CanTurnInQuest(287) == false)  then
    
		Log("Finding Vagash");	

        QuestGoToPoint(-5415.113,-1261.803,446.3562);   

end;


Log("Turning Protecting the Herd");
if (IsOnQuest(314) == true) and (CanTurnInQuest(314) == true)  then
    
		Log("Finding Vagash");	

     TurnInQuestAt(1265,314);    --- Protecting the Herd

end;


if (FreeBagSpace() <= 2)  then
    
				Log("Selling");	

        SellItemsAt(1240);   
		
       
    
end;

Log("Accepting The Public Servant");
AcceptQuestFrom(1977,433);    --- The Public Servant
Log("Accepting Those Blasted Troggs!");
AcceptQuestFrom(1254,432);    --- Those Blasted Troggs!

Log("Doing Those Blasted Troggs!");
Skullthumper = {}; 
Skullthumper[1] = 1115; 
Skullthumper = CreateObjective("KillMobs",1,6,1,432,TableToList(Skullthumper));
MyInfo = DoObjective(Skullthumper);

Bonesnapper = {}; 
Bonesnapper[1] = 1117; 
Bonesnapper = CreateObjective("KillMobs",1,10,1,433,TableToList(Bonesnapper));
MyInfo = DoObjective(Bonesnapper);

Log("Turning Those Blasted Troggs!");
TurnInQuestAt(1254,432);    --- Those Blasted Troggs!
Log("Turning The Public Servant");
TurnInQuestAt(1977,433);    --- The Public Servant

Log("Accepting The Lost Pilot");
AcceptQuestFrom(1960,419);    --- The Lost Pilot
Log("Turning The Lost Pilot");


if (IsOnQuest(419) == true) and (CanTurnInQuest(419) == false)  then
QuestGoToPoint(-5064.667,-2124.331,403.1526);
   InteractWithPilot();
	SleepPlugin(1000);
end;

Log("Accepting A Pilot's Revenge");

if (IsOnQuest(417) == false) and (CanTurnInQuest(417) == false)  then
QuestGoToPoint(-5064.667,-2124.331,403.1526);
InteractWithPilot();
SleepPlugin(1000);
 
end;


Log("Doing A Pilot's Revenge");
Claw = {}; 
Claw[1] = 1961; 
KillLootClaw = CreateObjective("KillMobsAndLoot",1,1,1,417,TableToList(Claw));
MyInfo = DoObjective(KillLootClaw);

Log("Turning A Pilot's Revenge");
TurnInQuestAt(1960,417);    --- A Pilot's Revenge

Log("Turning Shimmer Stout");
TurnInQuestAt(1959,413);    --- Shimmer Stout

Log("Accepting Stout to Kadrell");
AcceptQuestFrom(1959,414);    --- Stout to Kadrell



LoadAndRunQuestProfile("[Speedy-Questing]Dwarf-gnome-13+.lua");