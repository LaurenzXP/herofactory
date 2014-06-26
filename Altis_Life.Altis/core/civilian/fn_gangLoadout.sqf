#include <macro.h>
/*
    File: fn_gangLoadout.sqf
    Author: [SD] Demon

    Description:
    Load the Gangspecific Loadout for Gangs
*/


if (playerSide == civilian) then
{

	if((getPlayerUID player) in __GETC__(life_gang_sd)) then {
		_uniform = uniform player;
		switch(_uniform) do {
			case "U_B_CombatUniform_mcam" : {
				player setObjectTextureGlobal [0,"textures\sec.jpg"];
			};
			case "U_Rangemaster" : {
				player setObjectTextureGlobal [0, "textures\SD\Rangemaster-uniform.jpg"]; 			
			};		
		};	
	};
	if((getPlayerUID player) in __GETC__(life_gang_adac)) then {
			case "U_Rangemaster" : {
				player setObjectTextureGlobal [0, "textures\ADAC\adac_uniform.jpg"]; 			
			};		


	};
};

	