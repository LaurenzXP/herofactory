/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
/*removeAllContainers player;
removeAllWeapons player;
player addUniform "U_Rangemaster";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
	player unlinkItem (hmd player);
};

player setObjectTextureGlobal [0,"textures\MED\recrute_uniform_rettungsdienst.jpg"];*/

#include <macro.h>
/*
	COP UNIFORM SCRIPT
	Author: [SD] Demon 
	
*/

if ((playerSide == independent)  && (uniform player == "U_Rangemaster") )  then {
		player setObjectTextureGlobal [0, "textures\MED\recrute_uniform_rettungsdienst.jpg"]; // this is for all cops whitelisted or public.
	};