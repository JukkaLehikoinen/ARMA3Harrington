_pelaaja = (_this select 0);

while {alive _pelaaja} do {
tokahavainto=0;
{
	if ((side _x)==east && _x knowsabout _pelaaja > 1) then {
		piste2 = getpos _pelaaja;
		tokahavainto=tokahavainto+1;
		if (!haly2) then {
		haly2=true;
		};
		//systemchat format ["%1 tietaa missa sita ollaan", name _x];
	};

} forEach allunits;
sleep 1;
};