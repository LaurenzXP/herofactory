/*
	File: fn_adacLoadOut.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the ADAC out with the default gear.
*/
removeAllContainers player;
removeAllWeapons player;
player addUniform "U_Rangemaster";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "ToolKit";
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
	player unlinkItem (hmd player);
};

player setObjectTextureGlobal [0,"textures\adac_uniform.jpg"];