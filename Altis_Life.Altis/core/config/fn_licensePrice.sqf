/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {25000}; //Pilot/air license cost
	case "gun": {10000}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost
	case "oil": {10000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {25000}; //Heroin processing license cost
	case "marijuana": {19500}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {75000}; //Rebel license cost
	case "truck": {20000}; //Truck license cost
	case "diamond": {35000};
	case "salt": {12000};
	case "cocaine": {30000};
	case "sand": {14500};
	case "iron": {9500};
	case "meth": {250000};
	case "copper": {8000};
	case "cement": {6500};
	case "mair": {15000};
	case "uran": {250000};
	case "warhead" : {300000};
	case "passport": {25000};
    case "grapes": {12000};
    case "moonshine": {25000};
    case "taback": {12000};
    case "zigarren": {25000};
	
	case "home": {150000};
	
	
				// licenzen
	case "adac": {15000};
			
			// goods 
	case "sugar": {15000};
	case "kokain": {15000};
	case "silver":  {15000};
	case "gold":  {15000};
	
	
};