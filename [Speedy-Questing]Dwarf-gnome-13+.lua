
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
function Innkeeper() 
Units = GetUnitsList();
  foreach Unit in Units do
        if (Unit.Name == "Innkeeper Hearthstove") and (IsUnitValid(Unit)== true) then
         Log("Found the Innkeeper!");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end; 

function ThelsamarToIF() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Thorgrum Borrelson") and (IsUnitValid(Unit)== true) then
         Log("Found Thelsamar flightmaster!");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end;
function IfToThelsamar() 
Units = GetUnitsList();
  foreach Unit in Units do
        Log(Unit.Name);
     if (Unit.Name == "Gryth Thurden") and (IsUnitValid(Unit)== true) then
         Log("Found IF flightmaster!");         
         InteractWithUnit(Unit);
		 SleepPlugin(5000);
      end; -- IF
   end; -- For Each
end;  

------------------------------------------


if (ItemCount(6948) == 1) then
Log("Accepting Hearthstone");
QuestGoToPoint(-5376.463,-2972.818,323.1684)
Innkeeper();
SleepPlugin(1000);

UseMacro("Hearthstone");
SleepPlugin(2000);
end;

--if (IsOnQuest(414) == true) and (IsOnQuest(224) == false)   then
--QuestGoToPoint(-5422.612,-2927.32,347.108)
--ThelsamarToIF();
--UseMacro("IF");
--SleepPlugin(1000);
--UseMacro("IF");
--SleepPlugin(1000);
--UseMacro("IF");
--SleepPlugin(1000);
--UseMacro("IF");
--SleepPlugin(1000);
--end;

--if (IsOnQuest(414) == true) and (IsOnQuest(224) == false)   then
--IfToThelsamar();
--UseMacro("Thelsamar");
--SleepPlugin(1000);
--end;




Log("Accepting In Defense of the King's Lands");
AcceptQuestFrom(1089,224);    --- In Defense of the King's Lands

Log("Accepting The Trogg Threat");
AcceptQuestFrom(1092,267);    --- The Trogg Threat

Log("Doing In Defense of the King's Lands");

Log("Doing The Trogg Threat");
Tooth = {}; 
Tooth[1] = 1161; 
KillLootTooth = CreateObjective("KillMobsAndLoot",1,8,1,267,TableToList(Tooth));
MyInfo = DoObjective(KillLootTooth);

Log("Doing In Defense of the King's Lands");

Trogg = {}; 
Trogg[1] = 1161; 
Trogg = CreateObjective("KillMobs",1,10,1,224,TableToList(Trogg));
MyInfo = DoObjective(Trogg);

Scout = {}; 
Scout[1] = 1162; 
Scout = CreateObjective("KillMobs",1,10,1,224,TableToList(Scout));
MyInfo = DoObjective(Scout);



Log("Turning In Defense of the King's Lands");
TurnInQuestAt(1092,224);    --- In Defense of the King's Lands

Log("Turning The Trogg Threat");
TurnInQuestAt(1092,267);    --- The Trogg Threat


if (HasPlayerFinishedQuest(418) == false)    then
Log("Accepting Thelsamar Blood Sausages");
QuestGoToPoint(-5381.078,-2954.565,322.0616);
SleepPlugin(2000);
QuestGoToPoint(-5389.67,-2953.471,322.0621);
SleepPlugin(1000);
AcceptQuestFrom(1963,418);    --- Thelsamar Blood Sausages


end;
Log("Accepting  Mountaineer Stormpike's Task");
AcceptQuestFrom(1340,1339);    --- Mountaineer Stormpike's Task
Log("Turning Stout to Kadrell");

TurnInQuestAt(1340,414);    --- Stout to Kadrell
Log("Accepting Rat Catching");
AcceptQuestFrom(1340,416);    --- Rat Catching

if (HasPlayerFinishedQuest(6387) == false)    then
Log("Accepting  Honor Students");
QuestGoToPoint(-5340.556,-2990.264,323.6844);
SleepPlugin(2000);
QuestGoToPoint(-5341.088,-3011.476,324.0931);
SleepPlugin(2000);
QuestGoToPoint(-5345.513,-3012.478,325.0876);
SleepPlugin(2000);
QuestGoToPoint(-5366.673,-3017.675,319.5661);
SleepPlugin(2000);


