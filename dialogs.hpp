class karkkikauppa
{
	idd= 9999;
	movingenabled = false;

class controls
{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Poksu, v1.063, #Gutodu)
////////////////////////////////////////////////////////

class alkuFrame: RscFrame
{
	idc = 1800;
	text = "Igor's Gunshop"; //--- ToDo: Localize;
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.386719 * safezoneW;
	h = 0.506 * safezoneH;
	
};
class alkuTeksti: RscText
{
	idc = 1000;
	text = "Buy my stuff and make me rich."; //--- ToDo: Localize;
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.258 * safezoneH + safezoneY;
	w = 0.324844 * safezoneW;
	h = 0.032 * safezoneH;
};
class alkuCancel: RscButton
{
	idc = 1601;
	text = "Cancel"; //--- ToDo: Localize;
	sizeEx = 0.03;
	x = 0.649531 * safezoneW + safezoneX;
	y = 0.676 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.055 * safezoneH;
	action = "closeDialog 2;Kokopotti=0;";

};
class lista: RscListbox
{
	idc = 1500;
	sizeEx = 0.03;
	text = "Misc";
	x = 0.319531 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.118594 * safezoneW;
	h = 0.33 * safezoneH;
	onMouseButtonClick = "_indexi = lbCurSel 1500; [_indexi,tuote,asehinta,toimitus] execvm 'kauppaostolistaan.sqf';"

};
	
class raha: RscText
{
	idc = 1001;
	text = "Money:"; //--- ToDo: Localize;
	x = 0.412344 * safezoneW + safezoneX;
	y = 0.698 * safezoneH + safezoneY;
	w = 0.180469 * safezoneW;
	h = 0.033 * safezoneH;
};
class osta: RscButton
{
	idc = 1600;
	sizeEx = 0.03;
	text = "Buy"; //--- ToDo: Localize;
	x = 0.603125 * safezoneW + safezoneX;
	y = 0.676 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.055 * safezoneH;
	onButtonClick = "[] execVM 'kauppaosta.sqf'";
};
class rynkyt: RscButton
{
	idc = 1602;
	sizeEx = 0.03;
	text = "Guns"; //--- ToDo: Localize;
	x = 0.319531 * safezoneW + safezoneX;
	y = 0.632 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.055 * safezoneH;
	onButtonClick = "[] execVM 'kaupparynkyt.sqf'";
};
class ostoslista: RscListbox
{
	idc = 1501;
	sizeEx = 0.03;
	text = "Shoppinglist"; //--- ToDo: Localize;
	x = 0.567031 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.108281 * safezoneW;
	h = 0.286 * safezoneH;
	onMouseButtonClick = "_indexi = lbCurSel 1500; [_indexi,tuote,asehinta,toimitus] execvm 'kauppapoislistalta.sqf';"
	
};
class singot: RscButton
{
	idc = 1603;
	sizeEx = 0.03;
	text = "Ammo"; //--- ToDo: Localize;
	x = 0.365937 * safezoneW + safezoneX;
	y = 0.632 * safezoneH + safezoneY;
	w = 0.0670312 * safezoneW;
	h = 0.055 * safezoneH;
	onButtonClick = "[] execVM 'kauppalippaat.sqf'";
};
class vaatteet: RscButton
{
	idc = 1604;
	sizeEx = 0.03;
	text = "Clothes"; //--- ToDo: Localize;
	x = 0.438125 * safezoneW + safezoneX;
	y = 0.632 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.055 * safezoneH;
	onButtonClick = "[] execVM 'kauppavaatteet.sqf'";
};
class varusteet: RscButton
{
	idc = 1605;
	sizeEx = 0.03;
	text = "Equipment"; //--- ToDo: Localize;
	x = 0.484531 * safezoneW + safezoneX;
	y = 0.632 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.055 * safezoneH;
	onButtonClick = "[] execVM 'kauppavarusteet.sqf'";
};
class summa: RscText
{
	idc = 1002;
	text = "Total:"; //--- ToDo: Localize;
	x = 0.463906 * safezoneW + safezoneX;
	y = 0.599 * safezoneH + safezoneY;
	w = 0.211406 * safezoneW;
	h = 0.032 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};
};