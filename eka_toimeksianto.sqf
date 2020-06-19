
["<img image='gfx\cabinatthewoods.jpg' img size=8 />",0,0,10,1,0,15] spawn bis_fnc_dynamicText; 
cutText ["<t color='#ff0000' size='5'>Cabin at the woods</t><br/>The mission is to assassinate war veteran Stavros. ''More detailed'' information can be found in the briefing.", "PLAIN DOWN", -1, true, true];

[] execvm "eka_briefing.sqf";
sleep 15;
tehtava=0.5;