AcceptQuestFrom(1681,6387);    --- Honor Students
end;

Log("Turning  Honor Students");
TurnInQuestAt(1572,6387);    --- Honor Students


Log("Taking  Ride to Ironforge");
AcceptQuestFrom(1572,6391);    --- Ride to Ironforge

if (IsOnQuest(6391) == true)    then
Log("Flying to IF");
ThelsamarToIF();
UseMacro("IF");
SleepPlugin(1000);
UseMacro("IF");
SleepPlugin(180000);
Log("Turning  Ride to Ironforge");
TurnInQuestAt(4256,6391);    --- Ride to Ironforge

end;
if (HasPlayerFinishedQuest(6388) == false)    then
Log("Taking  Gryth Thurden");
AcceptQuestFrom(4256,6388);    --- Gryth Thurden
Log("Turning  Gryth Thurden");
TurnInQuestAt(1573,6388);    --- Gryth Thurden

end;


if (HasPlayerFinishedQuest(6392) == false)    then
Log("Taking  Return to Brock");
AcceptQuestFrom(1573,6392);    --- Return to Brock
IfToThelsamar();
UseMacro("Thelsamar");
SleepPlugin(1000);
UseMacro("Thelsamar");
SleepPlugin(180000);
TurnInQuestAt(1681,6392);    --- Gryth Thurden

end;

--if (IsOnQuest(1647) == true)    then
--Log("Turning  class quest");
--TurnInQuestAt(6175,1647);    --- Ride to Ironforge
--end;

Log("Taking  Ironband's Excavation");
AcceptQuestFrom(1105,436);    --- Ironband's Excavation

if (CanTurnInQuest(418) == false)    then



Intestines = {}; 
Intestines[1] = 1191; 
KillLootIntestines = CreateObjective("KillMobsAndLoot",1,3,3,418,TableToList(Intestines));
MyInfo = DoObjective(KillLootIntestines);

Meat2 = {}; 
Meat2[1] = 1188; 
KillLootMeat2 = CreateObjective("KillMobsAndLoot",2,3,3,418,TableToList(Meat2));
MyInfo = DoObjective(KillLootMeat2);


Ichor = {}; 
Ichor[1] = 1184; 
KillLootIchor = CreateObjective("KillMobsAndLoot",3,3,3,418,TableToList(Ichor));
MyInfo = DoObjective(KillLootIchor);
end;

if (FreeBagSpace() <= 2)  then
    
				Log("Selling");	

        SellItemsAt(1214);   
		
       
    
end;


if (HasPlayerFinishedQuest(385) == false)    then
Log("Accepting  Crocolisk Hunting");
QuestGoToPoint(-5630.305,-4310.812,403.3054)
AcceptQuestFrom(1154,385);    --- Crocolisk Hunting
Log("Accepting  A Hunter's Boast");

AcceptQuestFrom(1187,257);    --- A Hunter's Boast

end;

Log("Doing A Hunter's Boast");

Boast = {}; 
Boast[1] = 1194; 
Boast = CreateObjective("KillMobs",1,6,1,257,TableToList(Boast));
MyInfo = DoObjective(Boast);

Log("Turning  A Hunter's Boast");
TurnInQuestAt(1187,257);    --- Crocolisk Hunting


Log("Accepting  A Hunter's Challenge");
AcceptQuestFrom(1187,258);    --- A Hunter's Boast

Log("Doing A Hunter's Challenge");

Challenge = {}; 
Challenge[1] = 1192; 
Challenge = CreateObjective("KillMobs",1,5,1,258,TableToList(Challenge));
MyInfo = DoObjective(Challenge);
Log("Turning  A Hunter's Challenge");

TurnInQuestAt(1187,258);    --- A Hunter's Challenge
if(HasPlayerFinishedQuest(385)==false) then
Log("Doing  Crocolisk Hunting");
Crocolisk = {}; 
Crocolisk[1] = 1693; 
KillLootCrocolisk = CreateObjective("KillMobsAndLoot",1,5,2,385,TableToList(Crocolisk));
MyInfo = DoObjective(KillLootCrocolisk);
Skin = {}; 
Skin[1] = 1693; 
KillLootSkin = CreateObjective("KillMobsAndLoot",2,6,2,385,TableToList(Skin));
MyInfo = DoObjective(KillLootSkin);
end;


