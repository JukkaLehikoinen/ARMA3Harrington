_pelaaja = (_this select 0);

while {alive _pelaaja} do {
{
	if ((side _x)==east && _x knowsabout _pelaaja > 1) then {
		if (_x !=viktor && _x !=jevgeni && _x !=sniper1) then {
		piste3 = getpos _pelaaja;
		if (!haly3) then {
		haly3=true;
		};
		};
		
	};

} forEach allunits;
sleep 1;
}