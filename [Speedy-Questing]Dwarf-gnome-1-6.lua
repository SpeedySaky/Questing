
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

------------------------------------------

Log("Taking Dwarven Outfitters");

AcceptQuestFrom(658,179);    --- Dwarven Outfitters

Wolf = {}; 
Wolf[1] = 705;  
KillLootWolf = CreateObjective("KillMobsAndLoot",1,8,1,179,TableToList(Wolf));
MyInfo = DoObjective(KillLootWolf);

TurnInQuestAt(658,179);

if (Player.Class == 2) and (IsOnQuest(3107)== true) then   --- Paladin
Log("Oh I am a paladin so i need to do class quest!");

AcceptQuestFrom(658,3107);    --- Consecrated Rune-paladin

end;


if (Player.Class == 2) and (IsOnQuest(3107)== true) then   --- Paladin
Log("Turning classs quest!");

TurnInQuestAt(926,3107);

end;

if (Player.Class == 1) and (IsOnQuest(3106)== False) then   --- Warrior
Log("Oh I am a warrior so i need to do class quest!");

AcceptQuestFrom(658,3106);    --- Simple Rune-warrior

end;


if (Player.Class == 1) and (IsOnQuest(3106)== true) then   --- Warrior
Log("Turning classs quest!");

TurnInQuestAt(912,3106);

end;




Log("Taking A New Threat");
AcceptQuestFrom(713,170);    --- A New Threat

Trogg = {}; 
Trogg[1] = 707;
Burly = {}; 
Burly[1] = 724;

Trogg = CreateObjective("KillMobs",1,6,2,170,TableToList(Trogg));
MyInfo = DoObjective(Trogg);
Burly = CreateObjective("KillMobs",2,6,2,170,TableToList(Burly));
MyInfo = DoObjective(Burly);
TurnInQuestAt(713,170);

Log("Taking Coldridge Valley Mail Delivery");
AcceptQuestFrom(658,233);    --- Coldridge Valley Mail Delivery
Log("Taking The Boar Hunter");
AcceptQuestFrom(714,183);    --- The Boar Hunter

if (FreeBagSpace() <= 2)  then
    
				Log("Selling");	

        SellItemsAt(713);   
		
       
    
end;
Boar = {}; 
Boar[1] = 708; 
Hunter = CreateObjective("KillMobs",1,8,1,183,TableToList(Boar));
MyInfo = DoObjective(Hunter);
TurnInQuestAt(714,183); 
TurnInQuestAt(658,233);
 
Log("Taking A Refugee's Quandary");
AcceptQuestFrom(8416,3361);    --- A Refugee's Quandary
Log("Taking The Troll Cave");
AcceptQuestFrom(786,182);    --- The Troll Cave

Box = {};
Box[1] = 148499;
CollectBox = CreateObjective("GatherObject",1,1,3,3361,nil,TableToList(Box));
MyInfo = DoObjective(CollectBox);

Chest = {};
Chest[1] = 178084;
CollectChest = CreateObjective("GatherObject",2,1,3,3361,nil,TableToList(Chest));
MyInfo = DoObjective(CollectChest);

Bolts = {};
Bolts[1] = 178085;
CollectBolts = CreateObjective("GatherObject",3,1,3,3361,nil,TableToList(Bolts));
MyInfo = DoObjective(CollectBolts);


Whelp = {}; 
Whelp[1] = 706; 
Whelp = CreateObjective("KillMobs",1,10,1,182,TableToList(Whelp));
MyInfo = DoObjective(Whelp);
TurnInQuestAt(786,182); 


Log("Taking The Stolen Journal");
AcceptQuestFrom(786,218);    --- The Stolen Journal


if( HasPlayerFinishedQuest(218) == false ) then
	Log("Going for Boss");
 QuestGoToPoint(-6495.694,306.0788,370.5521);    
		Journal = {}; 
Journal[1] = 808; 
KillLootJournal = CreateObjective("KillMobsAndLoot",1,1,1,218,TableToList(Journal));
MyInfo = DoObjective(KillLootJournal);
end;


TurnInQuestAt(786,218); 

Log("Taking Scalding Mornbrew Delivery");
AcceptQuestFrom(12738,3364);    --- Scalding Mornbrew Delivery

Log("Turning Scalding Mornbrew Delivery");
TurnInQuestAt(836,3364); 

Log("Turning A Refugee's Quandary");
TurnInQuestAt(8416,3361); 
if (FreeBagSpace() <= 2)  then
    
				Log("Selling");	

        SellItemsAt(713);   
		
       
    
end;
Log("Taking Bring Back the Mug");
AcceptQuestFrom(836,3365);    --- Bring Back the Mug
Log("Turning Bring Back the Mug");
TurnInQuestAt(12738,3365); 
Log("Taking Bring Senir's Observations");
AcceptQuestFrom(786,282);    --- Senir's Observations

if( IsOnQuest(2160) == false ) then

UseHearthStone();
end;

if (Player.Class == 2) and (Player.Level <= 6) and (HasSpell(465)==false) then   --- Paladin

Log("Oh I am a paladin let me train quick!");
QuestGoToPoint(-6120,205.378,8974.395.5426)
Log("Training");
QuestTrainAt(926);

end;

Log("Turning Bring Senir's Observations");
TurnInQuestAt(1965,282); 

Log("Taking Supplies to Tannok");


AcceptQuestFrom(6782,2160);    --- Supplies to Tannok



Log("Loading next profile");

LoadAndRunQuestProfile("[Speedy-Questing]Dwarf-gnome-6-13.lua");