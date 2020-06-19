valipalkkio=0;
palkkio = 0;


sleep 9;

if (!poistuminen2) then {

	if (tappo2) then {
		valipalkkio=3000;
		palkkio = palkkio + valipalkkio;
		[format ["Moralez is eliminated, you earned %1$.",valipalkkio]] spawn BIS_fnc_titleText;
		
		sleep 10;
	} else {
		[format ["Moralez got away, no earnings for assassination."]] spawn BIS_fnc_titleText;	
		sleep 10;
	};

	if (download) then {
		valipalkkio=5000;
		palkkio = palkkio + valipalkkio;
		[format ["For downloading data to client, you earned %1$",valipalkkio]] spawn BIS_fnc_titleText;
		sleep 10;
	} else {
		[format ["Downloading failed, no earnings for bonustask"]] spawn BIS_fnc_titleText;
		sleep 10;
	};

		if (palkkio > 0) then {
		[format ["Total earnings from 'Slice and dice': %1$",palkkio]] spawn BIS_fnc_titleText;
		sleep 10;
		} else {
		[format ["Nothing was earned from the mission 'Slice and dice'."]] spawn BIS_fnc_titleText;
		};
		
} else {
		[format ["you left the area, maybe this assassination is not your thing. No earnings."]] spawn BIS_fnc_titleText;
};

player removeDiaryRecord ["diary",tokabrief1];
player removeDiaryRecord ["diary",tokabrief2];

"start" setMarkerAlpha 0;
"target" setMarkerAlpha 0;
"end" setMarkerAlpha 0;
"moralezland" setMarkerAlpha 0;

player setpos getpos kotipaikka;
enableSaving true;	
2 fadesound 1;
tehtava=2.1;
titleCut ["", "BLACK IN", 10];
raha = raha + palkkio;
sleep 4;
[format ["Money at account: %1",raha]] spawn BIS_fnc_titleText;
sleep 1;

//////POISTETAAN TOKAN TEHTÄVÄN VIHULAISET//////////////
{
	if ((side _x)==east && _x inarea toka_alue && _x !=moralez) then {
		_x setdamage 1;
		deletevehicle _x;
	};
} foreach allunits


