
["<img image='gfx\sliceanddice.jpg' img size=8 />",0,0,10,1,0,15] spawn bis_fnc_dynamicText; 
cutText ["<t color='#ff0000' size='5'>Slice and dice</t><br/>The mission is to assassinate cocaine planter Moralez and download data from laptop", "PLAIN DOWN", -1, true, true];

[] execvm "toka_briefing.sqf";
sleep 15;
tehtava=1.5;
