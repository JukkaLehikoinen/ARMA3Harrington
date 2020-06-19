valipalkkio=0;
palkkio = 0;
sleep 10;



if (!poistuminen3) then {
if (kohde1dead) then {
	valipalkkio=2000;
	palkkio = palkkio + valipalkkio;
	
	[format ["Viktor Ivanov never touches the keyboard again. You earned %1$.",valipalkkio]] spawn BIS_fnc_titleText;
	
	sleep 10;

} else {
	[format ["Viktor escaped, he gets to testify against the client in court."]] spawn BIS_fnc_titleText;
	
	sleep 10;
};

if (kohde2dead) then {
	valipalkkio=4000;
	palkkio = palkkio + valipalkkio;
	[format ["You succesfully assassinated Jevgeni Kaptova. You earned %1$",valipalkkio]] spawn BIS_fnc_titleText;
	sleep 10;
} else {
	[format ["Mr Kaptova escaped, he gets to testify against the client in court."]] spawn BIS_fnc_titleText;
	sleep 10;
};
if (folder) then {
	[format ["Authorities no longer have evidence to harm the client."]] spawn BIS_fnc_titleText;
	sleep 10;
} else {
	[format ["The prosecutor still has that folder."]] spawn BIS_fnc_titleText;
	sleep 10;
};

if (palkkio > 0) then {
	[format ["Total earnings from 'From Russia with love': %1$",palkkio]] spawn BIS_fnc_titleText;
	sleep 10;
	} else {
	[format ["Nothing was earned from the task 'From Russia with love'."]] spawn BIS_fnc_titleText;
	sleep 10;
	[format ["At this point, it may be that your services are no longer needed."]] spawn BIS_fnc_titleText;
	};
} else {
		[format ["you left the area, maybe this assassination is not your thing. No earnings."]] spawn BIS_fnc_titleText;
};
2 fadesound 1;
player setpos getpos kotipaikka;
enableSaving true;	
tehtava=3.1;
player allowdamage true;

player removeDiaryRecord ["diary",kolbrief1];
player removeDiaryRecord ["diary",kolbrief2];
"start" setMarkerAlpha 0;
"target" setMarkerAlpha 0;
"end" setMarkerAlpha 0;

titleCut ["", "BLACK IN", 10];
raha = raha + palkkio;
sleep 4;

[format ["Money at account: %1",raha]] spawn BIS_fnc_titleText;
sleep 1;
5 fademusic 0;
sleep 6;
playsmusic "";
1 fademusic 1;



	