if (CanTurnInQuest(418) == true)    then
UseHearthStone();
end;

Log("Turning Thelsamar Blood Sausages");
TurnInQuestAt(1963,418);    --- Thelsamar Blood Sausages

AcceptQuestFrom(1344,298);    --- Excavation Progress Report
Log("Doing  Excavation Progress Report");

TurnInQuestAt(1105,298);    --- Excavation Progress Report
Log("Turning  Excavation Progress Report");

if (IsOnQuest(1339) == true)    then
Log("Turning Mountaineer Stormpike's Task");
QuestGoToPoint(-4822.209,-2676.765,341.123)
TurnInQuestAt(1343,1339);    --- Mountaineer Stormpike's Task
end;


Log("Accepting  Filthy Paws");
AcceptQuestFrom(1343,307);    --- Filthy Paws

Log("Doing  Filthy Paws");

Gear = {};
Gear[1] = 271;
CollectGear = CreateObjective("GatherObject",1,4,1,307,nil,TableToList(Gear));
MyInfo = DoObjective(CollectGear);

Ear = {}; 
Ear[1] = 1176; 
KillLootEar = CreateObjective("KillMobsAndLoot",1,12,1,416,TableToList(Ear));
MyInfo = DoObjective(KillLootEar);


Log("Turning  Filthy Paws");
if (IsOnQuest(307) == true)    then
Log("Turning  Filthy Paws");
QuestGoToPoint(-4822.209,-2676.765,341.123)
TurnInQuestAt(1343,307);    --- Filthy Paws
end;

AcceptQuestFrom(1343,1338);    --- Stormpike's Order

Log("Turning Rat Catching");
TurnInQuestAt(1340,416);    --- Rat Catching



Log("Accepting  In Defense of the King's Lands 2");
AcceptQuestFrom(1091,237);    --- In Defense of the King's Lands 2
Log("Doing  In Defense of the King's Lands 2");

Skull = {}; 
Skull[1] = 1163; 
Skull = CreateObjective("KillMobs",1,10,2,237,TableToList(Skull));
MyInfo = DoObjective(Skull);

Seer = {}; 
Seer[1] = 1166; 
Seer = CreateObjective("KillMobs",2,10,2,237,TableToList(Seer));
MyInfo = DoObjective(Seer);

Log("Turning  In Defense of the King's Lands 2");

TurnInQuestAt(1091,237);    --- In Defense of the King's Lands 2

Log("Accepting  In Defense of the King's Lands 3");

AcceptQuestFrom(1090,263);    --- In Defense of the King's Lands 3
Log("Doing  In Defense of the King's Lands 3");

Shaman = {}; 
Shaman[1] = 1197; 
Shaman = CreateObjective("KillMobs",1,10,2,263,TableToList(Shaman));
MyInfo = DoObjective(Shaman);

Snapper = {}; 
Snapper[1] = 1197; 
Snapper = CreateObjective("KillMobs",2,10,2,263,TableToList(Snapper));
MyInfo = DoObjective(Snapper);

Log("Turning  In Defense of the King's Lands 3");
TurnInQuestAt(1090,263);    --- In Defense of the King's Lands 3


Log("Turning  Ironband's Excavation");
TurnInQuestAt(1345,436);    --- Ironband's Excavation

Log("Taking  Gathering Idols");
AcceptQuestFrom(1345,297);    ---  Gathering Idols

Log("Doing  Gathering Idols");

Idols = {}; 
Idols[1] = 1165; 
KillLootIdols = CreateObjective("KillMobsAndLoot",1,8,1,297,TableToList(Idols));
MyInfo = DoObjective(KillLootIdols);

Log("Turning Gathering Idols");
TurnInQuestAt(1345,297);    --- Gathering Idols




Log("Taking  Bingles' Missing Supplies");
AcceptQuestFrom(6577,2038);    ---  Bingles' Missing Supplies


Wrench = {};
Wrench[1] = 104564;
CollectWrench = CreateObjective("GatherObject",1,1,4,2038,nil,TableToList(Wrench));
MyInfo = DoObjective(CollectWrench);
Log("Doing  Bingles' Missing Supplies");


Screwdriver = {};
Screwdriver[1] = 104569;
CollectScrewdriver = CreateObjective("GatherObject",2,1,4,2038,nil,TableToList(Screwdriver));
MyInfo = DoObjective(CollectScrewdriver);


