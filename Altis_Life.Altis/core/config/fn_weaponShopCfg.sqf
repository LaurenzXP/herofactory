#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop", "_coplevel"];

_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
			 ["Grundausstattung",
					[
						["arifle_sdar_F","Taser Gewehr",20000],
						["hgun_P07_snds_F","Taser Pistole",2000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,2500],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["Chemlight_red",nil,30],
				        ["Chemlight_yellow",nil,30],
				        ["Chemlight_green",nil,30],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};
		};
	};
	
	case "security":
	{
		switch(true) do
		{
			case ((getPlayerUID player) in  __GETC__(life_gang_sd)): 
			{
			 ["Altis Life SD Shop",
				   	[
						["arifle_Mk20C_F",nil,130000],
						["SMG_02_ACO_F",nil,15000],
                        ["srifle_LRR_SOS_F",nil,200000],
						["arifle_MX_GL_F",nil,40000],       
                        ["srifle_GM6_F",nil,110000],
						["hgun_Pistol_heavy_01_F",nil,82000],
						["LMG_Zafir_F",nil,200000],
						["arifle_Katiba_C_F",nil,150000],
						["srifle_DMR_01_F",nil,190000],
						["srifle_EBR_F",nil,210000],
						["hgun_Pistol_heavy_02_F",nil,58000],	
						["hgun_Rook40_F",nil,61500],
						["6Rnd_45ACP_Cylinder",nil,250],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_9x21_Mag",nil,500],
						["30Rnd_556x45_Stanag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["30Rnd_556x45_Stanag",nil,1000],
						["10Rnd_762x51_Mag",nil,1000],
						["20Rnd_762x51_Mag",nil,1000],
                        ["5Rnd_127x108_Mag",nil,2000],
                        ["7Rnd_408_Mag",nil,9500],
						["150Rnd_762x51_Box",nil,5000],
						["11Rnd_45ACP_Mag",nil,70],
						["16Rnd_9x21_Mag",nil,120],
                        ["optic_Arco",nil,4000],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,3000],
						["optic_Holosight_smg",nil,3000],
						["optic_Hamr",nil,5000],
                        ["optic_SOS",nil,5000],
                        ["optic_NVS",nil,6000],
                        ["optic_LRPS",nil,12000],
                        ["optic_DMS",nil,6500],
                        ["optic_Nightstalker",nil,9500],
						["optic_Yorris",nil,1000],
						["muzzle_snds_H_MG",nil,5000],
						["30Rnd_9x21_Mag",nil,250],
						["Chemlight_red",nil,30],
				        ["Chemlight_yellow",nil,30],
				        ["Chemlight_green",nil,30],
						["FirstAidKit",nil,150],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["muzzle_snds_B",nil,10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_acp",nil,10000],
						["optic_MRCO",nil,6000]



					]
				];
			};
			default {"Du bist kein Mitglied des Sicherheitsdienstes"};
		};
	};
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
			["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["Chemlight_red",nil,30],
				        ["Chemlight_yellow",nil,30],
				        ["Chemlight_green",nil,30],
						["B_FieldPack_ocamo",nil,3000],
						["B_AssaultPack_cbr",nil,2500],
						["B_Kitbag_mcamo",nil,4500],
						["B_TacticalPack_oli",nil,3500],
						["B_FieldPack_ocamo",nil,3000],
						["B_Bergen_sgg",nil,4500],
						["B_Kitbag_cbr",nil,4500],
						["B_Carryall_oli",nil,5000],
						["B_Carryall_khk",nil,5000],
						["U_Rangemaster",nil,1000]						

					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
		 ["Polizei Shop",
					[
						["arifle_MX_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant rank!"};
			default
			{
			["GSGA Shop",
					[
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["arifle_TRG21_F",nil,10000],
						["30Rnd_556x45_Stanag",nil,500],
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_MXC_F",nil,30000],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200],
						["arifle_MX_Black_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_MX_SW_Black_F",nil,105000],
						["100Rnd_65x39_caseless_mag",nil,2000],
						["arifle_MXM_Black_F",nil,90000],
						["muzzle_snds_H",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,750],
						["optic_Holosight",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["Chemlight_red",nil,30],
				        ["Chemlight_yellow",nil,30],
				        ["Chemlight_green",nil,30],
						["optic_Hamr",nil,2000],
						["optic_tws",nil,2000],
						["optic_MRCO",nil,3000],
						["optic_Arco",nil,4000],
						["optic_SOS",nil,5000],
						["optic_NVS",nil,6000]
					]
				];
			};
		};
	};
	
	case "cop_sniper":
    {
        switch(true) do
        {
            case (playerSide != west): {"You are not a cop!"};
            case (__GETC__(life_coplevel) < 4): {"You are not at a sniper rank!"};
            default
            {
           ["GSGA Scharfschuetzen Shop",
                    [
                        ["optic_Arco",nil,4000],
                        ["200Rnd_65x39_cased_Box",nil,500],
                        ["srifle_EBR_F",nil,21000],
                        ["optic_SOS",nil,5000],
                        ["optic_NVS",nil,6000],
                        ["srifle_GM6_F",nil,110000],
                        ["5Rnd_127x108_Mag",nil,2000],
                        ["optic_LRPS",nil,12000],
                        ["optic_DMS",nil,6500],
                        ["optic_Nightstalker",nil,9500]                
                    ]
                ];
            };
        };
    };
	
	case "cop_gsga":
    {
        switch(true) do
        {
            case (playerSide != west): {"You are not a cop!"};
            case (__GETC__(life_coplevel) < 5): {"You are not at a officer rank!"};
            default
            {
           ["GSGA Gruppenfuehrer Shop",
                    [
                        ["LMG_Zafir_F",nil,50000],
                        ["SMG_02_ACO_F",nil,15000],
                        ["LMG_Mk200_F",nil,50000],
                        ["srifle_EBR_F",nil,50000],
                        ["arifle_MX_GL_F",nil,40000],
                        ["arifle_TRG21_GL_F",nil,30000],
                        ["150Rnd_762x51_Box",nil,500],
                        ["20Rnd_762x51_Mag",nil,1000],
                        ["200Rnd_65x39_cased_Box",nil,500],
                        ["muzzle_snds_H",nil,2750],
						["muzzle_snds_H_MG",nil,5000],
						["UGL_FlareWhite_F",nil,500],
						["UGL_FlareGreen_F",nil,500],
						["UGL_FlareRed_F",nil,500],
						["SmokeShell",nil,100],
						["SmokeShellGreen",nil,100],
						["SmokeShellRed",nil,100],
						["3Rnd_UGL_FlareWhite_F",nil,500],
						["30Rnd_9x21_Mag",nil,60],
						["Chemlight_red",nil,30],
				        ["Chemlight_yellow",nil,30],
				        ["Chemlight_green",nil,30],
						["FirstAidKit",nil,150],
						["optic_Arco",nil,4000],
                        ["optic_SOS",nil,5000],
                        ["optic_NVS",nil,6000],
                        ["optic_LRPS",nil,12000],
                        ["optic_DMS",nil,6500],
                        ["optic_Nightstalker",nil,9500],
                        ["B_UavTerminal",nil,30000],
                        ["B_UAV_01_backpack_F",nil,50000],
                        ["DemoCharge_Remote_Mag",nil,10000],
                        ["HandGrenade_Stone","Flashbang",1700],
						["Medikit",nil,500]              
                    ]
                ];
            };
        };
    };
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
			["Mohammed's Jihadi Shop",
					[
						["hgun_Pistol_heavy_01_F",nil,82000],
						["LMG_Zafir_F",nil,500000],
						["150Rnd_762x51_Box",nil,5000],
						["11Rnd_45ACP_Mag",nil,70],
						["hgun_Rook40_F",nil,61500],
						["DemoCharge_Remote_Mag",nil,100000],
						["APERSMine_Range_Mag",nil,70000],
						["16Rnd_9x21_Mag",nil,120],
						["hgun_Pistol_heavy_02_F",nil,58000],
						["optic_Yorris",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,250],
						["hgun_PDW2000_F",nil,90000],
						["30Rnd_9x21_Mag",nil,500],
						["arifle_SDAR_F",nil,140000],
						["30Rnd_556x45_Stanag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["arifle_Katiba_C_F",nil,150000],
						["arifle_Katiba_F",nil,160000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["arifle_Mk20C_F",nil,130000],
						["arifle_Mk20C_plain_F",nil,135000],
						["arifle_Mk20_F",nil,140000],
						["arifle_Mk20_plain_F",nil,160000],
						["30Rnd_556x45_Stanag",nil,1000],
						["srifle_DMR_01_F",nil,190000],
						["10Rnd_762x51_Mag",nil,1000],
						["srifle_EBR_F",nil,210000],
						["20Rnd_762x51_Mag",nil,1000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["7Rnd_408_Mag",nil,5000],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,3000],
						["optic_Holosight_smg",nil,3000],
						["optic_Hamr",nil,5000],
						["srifle_LRR_LRPS_F",nil,1500000],
						["muzzle_snds_B",nil,10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_acp",nil,10000],
						["optic_MRCO",nil,6000],
						["optic_Arco",nil,8000],
						["optic_DMS",nil,10000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
		 ["STS Donator Shop Tier 1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
			["STS Donator Shop Tier 2",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["arifle_MK20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
			["STS Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,500],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	case "gas":
	{
		["Altis General Store",
			[
				["Binocular",nil,300],
				["ItemGPS",nil,100],
				["ToolKit",nil,1000],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
