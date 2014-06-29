#include <macro.h>
/*
	COP UNIFORM SCRIPT
	Author: [SD] Demon 
	
*/

if (playerSide == west) then {

	// Switch texture only if cop is wearing a specific uniform!
	if ((__GETC__(life_coplevel) > 0) && (uniform player == "U_Rangemaster") )  then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\Rangemaster_Polizei_beamter.jpg"]; // this is for all cops whitelisted or public.
	};

	if ((__GETC__(life_coplevel) > 6) && (uniform player == "U_B_CombatUniform_mcam_worn") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\U_B_CombatUniform_mcam.P1.jpg"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};
	
	if ((__GETC__(life_coplevel) > 3) && (uniform player == "U_B_CombatUniform_mcam") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\U_B_CombatUniform_mcam.P2.jpg"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};

	if ((__GETC__(life_coplevel) > 0) && (Backpack player == "B_OutdoorPack_blk") ) then {
		 (unitbackpack player) setObjectTextureGlobal [0, "textures\COP\Uniform\Rucksack_Polizei.jpg"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};
};
	
