/*
	File: welcomecredits.sqf
	Author: HellsGateGaming.com
	Edit: RenildoMarcio
	Date: 09/05/2014
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 6;

sleep 10; //Wait in seconds before the credits start after player is in-game
 
if(life_firstSpawn) then {
	life_firstSpawn = false;
	playSound ["intro",true];
};



_role1 = "Willkommen auf dem Herofactory Altis Life RPG Server:";
_role1names = ["[GER] Altis Life RPG by Tonic"];
_role2 = "Serveradmins!";
_role2names = ["Cedi","[SD] Demon","Snake"];
_role3 = "Website:";
_role3names = ["herosfactory.forumprofi.de"];
_role4 = "Teamspeak:";
_role4names = ["78.143.39.207:22400"];
_role5 = "NEWS:";
_role5names = ["Medics die Funktionieren", "ADAC", "Sicherheitsdienst", "Freundliche Polizisten", "Nervige Terroristen"];
_role6 = "Fragen?";
_role6names = ["Komm ins TS!"];
_role7 = "Herofactory";
_role7names = ["supported by shadowdragons.de"];
_role8 = "Created by:";
_role8names = ["TAW_Tonic"];
_role9 = "Music by:";
_role9names = ["DANIpeNET"];
_role11 = "Special thanks to:";
_role11names = ["TAW_Tonic", "Bruuudis","xmscx","Demon","HellsGateGaming"];




{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.65' color='#FFFFFF' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.80' color='#FF0000' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;


sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10, _role10names],
[_role11, _role11names]
];