Hammer = {};
Hammer[1] = 104574;
CollectHammer = CreateObjective("GatherObject",3,1,4,2038,nil,TableToList(Hammer));
MyInfo = DoObjective(CollectHammer);

Blastencapper = {};
Blastencapper[1] = 104575;
CollectBlastencapper = CreateObjective("GatherObject",4,1,4,2038,nil,TableToList(Blastencapper));
MyInfo = DoObjective(CollectBlastencapper);

Log("Turning  Bingles' Missing Supplies");
TurnInQuestAt(6577,2038);    ---  Bingles' Missing Supplies



if (CanTurnInQuest(385) == true)    then
Log("Turning  Crocolisk Hunting");
QuestGoToPoint(-5630.305,-4310.812,403.3054)
TurnInQuestAt(1154,385);    --- Crocolisk Hunting
Log("Taking  Vyrin's Revenge");
AcceptQuestFrom(1156,271);    ---  Vyrin's Revenge
end;

if(HasPlayerFinishedQuest(271)==false) then
Log("Hearthing");
UseHearthStone();
Log("Doing Vyrin's Revenge");
QuestGoToPoint(-5637.813,-3047.261,384.8618);
Head = {}; 
Head[1] = 1225; 
KillLootHead = CreateObjective("KillMobsAndLoot",1,1,1,271,TableToList(Head));
MyInfo = DoObjective(KillLootHead);
end;

Log("Taking  Mercenaries");
AcceptQuestFrom(1139,255);    ---  Mercenaries
Log("Doing  Mercenaries");

Ogre = {}; 
Ogre[1] = 1178; 
Ogre = CreateObjective("KillMobs",1,4,3,255,TableToList(Ogre));
MyInfo = DoObjective(Ogre);

Brute = {}; 
Brute[1] = 1180; 
Brute = CreateObjective("KillMobs",2,4,3,255,TableToList(Brute));
MyInfo = DoObjective(Brute);

Enforcer = {}; 
Enforcer[1] = 1179; 
Enforcer = CreateObjective("KillMobs",3,4,3,255,TableToList(Enforcer));
MyInfo = DoObjective(Enforcer);

Log("Turning  Vyrin's Revenge");
TurnInQuestAt(1187,271);    ---  Vyrin's Revenge

Log("Taking  Vyrin's Revenge");
AcceptQuestFrom(1187,531);    ---  Vyrin's Revenge

Log("Turning  Vyrin's Revenge");
TurnInQuestAt(1156,531);    ---  Vyrin's Revenge

if(HasPlayerFinishedQuest(255)==false) then
Log("Hearthing")
UseHearthStone();
Log("Turning  Mercenaries");
TurnInQuestAt(1139,255);    ---  Mercenaries
end;


if (IsOnQuest(301) == true)    then
Log("Flying to IF");
ThelsamarToIF();
UseMacro("IF");
SleepPlugin(1000);
UseMacro("IF");
SleepPlugin(180000);
Log("Turning  Report to Ironforge");
TurnInQuestAt(1356,301);    --- Report to Ironforge

end;
if (Player.Class == 2) and (Player.Level <= 20) and (HasSpell(7294)==false) then   --- Paladin

Log("Oh I am a paladin let me train quick!");
QuestGoToPoint(-4633.484,-930.4896,524.6945);
Log("Training");
QuestTrainAt(6179);
UseMacro("TrainMe");
SleepPlugin(5000);

end;


if (IsOnQuest(302) == true)    then
Log("Flying to Thelsamar");
IfToThelsamar();
UseMacro("Thelsamar");
SleepPlugin(1000);
UseMacro("Thelsamar");
SleepPlugin(180000);
Log("Turning Powder to Ironband");
TurnInQuestAt(1105,302);    ---Powder to Ironband
end;

Log("Taking Resupplying the Excavation");
AcceptQuestFrom(1105,273);    ---  Resupplying the Excavation

Log("Turning Resupplying the Excavation");
TurnInQuestAt(2057,273);    ---  Resupplying the Excavation

Log("Taking After the Ambush");
AcceptQuestFrom(2057,454);    --- After the Ambush

Log("Turning After the Ambush");
TurnInQuestAt(1379,454);    --- After the Ambush


StopQuestProfile();