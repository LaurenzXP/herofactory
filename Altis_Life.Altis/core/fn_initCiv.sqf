/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos", "_uniform"];

civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_House_Big_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_03_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_House_Big_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_03_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_House_Big_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_03_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_House_Big_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_03_V1_F"],250];

waitUntil {!(isNull (findDisplay 46))};

if(life_is_arrested) then
{
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
}
	else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};
player addRating 9999999;




// we need to add some special uniforms for special player

		// GANGS
		
if((getPlayerUID player) in ["76561197967160502","76561198035428502","76561198024356511","76561198114611949"])then {

	_uniform = uniform player;
	switch(_uniform) {
		case "U_O_SpecopsUniform_ocamo" : {
			player setObjectTextureGlobal [0,"textures\sec.jpg"];
		}
	}
};




[] call life_fnc_zoneCreator;
[] call life_fnc_initHouses;