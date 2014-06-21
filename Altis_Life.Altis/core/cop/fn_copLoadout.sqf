/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
private("_coplevel");

player addUniform "U_Rangemaster";

	
	_coplevel = (_GETC__(life_coplevel));

	switch(_coplevel) do {
		case 1:
			player setObjectTextureGlobal [0,"textures\COP\Uniform\police_uniform.jpg"];
		case 2:
			player setObjectTextureGlobal [0,"textures\COP\Uniform\police_uniform.jpg"];
		case 3:
			player setObjectTextureGlobal [0,"textures\COP\Uniform\police_uniform.jpg"];
		case 4:
			player setObjectTextureGlobal [0,"textures\COP\Uniform\police_uniform.jpg"];
		case 5:	
			player setObjectTextureGlobal [0,"textures\COP\Uniform\Sergeant_4.jpg"];
		case 6:	
			player setObjectTextureGlobal [0,"textures\COP\Uniform\swat_shirt.jpg"];
		case 7:	
			player setObjectTextureGlobal [0,"textures\COP\Uniformswat_shirt.jpg"];	
	};

