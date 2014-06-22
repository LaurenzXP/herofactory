/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_markers","_mkName","_mk","_uniform","_gang_sd", "_gang_adac"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

_gang_sd = ["76561197967160502","76561198035428502","76561198024356511","76561198114611949"];
_gang_adac = ["76561198125791794","76561198135304154","76561197988162012","76561197979887957"];


//Spawn Marker, Spawn Name, PathToImage


switch (_side) do
{
	case west:
	{
		_markers = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		_markers = [
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		_houses = [
			"Land_i_House_Small_01_V1_F",
			"Land_i_House_Small_01_V2_F",
			"Land_i_House_Small_01_V3_F",
			"Land_i_House_Small_02_V1_F",
			"Land_i_House_Small_02_V2_F",
			"Land_i_House_Small_02_V3_F",
			"Land_i_House_Small_03_V1_F",
			"Land_i_House_Big_01_V1_F",
			"Land_i_House_Big_01_V2_F",
			"Land_i_House_Big_01_V3_F",
			"Land_i_House_Big_02_V1_F",
			"Land_i_House_Big_02_V2_F",
			"Land_i_House_Big_02_V3_F"
		];
		
		if(license_civ_rebel) then {
		_markers = _markers + [
					["rebellen_1","Rebel Spawn 1","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["rebellen_2","Rebel Spawn 2","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["rebellen_3","Rebel Spawn 3","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		
		
		// GANGS
		// Security service - with loadout for Uniforms
		if((getPlayerUID player) in _gang_sd )then {
				_uniform = uniform player;
				switch(_uniform) do {
					case "U_O_SpecopsUniform_ocamo" : {
						player setObjectTextureGlobal [0,"textures\sec.jpg"];
				};
			};
			_markers = _markers + [
							["securityservice","Sicherheitsdienst","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};
		// ADAC with loadout for Uniforms
		if((getPlayerUID player) in _gang_adac )then {
				_uniform = uniform player;
				switch(_uniform) do {
					case "C_scientist_F" : {
						player setObjectTextureGlobal [0,"textures\ADAC\adac_uniform.paa"];
				};
			};
			_markers = _markers + [
							["adac_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
							["adac_2","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};		
		

			
		_i = 1;
		{
			_house = nearestObject [(_x select 0), "House_F"];
			if((typeOf _house) in _houses) then {
				
				_mkName  = format["civ_spawn_home_%1", _i];
				
				if (isNil (_mkName)) then {
					_mk = createMarkerLocal [_mkName, (_x select 0)];
					_mk setMarkerAlphaLocal 0;
				};
				
				_markers set [count _markers, [_mkName, format ["Home %1", _i], "\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
				_i = _i + 1;
			};
		}forEach life_houses;			
	};
	
	case independent: {
		_markers = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
	
	case east: {
		_markers = [
			["adac_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["adac_2","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
};
_markers;