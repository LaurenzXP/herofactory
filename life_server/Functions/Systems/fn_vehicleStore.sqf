/*
	File: fn_vehicleStore.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Stores the vehicle in the 'Garage'
*/
private["_vehicle","_impound","_vInfo","_vInfo","_plate","_uid","_query","_sql","_unit","_inventory","_gear"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_impound = [_this,1,false,[true]] call BIS_fnc_param;
_unit = [_this,2,ObjNull,[ObjNull]] call BIS_fnc_param;
_perm = [_this,3,false,[true]] call BIS_fnc_param;



if(isNull _vehicle OR isNull _unit) exitWith {life_impound_inuse = false; (owner _unit) publicVariableClient "life_impound_inuse";life_garage_store = false;(owner _unit) publicVariableClient "life_garage_store";}; //Bad data passed.

_vInfo = _vehicle getVariable["dbInfo",[]];
_inventory = _vehicle getVariable["trunk",[]];
_inventory = [_inventory] call DB_fnc_mresArray;

diag_log "VEHICLE INVENTORY SAFE";
diag_log _inventory;

if(count _vInfo > 0) then
{
	_plate = _vInfo select 1;
	_uid = _vInfo select 0;
};

if(_impound) then
{

	diag_log "IS IMPOUND";
	if(count _vInfo == 0) then 
	{
		life_impound_inuse = false;
		(owner _unit) publicVariableClient "life_impound_inuse";
		if(!isNil "_vehicle" && {!isNull _vehicle}) then {
			//deleteVehicle _vehicle;
			_vehicle setVehicleLock "LOCKED"
			_vehicle allowDamage false;
			_vehicle setVehiclePosition [[0,0],["junkyard"],30];

		};
	} 
		else
	{
		
		if (_perm) then {
			_query = format["UPDATE vehicles SET active='1', inventory='%3' WHERE pid='%1' AND plate='%2'",_uid,_plate,_inventory];
			waitUntil {!DB_Async_Active};
			_thread = [_query,false] spawn DB_fnc_asyncCall;
			waitUntil {scriptDone _thread};
			if(!isNil "_vehicle" && {!isNull _vehicle}) then {
				_vehicle setVehicleLock "LOCKED"
				_vehicle allowDamage false;
				_vehicle setVehiclePosition [[0,0],["junkyard"],30];
			};

		} else {
     		_query = format["UPDATE vehicles SET active=0', inventory='%3' WHERE pid='%1' AND plate='%2'",_uid,_plate,_inventory];
			waitUntil {!DB_Async_Active};
			_thread = [_query,false] spawn DB_fnc_asyncCall;
			waitUntil {scriptDone _thread};
			if(!isNil "_vehicle" && {!isNull _vehicle}) then {
				deleteVehicle _vehicle;


			};
		};
	
		life_impound_inuse = false;
		(owner _unit) publicVariableClient "life_impound_inuse";

	};
}
	else
{

	diag_log "IS NO IMPOUND";
	if(count _vInfo == 0) exitWith
	{
		[[1,(localize "STR_Garage_Store_NotPersistent")],"life_fnc_broadcast",(owner _unit),false] spawn life_fnc_MP;
		life_garage_store = false;
		(owner _unit) publicVariableClient "life_garage_store";
	};
	
	if(_uid != getPlayerUID _unit) exitWith
	{
		[[1,(localize "STR_Garage_Store_NoOwnership")],"life_fnc_broadcast",(owner _unit),false] spawn life_fnc_MP;
		life_garage_store = false;
		(owner _unit) publicVariableClient "life_garage_store";
	};
	
	_query = format["UPDATE vehicles SET active='0', inventory='%3' WHERE pid='%1' AND plate='%2'",_uid,_plate,_inventory];

	diag_log _query;

	waitUntil {!DB_Async_Active};
	_thread = [_query,false] spawn DB_fnc_asyncCall;
	waitUntil {scriptDone _thread};
	if(!isNil "_vehicle" && {!isNull _vehicle}) then {
		deleteVehicle _vehicle;
	};
	life_garage_store = false;
	(owner _unit) publicVariableClient "life_garage_store";
	[[1,(localize "STR_Garage_Store_Success")],"life_fnc_broadcast",(owner _unit),false] spawn life_fnc_MP;
};