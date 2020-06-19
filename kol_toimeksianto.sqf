["<img image='gfx\fromrussiawithlove.jpg' img size=8 />",0,0,10,1,0,15] spawn bis_fnc_dynamicText; 
cutText ["<t color='#ff0000' size='5'>From Russia with love</t><br/>The mission is to assassinate two witnesses and retrieve the evidence folder", "PLAIN DOWN", -1, true, true];

"start" setMarkerpos getpos kolmasaloitus;
"start" setMarkerAlpha 100;
"end" setMarkerpos getpos kolmasend;
"end" setMarkerAlpha 100;
"target" setMarkerpos getpos kolmastarget;
"target" setMarkerText "";
"target" setMarkerType "hd_unknown";
"target" setMarkerAlpha 100;
[] execvm "kol_briefing.sqf";

sleep 15;
tehtava=2.5;