raha=6000;
tehtava=0;
vastaus=-1;

////////////////// ALKU INTRO ////////////////
[] execvm "alku.sqf";

///////////KAUPPA//////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
tilattu = 0; 
kokopotti=0; 
indeksi=0; 
kama = []; 

"moralezland" setMarkerAlpha 0;
///////////////////////////////////////////////////////////////////////////////////////////////////////
tuote = ["AKM 3000", "Protector 2700", "MX 6.5mm 5400", "MK-14 5400", "MK200 MG 6000", "Mk-I EMR 7.62 mm 8100", "GM6 Lynx 12.7 mm 11700", "P07 600", "ACP 45 600"];

asehinta = [3000,2700,5400,5400,6000,8100,11700,600,600];

toimitus = ["arifle_AKM_F", "SMG_05_F", "arifle_MX_F", "srifle_DMR_06_olive_F", "LMG_Mk200_F", "srifle_DMR_03_F",  "srifle_GM6_F", "hgun_P07_F", "hgun_ACPC2_F"];

///////////////////////////////////////////////////////////////////////////////////////////////////////
lipas = ["AKM 3 mags 300", "Protector 3 mags 210", "MX 3 mags 300", "MK14 3 mags 350", "MK200 belt 600", "Mk-I EMR 7.62mm 3 mags 500", "GM6 Lynx 12.7 mm 3 mags 900", "P07 clip 40", "ACP45 clip 30"];

lipashinta = [300,210,300,350,600,500,900,40,30];

lipastoimitus = ["30Rnd_762x39_Mag_F", "30Rnd_9x21_Mag_SMG_02", "30Rnd_65x39_caseless_mag", "20Rnd_762x51_Mag", "200Rnd_65x39_cased_Box_Tracer", "20Rnd_762x51_Mag", "5Rnd_127x108_Mag", "16Rnd_9x21_Mag", "9Rnd_45ACP_Mag"];



///////////////////////////////////////////////////////////////////////////////////////////////////////

vaate = ["Worn Combat + 700", "Ghilliesuit ++ 5400", "Body armor +++ 2500", "Body armor ++ 2500", "vests + 1200", "backpack 1000", "Light Helmet + 800", "Helmet ++ 1300", "Combat Helmet +++ 2000"];

vaatehinta = [700,5400,2500,2500,1200,1000,800,1300,2000];

vaatetoimitus = ["U_B_CombatUniform_mcam_worn", "U_B_FullGhillie_lsh", "V_PlateCarrierGL_blk", "V_PlateCarrierSpec_blk", "V_tacVest_blk", "B_FieldPack_blk", "H_HelmetB_camo", "H_HelmetB_black", "H_HelmetSpecB"];

varuste = ["Binoculars 500", "Rangefinder 1000", "LRPS scope 900", "MOS scope 700", "Amos scope 600", "handgrenade 500", "Claymore mine 800","silencer MX 500","Silencer Mk-I EMR 600","Silencer 9mm 250","Silencer ACP 250","Nightvision goggles 800"];

varustehinta = [500,1000,900,700,600,500,800,500,600,250,250,800];

varustetoimitus = ["binocular", "rangefinder", "optic_LRPS", "optic_SOS", "optic_AMS", "HandGrenade","ClaymoreDirectionalMine_Remote_Mag","muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_acp","NVGoggles"];

////////////////////////////////////////////////////////////////////////////////////////////////////////


call compile preprocessFile "kauppa.sqf"; 


///////////////////////////////////////
////// ENSIMMÄINEN TEHTÄVÄ/////////////
"start" setMarkerAlpha 0;
"target" setMarkerAlpha 0;
"end" setMarkerAlpha 0;

kill=false;
fail=false;

target allowfleeing 0;
panic=false;
kukatappoi="";
tappaja=false;
poistuminen1=false;

scripti1 = [player] execvm "eka_havainto.sqf";

[] execvm "claymore.sqf";

{
	if ((side _x)==east) then {
	[_x] execvm "eka_killed.sqf";
	};
} foreach allunits;
/////////////////////////////////////
///////////TOINEN TEHTÄVÄ////////////
waitUntil {tehtava==1.5};
terminate scripti1;
"start" setMarkerpos getpos tokaaloitus;
"start" setMarkerAlpha 100;
"end" setMarkerpos getpos tokaend;
"end" setMarkerAlpha 100;
"target" setMarkerpos getpos laptop2;
"target" setMarkerText "laptop";
"target" setMarkerAlpha 100;
"moralezland" setMarkerAlpha 100;


waitUntil {tehtava==2};

autosta=false;
haly2=false;
takas=false;
koodit=false;
lekokentalle=false;
download=false;
lentoansa=false;
autoansa2=false;
ammuttu2=false;

tappo2=false;
fail2=false;
loppu2=false;
endi=0;
poistuminen2=false;
scripti2=[] execvm "toka_moralez.sqf";
scripti3=[player] execvm "toka_fired.sqf";
scripti4=[player] execvm "toka_havainto.sqf";
/////////////////////////////////////
///////////KOLMAS TEHTÄVÄ////////////
waitUntil {tehtava==2.1};
terminate scripti2;
terminate scripti3;
terminate scripti4;

/// LOPUT init-tiedostot piti laittaa suoraan tehtävätriggeriin :(
