/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","storage1","storage2"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle","moonshine","zigarren"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana","methp","uran","froglsd","uranp"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gas": {["Gas Station",["water","rabbit","apple","redgull","tbacon","fuelF","peach"]]};

	// MORE JOBS CONFIG
	case "adac": {["ADAC Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF"]]};
	case "sugar": {["Sugar Trader",["sugar","sugarc"]]};
	case "kokain": {["Drug Dealer",["kokain","kokainc"]]};
	case "silver": {["Silver Trader",["silver","silverc"]]};
	case "gold": {["Gold Trader",["gold", "goldc"]]};
	case "Schwarzmarkt": {["Schwarzmarkt",["warhead","zigarren"]]};
	case "Kraftwerk": {["Kraftwerk",["uran238"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","methp","marijuana","froglsd"]]};
	case "beer": {["Liqour Store",["wine"]]};
	case "zigaretten": {["Zigarettenverkauf",["zigaretten"]]};
};