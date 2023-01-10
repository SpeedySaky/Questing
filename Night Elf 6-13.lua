
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
    UseItem("Jade Phial");
     SleepPlugin(500);
        while(Player.IsChanneling or Player.IsCasting) do
        SleepPlugin(500);
        end;
   
    end;
	function UsePhial2()
    UseItem("Tourmaline Phial");
     SleepPlugin(500);
        while(Player.IsChanneling or Player.IsCasting) do
        SleepPlugin(500);
        end;
   
    end;
	
function UseNecklace()
    UseItem("Gnarlpine Necklace");
     SleepPlugin(500);
        while(Player.IsChanneling or Player.IsCasting) do
        SleepPlugin(500);
        end;
end;
function UseSacrifice()
    UseItem("Sathrah's Sacrifice");
     SleepPlugin(1000);
        while(Player.IsChanneling or Player.IsCasting) do
        SleepPlugin(1000);
        end;
end;

------------------------------------------



AcceptQuestFrom(3514,928);    --- Crown of the Earth
AcceptQuestFrom(6780,2159);    --- Dolanaar Delivery
AcceptQuestFrom(2150,488);    --- Zenn's Bidding


Fang = {};
Fang[1] = 2042;

Feather = {};
Feather[1] = 1995;

Silk = {};
Silk[1] = 1998;

KillLootFang = CreateObjective("KillMobsAndLoot",1,3,3,488,TableToList(Fang));
MyInfo = DoObjective(KillLootFang);

KillLootFeather = CreateObjective("KillMobsAndLoot",2,3,3,488,TableToList(Feather));
MyInfo = DoObjective(KillLootFeather);

KillLootSilk = CreateObjective("KillMobsAndLoot",3,3,3,488,TableToList(Silk));
MyInfo = DoObjective(KillLootSilk);

AcceptQuestFrom(2083,997);    --- Denalan's Earth

AcceptQuestFrom(2078,475);    --- A Troubling Breeze

if (HasPlayerFinishedQuest(2438) == false ) then
    
		Log("Idem");
        QuestGoToPoint(9899.607,987.7897,1354.803);    
		
		
       
    
end
AcceptQuestFrom(3567,932);    --- Twisted Hatred
AcceptQuestFrom(3567,2438);    --- The Emerald Dreamcatcher

SellItemsAt(3609);
------------------------------------------
TurnInQuestAt(6736,2159);    --- Dolanaar Delivery

TurnInQuestAt(3515,928);    --- Crown of the Earth
AcceptQuestFrom(3515,929);    --- Crown of the Earth

TurnInQuestAt(2080,997);    --- Denalan's Earth

AcceptQuestFrom(2080,918);    --- Timberling Seeds
AcceptQuestFrom(2080,919);    --- Timberling Sprouts


Seeds = {};
Seeds[1] = 2022;

Sprouts = {};
Sprouts[1] = 4608;

KillLootSeeds = CreateObjective("KillMobsAndLoot",1,8,3,918,TableToList(Seeds));
MyInfo = DoObjective(KillLootSeeds);

CollectSprouts = CreateObjective("GatherObject",1,12,1,919,nil,TableToList(Sprouts));
MyInfo = DoObjective(CollectSprouts);

TurnInQuestAt(2080,918);    --- Timberling Seeds

TurnInQuestAt(2080,919);    --- Timberling Sprouts

AcceptQuestFrom(2080,922);    --- Rellian Greenspyre

Dreeamcatcher = {};
Dreeamcatcher[1] = 126158;

CollectDreeamcatcher = CreateObjective("GatherObject",1,1,1,2438,nil,TableToList(Dreeamcatcher));
MyInfo = DoObjective(CollectDreeamcatcher);


if (IsOnQuest(929) == true) and (CanTurnInQuest(929) == false)  then
------------------------------------------
    
				Log("Idem3");	

        QuestGoToPoint(9859.428,589.2924,1300.6);    
		UsePhial()
       
    
end;

if (IsOnQuest(475) == true) and (CanTurnInQuest(475) == false)  then
    
				Log("Idem4");	

        QuestGoToPoint(9843.938,440.9659,1317.183);    
		
       
    
end;
TurnInQuestAt(2107,475);    --- A Troubling Breeze

AcceptQuestFrom(2107,476);    --- Gnarlpine Corruption


TurnInQuestAt(2150,488);    --- Zenn's Bidding

AcceptQuestFrom(2081,489);    --- Gnarlpine Corruption

TurnInQuestAt(2078,476);    --- Gnarlpine Corruption

TurnInQuestAt(3567,2438);    --- The Emerald Dreamcatcher

AcceptQuestFrom(3567,2459);    --- Ferocitas the Dream Eater

TurnInQuestAt(3515,929);    --- Crown of the Earth

AcceptQuestFrom(3515,933);    --- Crown of the Earth

Cone = {};
Cone[1] = 1673;
CollectCone = CreateObjective("GatherObject",1,3,1,489,nil,TableToList(Cone));
MyInfo = DoObjective(CollectCone);

------------------------------------------
Mystic = {};  
Mystic[1] = 7235;
Mystic = CreateObjective("KillMobs",1,7,2,2459,TableToList(Mystic));

Ferocitas = {}; 
Ferocitas[1] = 7234; 
UseNecklace()


if (IsOnQuest(489) == true) and (CanTurnInQuest(489) == true) then
    
				Log("Idem5");	

        QuestGoToPoint(9921.236,741.9571,1314.808);    
		
       
    
end;
TurnInQuestAt(2150,489);    

