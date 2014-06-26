/*
	File: fn_insertHouse.sqf
	Author: [SD] Demon
	
	Description:
	inserts Herofactory stuff to Database
*/
private["_type","_xpos","_ypos","_yinventory","_inventory","_plate","_query","_sql"];



_type = [_this,0,"",[""]] call BIS_fnc_param;
_xpos = [_this,1,"",[""]] call BIS_fnc_param;
_xpos = [_this,2,"",[""]] call BIS_fnc_param;
_yinventory = [_this,3,"",[""]] call BIS_fnc_param;
_inventory = [_this,4,"",[""]] call BIS_fnc_param;
_plate = [_this,5,[],[[]]] call BIS_fnc_param;

//Stop bad data being passed.
if(_uid == "" OR _houseId == "") exitWith {};

switch(_type):
{
	case "vehicle"
	{
		_query = format["INSERT INTO vehicle_position (xpos, ypos, yinventory, inventory) VALUES ('%1', '%2', '%3', '%4', '%5', '%6')",_houseId, _uid, _storage, _trunk, _position, 1];
	}


}



_query = format["INSERT INTO houses (house_id, pid, storage, trunk, position, occupied) VALUES ('%1', '%2', '%3', '%4', '%5', '%6')",_houseId, _uid, _storage, _trunk, _position, 1];
waitUntil {!DB_Async_Active};
_thread = [_query,false] spawn DB_fnc_asyncCall;
waitUntil {scriptDone _thread};