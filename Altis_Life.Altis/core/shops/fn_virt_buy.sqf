/*
	File: fn_virt_buy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buy a virtual item from the store.
*/
private["_type","_price","_amount","_diff","_name"];
if((lbCurSel 2401) == -1) exitWith {hint "Sie müssen erst einen Gegenstand aussuchen."};
_type = lbData[2401,(lbCurSel 2401)];
_price = lbValue[2401,(lbCurSel 2401)];
_amount = ctrlText 2404;
if(!([_amount] call fnc_isnumber)) exitWith {hint "Error.. Diese Nummer ist nicht real!";};
_diff = [_type,parseNumber(_amount),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
_amount = parseNumber(_amount);
if(_diff <= 0) exitWith {hint "Ihnen fehlt der Platz für diese Anzahl an Items!"};
_amount = _diff;
if((_price * _amount) > life_cash) exitWith {hint "Sie haben leider nicht genug Geld!"};

_name = [([_type,0] call life_fnc_varHandle)] call life_fnc_varToStr;

if(([true,_type,_amount] call life_fnc_handleInv)) then
{
	hint format["You bought %1 %2 for $%3",_amount,_name,[(_price * _amount)] call life_fnc_numberText];
	life_cash = life_cash - (_price * _amount);
	[] call life_fnc_virt_update;
};
