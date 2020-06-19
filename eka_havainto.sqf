_pelaaja = (_this select 0);

while {alive _pelaaja} do {
{
	if ((side _x)==east && _x knowsabout _pelaaja > 1 && !panic) then {
		panic=true;
	};
} forEach allunits;
sleep 1;
}