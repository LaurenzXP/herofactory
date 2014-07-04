/*
	File: fn_buyClothes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buys the current set of clothes and closes out of the shop interface.
*/
private["_price"];
if((lbCurSel 3101) == -1) exitWith {titleText["Sie haben sich nicht das ausgesucht was Sie wollten. :)","PLAIN"];};

_price = 0;
{
	if(_x != -1) then
	{
		_price = _price + _x;
	};
} foreach life_clothing_purchase;

if(_price > life_cash) exitWith {titleText["Entschuldigung,... Sie haben nicht genug Geld um diese Kleider zu kaufen.","PLAIN"];};
life_cash = life_cash - _price;

life_clothesPurchased = true;
closeDialog 0;
[] call life_fnc_updateClothes;