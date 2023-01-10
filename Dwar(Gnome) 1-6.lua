
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


AcceptQuestFrom(658,179);    --- Dwarven Outfitters

Wolf = {}; 
Wolf[1] = 705;  
KillLootWolf = CreateObjective("KillMobsAndLoot",1,8,1,179,TableToList(Wolf));
MyInfo = DoObjective(KillLootWolf);

TurnInQuestAt(658,179); 
AcceptQuestFrom(714,183);    --- The Boar Hunter

AcceptQuestFrom(658,233);    --- Coldridge Valley Mail Delivery

Boar = {}; 
Boar[1] = 708; 
Hunter = CreateObjective("KillMobs",1,8,1,183,TableToList(Boar));
MyInfo = DoObjective(Hunter);

TurnInQuestAt(714,183); 
TurnInQuestAt(658,233); 

AcceptQuestFrom(786,182);    --- The Troll Cave

Whelp = {}; 
Whelp[1] = 706; 
Cave = CreateObjective("KillMobs",1,10,1,182,TableToList(Whelp));
MyInfo = DoObjective(Whelp);
TurnInQuestAt(786,182); 

AcceptQuestFrom(786,218);    --- The Stolen Journal
Journal = {}; 
Journal[1] = 808; 
Journal = CreateObjective("KillMobsAndLoot",1,1,1,218,TableToList(Journal));
MyInfo = DoObjective(KillLootJournal);
TurnInQuestAt(786,218); 

AcceptQuestFrom(12738,3364);    --- Scalding Mornbrew Delivery
TurnInQuestAt(836,3364); 

AcceptQuestFrom(836,3365);    --- Bring Back the Mug
TurnInQuestAt(12738,3365); 

AcceptQuestFrom(786,282);    --- Senir's Observations
TurnInQuestAt(1965,282); 




StopQuestProfile();
