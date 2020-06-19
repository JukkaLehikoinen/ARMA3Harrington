valipalkkio=0;
palkkio = 0;

sleep 9;

if (!fail && !tappaja) then {
	valipalkkio=4000;
	palkkio = palkkio + valipalkkio;
	
	[format ["Stavros has been successfully assassinated, even so that it looks like an accident. You earned %1$.",valipalkkio]] spawn BIS_fnc_titleText;
	
	sleep 10;

};

if (tappaja) then {
	valipalkkio=2000;
	palkkio = palkkio + valipalkkio;
	[format ["You successfully assassinated Stavros, well done! You earned %1$",valipalkkio]] spawn BIS_fnc_titleText;
	sleep 10;
};

if (fail) then {
	valipalkkio=0;
	palkkio = palkkio + valipalkkio;
	[format ["Stavros escaped, maybe you will get another opportunity in the future."]] spawn BIS_fnc_titleText;
	sleep 10;
};

if (palkkio > 0) then {
	[format ["Total earnings from 'Cabin at the woods': %1$",palkkio]] spawn BIS_fnc_titleText;
	sleep 10;
	} else {
	[format ["Nothing was earned from the task 'Cabin at the woods'."]] spawn BIS_fnc_titleText;
	};
player removeDiaryRecord ["diary",ekabrief1];
player removeDiaryRecord ["diary",ekabrief2];

"start" setMarkerAlpha 0;
"target" setMarkerAlpha 0;
"end" setMarkerAlpha 0;

player setpos getpos kotipaikka;
2 fadesound 1;
enableSaving true;	
titleCut ["", "BLACK IN", 10];
raha = raha + palkkio;
tehtava=1.1;
sleep 4;

[format ["Money at account: %1",raha]] spawn BIS_fnc_titleText;
sleep 1;



	




