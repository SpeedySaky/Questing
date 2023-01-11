
--------------------------------------------------

--- Just setting up some useful vars
Player = GetPlayer();
----- Very basic questing profile by Mr.Fade !
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
function UsePhial()
    UseItem("Crystal Phial");
     SleepPlugin(500);
        while(Player.IsChanneling or Player.IsCasting) do
        SleepPlugin(500);
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

Log("Taking The Boar Hunter");
AcceptQuestFrom(714,183);    --- The Boar Hunter
Log("Taking Coldridge Valley Mail Delivery");
AcceptQuestFrom(658,233);    --- Coldridge Valley Mail Delivery

Boar = {}; 
Boar[1] = 708; 
Hunter = CreateObjective("KillMobs",1,8,1,183,TableToList(Boar));
MyInfo = DoObjective(Hunter);
TurnInQuestAt(714,183); 
TurnInQuestAt(658,233);
 
Log("Taking The Troll Cave");
AcceptQuestFrom(786,182);    --- The Troll Cave

Whelp = {}; 
Whelp[1] = 706; 
Whelp = CreateObjective("KillMobs",1,10,1,182,TableToList(Whelp));
MyInfo = DoObjective(Whelp);
TurnInQuestAt(786,182); 

Log("Taking The Stolen Journal");
AcceptQuestFrom(786,218);    --- The Stolen Journal
Journal = {}; 
Journal[1] = 808; 
KillLootJournal = CreateObjective("KillMobsAndLoot",1,1,1,218,TableToList(Journal));
MyInfo = DoObjective(KillLootJournal);
TurnInQuestAt(786,218); 

Log("Taking Scalding Mornbrew Delivery");
AcceptQuestFrom(12738,3364);    --- Scalding Mornbrew Delivery
TurnInQuestAt(836,3364); 

Log("Bring Back the Mug");
AcceptQuestFrom(836,3365);    --- Bring Back the Mug
TurnInQuestAt(12738,3365); 

Log("Bring Senir's Observations");
AcceptQuestFrom(786,282);    --- Senir's Observations
TurnInQuestAt(1965,282); 




StopQuestProfile();