if (IsOnQuest(932) == true) and (CanTurnInQuest(932) == false) then
    
				Log("Idem6");	

        QuestGoToPoint(10085.81,1189.809,1316.135);    
		
       
    
end;

Lord = {};
Lord[1] = 2038;
KillLootLord = CreateObjective("KillMobsAndLoot",1,1,2,932,TableToList(Lord));

if CanTurnInQuest(932) then
UseHearthStone();
end;


if  (IsOnQuest(932) == true) then
    
		Log("Idem2");	
		QuestGoToPoint(9899.607,987.7897,1354.803);     
		TurnInQuestAt(3567,932);   
		

end;




 
TurnInQuestAt(3567,2459);    

------------------------------------------

if (HasPlayerFinishedQuest(487) == false)  then
    
    
        QuestGoToPoint(9912.68,1157.735,1308.098);     
    
end;
AcceptQuestFrom(2151,487);    --- The Road to Darnassus


Ambusher = {};
Ambusher[1] = 2152;
Ambusher = CreateObjective("KillMobs",1,6,1,487,TableToList(Ambusher));
if (HasPlayerFinishedQuest(487) == false)  then
    
    
        QuestGoToPoint(9912.68,1157.735,1308.098);     
    
end;
TurnInQuestAt(2151,487);    --- The Road to Darnassus

if (HasPlayerFinishedQuest(922) == false)  then
    
    
        QuestGoToPoint(10086.51,2532.814,1317.558);     
    
end;
TurnInQuestAt(3517,922); ---Rellian Greenspyre   
AcceptQuestFrom(3517,923);    --- Tumors
AcceptQuestFrom(7316,2519);    --- The Temple of the Moon
if (HasPlayerFinishedQuest(2519) == false)  then
    
    
        QuestGoToPoint(9631.233,2552.024,1354.81);     
    
end;
TurnInQuestAt(7313,2519); ---Rellian Greenspyre   
AcceptQuestFrom(7313,2518);    --- Tears of the Moon

--if CanTurnInQuest(487) then
--UseHearthStone();
--end;


Tumors = {};
Tumors[1] = 2029;
KillLootTumors = CreateObjective("KillMobsAndLoot",1,5,1,923,TableToList(Tumors));
MyInfo = DoObjective(KillLootTumors);

Spineret = {};
Spineret[1] = 7319;
KillLootSpineret = CreateObjective("KillMobsAndLoot",1,1,1,2518,TableToList(Spineret));
MyInfo = DoObjective(KillLootSpineret);


------------------------------------------

AcceptQuestFrom(3519,937);    --- The Enchanted Glade
Belt = {};
Belt[1] = 2019;
KillLootBelt = CreateObjective("KillMobsAndLoot",1,6,1,937,TableToList(Belt));
MyInfo = DoObjective(KillLootBelt);



if (HasPlayerFinishedQuest(938) == false)  then
    
    
    QuestGoToPoint(10756.39,2198.298,1331.588);    

       
    
end;
AcceptQuestFrom(3568,938);    --- Mist
if (IsOnQuest(938) == true)  then
    
    
    QuestGoToPoint(10664.36,1864.308,1324.4);    

       
    
end;
TurnInQuestAt(3519,938); ---Mist
if (HasPlayerFinishedQuest(938) == false)  then
    
    
    QuestGoToPoint(10675.41,1858.684,1324.322);    
	
       
    
end;

TurnInQuestAt(3519,937); --- The Enchanted Glade




--if (IsOnQuest(933) == true) and (HasItem(5645)== false)  then
    
    
  --  QuestGoToPoint(9555.801,1655.141,1299.454);    
	--UsePhial2()
   
    
--end;






AcceptQuestFrom(3568,940);    --- Teldrassil
AcceptQuestFrom(4241,6344);    --- Nessa Shadowsong

if CanTurnInQuest(923) then
UseHearthStone();
end;
if (HasPlayerFinishedQuest(923) == false)  then
    
    
        QuestGoToPoint(10086.51,2532.814,1317.558);     
    
end;

TurnInQuestAt(3515,933); --- Crown of Earth
TurnInQuestAt(3517,923); --- Tumors

if (HasPlayerFinishedQuest(2518) == false)  then
    
    
        QuestGoToPoint(9631.233,2552.024,1354.81);     
    
end;
TurnInQuestAt(7313,2518); --- Tears
if (HasPlayerFinishedQuest(2520) == false)  then
    
    
        QuestGoToPoint(9622.718,2517.868,1333.279);     
		UseSacrifice()
end;
TurnInQuestAt(7313,2520); --- Sathrah's Sacrifice
if (HasPlayerFinishedQuest(6344) == false)  then
    
    
        QuestGoToPoint(9946.238,2625.484,1316.402);   
		while(InGame == false) do
		SleepPlugin(5000);
		end;
		QuestGoToPoint(8697.3,951.1349,12.78903);  
				
end;
TurnInQuestAt(10118,6344); --- Nessa Shadowsong
AcceptQuestFrom(10118,6341);    --- The Bounty of Teldrassil
TurnInQuestAt(3838,6341); --- The Bounty of Teldrassil





Log("Teldrassil complete. Please make new Heartstone at inn and start Darkshore profile");

StopQuestProfile();



--if (IsOnQuest(933) == true) and (CanTurnInQuest(933) == false)  then
    
    
  --  QuestGoToPoint(10675.39,1857.619,1324.159);    
	--UsePhial2()
   
  --zadnja  
--end;
--QuestGoToPoint(8697.3,951.1349,12.78903);  