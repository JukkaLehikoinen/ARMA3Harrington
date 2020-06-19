valipalkkio=0;
palkkio = 0;
sleep 11;

if (fail4==2) then {
	valipalkkio=4000;
	palkkio = palkkio + valipalkkio;
	
	[format ["When Kowalski leaves us, we will gladly pay the reward you deserve. You earned %1$.",valipalkkio]] spawn BIS_fnc_titleText;
	
	sleep 10;

} else {
	[format ["Kowalski escaped and he reformed the Livonian region."]] spawn BIS_fnc_titleText;
	
	sleep 10;
};



if (palkkio > 0) then {
	[format ["Total earnings from 'The King's speech': %1$",palkkio]] spawn BIS_fnc_titleText;
	sleep 10;
	} else {
	[format ["Nothing was earned from the task 'The King's speech'."]] spawn BIS_fnc_titleText;
	sleep 10;
	};
	
	[format ["Your visit to Livonia will come to an end, hopefully we can still have a fruitful cooperation."]] spawn BIS_fnc_titleText;
	sleep 10;

player removeDiaryRecord ["diary",nelbrief1];
player removeDiaryRecord ["diary",nelbrief2];
"start" setMarkerAlpha 0;
"target" setMarkerAlpha 0;
"end" setMarkerAlpha 0;

titleCut ["", "BLACK IN", 10];
raha = raha + palkkio;
player setpos getpos kotipaikka;
enableSaving true;	
player allowdamage true;
tehtava=4.1;
9 fademusic 0;


sleep 10;

playmusic "";

1 fademusic 1;
1 fadesound 1;

[format ["Money at account: %1",raha]] spawn BIS_fnc_titleText;
sleep 1;



	




