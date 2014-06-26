/*
	File: fn_insertHouse.sqf
	Author: [SD] Demon
	
	Description:
	inserts Herofactory stuff to Database
*/
private["_uid","_position","_yinventory","_inventory","_query","_sql"];


_uid = [_this,0,"",[""]] call BIS_fnc_param;
_xpos = [_this,1,"",[""]] call BIS_fnc_param;
_yinventory = [_this,3,"",[""]] call BIS_fnc_param;
_inventory = [_this,4,"",[""]] call BIS_fnc_param;



//No uid - exit
if(_uid == "") exitWith {};

_query = format["UPDATE players SET position = '%1' WHERE playerid='%3'",_xpos,_ypos,_uid];};


waitUntil {!DB_Async_Active};
_thread = [_query,false] spawn DB_fnc_asyncCall;
waitUntil {scriptDone _thread};