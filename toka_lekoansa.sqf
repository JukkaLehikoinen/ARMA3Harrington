rajahdys=false;

while {alive leko} do {
sleep 1;

nopeus = leko call BIS_fnc_absSpeed;
//systemchat format ["%1", nopeus];
if (nopeus > 200 && !rajahdys) then {
	rajahdys=true;
	sleep 5;
	[leko] execvm "toka_ansa.sqf";
	sleep 2;
	[leko] execvm "toka_ansa.sqf";
	
	sleep 15;
	
	_id=format ["%1", getpos leko];
	_markeri=createMarker [_id,GETPOS leko];
	_markeri setMarkerShape "ICON";
	_markeri setMarkerType "hd_pickup";
	_markeri setMarkerColor "ColorBlack";
	_markeri setMarkerAlpha 0;
	sleep 1;
	piste2 = getmarkerpos _markeri;
	};

	

};

