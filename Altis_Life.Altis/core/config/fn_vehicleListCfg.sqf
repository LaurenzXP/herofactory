#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return", "_gang_sd"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];

// GANG CONFIGS
_gang_sd = ["76561197967160502","76561198035428502","76561198024356511","76561198114611949"];



switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
		    ["C_SUV_01_F",5000],
		    ["B_MRAP_01_F",50000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000],
			["I_Heli_Transport_02_F",175000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",49500],			
			["C_Offroad_01_F",12500],
			["B_G_Offroad_01_F",12500],			
			["C_SUV_01_F",35000],
			["C_Van_01_box_F",60000],
			["C_Van_01_transport_F",40000]
		];

		// GANG Cars
		if((getPlayerUID player) in _gang_sd )then {
			_return = _return + 
			[
				["O_MRAP_02_F",640000]
			];
				
		};

	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",524000],
			["O_Truck_03_transport_F",524000],
			["O_Truck_03_covered_F",750000],
			["B_Truck_01_box_F",524000],
			["B_Truck_01_covered_F",950000],
			["O_Truck_03_device_F",1450000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",950000],
			["B_Truck_01_transport_F",1724000],
			["O_Truck_03_transport_F",1724000],
			["O_Truck_03_covered_F",1950000],	
			["B_Heli_Light_01_F",1325000],
			["I_Heli_Transport_02_F",6325000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",7000000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",1000]];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",10000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",10000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",150000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_MRAP_03_F",250000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",500000],
			["O_Heli_Light_02_unarmed_F",750000],
			["I_Heli_Transport_02_F",6325000]		
		];

	};
	
	case "cop_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",175000]];
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",275000]];
		};

	};
	
	case "cop_airhq":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",175000]];			
			_return set[count _return,
			["B_MRAP_01_hmg_F",750000]];
		};

		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",275000]];
		};

	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
