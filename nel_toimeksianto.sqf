["<img image='gfx\kingspeech.jpg' img size=8 />",0,0,10,1,0,15] spawn bis_fnc_dynamicText; 
cutText ["<t color='#ff0000' size='5'>The King's speech</t><br/>The mission is to assassinate politician Kowalski", "PLAIN DOWN", -1, true, true];

"start" setMarkerpos getpos nelaloitus;
"start" setMarkerAlpha 100;
"end" setMarkerpos getpos nelend;
"end" setMarkerAlpha 100;
"target" setMarkerpos getpos toska;
"target" setMarkerText "target";
"target" setMarkerType "hd_objective";
"target" setMarkerAlpha 100;
[] execvm "nel_briefing.sqf";

sleep 15;
tehtava=3.5;