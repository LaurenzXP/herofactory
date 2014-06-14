/*
	File:
*/
private["_packet","_array","_flag"];
_packet = [getPlayerUID player,name player,playerSide,life_cash,life_atmcash];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case east: {"adac"}; case independent: {"med"};};
{
	if(_x select 1 == _flag) then
	{
		_array set[count _array,[_x select 0,(missionNamespace getVariable (_x select 0))]];
	};
} foreach life_licenses;

_packet set[count _packet,_array];
switch (playerSide) do {
	case west: {_packet set[count _packet,cop_gear];};
	case civilian: {
		[] call life_fnc_civFetchGear;
		_packet set[count _packet,civ_gear];
		_packet set[count _packet,life_is_arrested];
	};
	case independent:
 	{
 		_array = [];
		{
			if(_x select 1 == "adac") then
			{
				_array set[count _array,[_x select 0,(missionNamespace getVariable (_x select 0))]];
			};
		} foreach life_licenses;
		_packet set[count _packet,_array];
		_gear = independent_gear;
		_packet set[count _packet,_gear];
	};
	case east:
 	{
		[] call life_fnc_adacloadGear;
		_packet set[count _packet,adac_gear];

	};
};

[_packet,"DB_fnc_updateRequest",false,false] spawn life_fnc_MP;