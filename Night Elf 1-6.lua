
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

AcceptQuestFrom(2079,456);    --- The Balance of Nature

Nightsaber = {}; -- New Table to store our mob IDs
Nightsaber[1] = 2031;  -- ID for Young Nightsaber (for quest Balance of Nature)
Thistle = {}; -- New Table to store our mob IDs
Thistle[1] = 1984;  -- ID for Thistle boar (for quest Balance of Nature)

TheBalanceofNature = CreateObjective("KillMobs",1,4,2,456,TableToList(Nightsaber));
TheBalanceofNature2 = CreateObjective("KillMobs",2,4,2,456,TableToList(Thistle));
MyInfo = DoObjective(TheBalanceofNature);
MyInfo = DoObjective(TheBalanceofNature2);

AcceptQuestFrom(2077,458); 
Sleep(500);   --- The Woodland Protector
AcceptQuestFrom(8583,4495); 
Sleep(500);   --- A Good Friend
TurnInQuestAt(2079,456);  -- The Balance of Nature
Sleep(500);


------------------------------------------

AcceptQuestFrom(2079,457);  -- The Balance of Nature

Mangy = {}; -- New Table to store our mob IDs
Mangy[1] = 2032;  -- ID for Mangy Nightsaber (for quest Balance of Nature)
boar = {}; -- New Table to store our mob IDs
boar[1] = 1985;  -- ID for Thistle boar (for quest Balance of Nature)
TheBalanceofNature = CreateObjective("KillMobs",1,5,2,457,TableToList(Mangy));
MyInfo = DoObjective(TheBalanceofNature);
TheBalanceofNature2 = CreateObjective("KillMobs",2,5,2,457,TableToList(boar));
MyInfo = DoObjective(TheBalanceofNature2);

TurnInQuestAt(8584,4495);    --- A Good Friend
AcceptQuestFrom(8584,3519);  -- A Friend in Need


------------------------------------------



TurnInQuestAt(1992,458);    --- The Woodland Protector
AcceptQuestFrom(1992,459);    --- The Woodland Protector 2
TurnInQuestAt(2079,457);  -- The Balance of Nature 2
TurnInQuestAt(8583,3519);  -- A Friend in Need
AcceptQuestFrom(8583,3521);    --- Iverron's Antidote
AcceptQuestFrom(2082,916);    --- Webwood Venom



Moss = {};
Moss[1] = 1989; --
Mushroom = {}; -- Storing our Object IDs ! 
Mushroom[1] = 152094;
Lily = {}; -- Storing our Object IDs ! 
Lily[1] = 152095;
Ichor = {}; -- Storing our Object IDs ! 
Ichor[1] = 1986;
Venom = {}; -- Storing our Object IDs ! 
Venom[1] = 1986;


KillLootMoss = CreateObjective("KillMobsAndLoot",1,8,1,459,TableToList(Moss));
MyInfo = DoObjective(KillLootMoss);

CollectMushroom = CreateObjective("GatherObject",1,7,3,3521,nil,TableToList(Mushroom));
MyInfo = DoObjective(CollectMushroom);

CollectLily = CreateObjective("GatherObject",2,4,3,3521,nil,TableToList(Lily));
MyInfo = DoObjective(CollectLily);

KillLootIchor = CreateObjective("KillMobsAndLoot",3,1,3,3521,TableToList(Ichor));
MyInfo = DoObjective(KillLootIchor);

KillLootVenom = CreateObjective("KillMobsAndLoot",1,10,1,916,TableToList(Venom));
MyInfo = DoObjective(KillLootVenom);


------------------------------------------
Egg = {};
Egg[1] = 4406; 

TurnInQuestAt(1992,459);    --- The Woodland Protector 2
TurnInQuestAt(2082,916);    --- Webwood Venom
AcceptQuestFrom(2082,917);    --- Webwood Egg
TurnInQuestAt(8583,3521);    --- Iverron's Antidote

AcceptQuestFrom(8583,3522);    --- Iverron's Antidote
TurnInQuestAt(8584,3522);    --- Iverron's Antidote


CollectEgg = CreateObjective("GatherObject",1,1,1,917,nil,TableToList(Egg));
MyInfo = DoObjective(CollectEgg);

if CanTurnInQuest(917) then
UseHearthStone();
end;



TurnInQuestAt(2082,917);    --- Webwood Egg

AcceptQuestFrom(2082,920);    --- Tenaron's Summons

if (CanTurnInQuest(920) == true) then

QuestGoToPoint(10494.32,806.0022,1397.266);
TurnInQuestAt(3514,920);    --- Tenaron's Summons
end;

AcceptQuestFrom(3514,921);    --- Crown of the Earth


if (IsOnQuest(921) == true) and (CanTurnInQuest(921) == false) then
    
    
        QuestGoToPoint(10711.25,761.3188,1321.302);    
		UsePhial()
		Sleep(500);
       
end;


QuestGoToPoint(10494.32,806.0022,1397.266);
TurnInQuestAt(3514,921);    --- Crown of the Earth

StopQuestProfile();
