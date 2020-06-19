

alue=(_this select 0);
pomo = (_this select 1);
rekka = (_this select 2);

i=0;
{
	if ((side _x)==east && _x inarea alue) then {
		[_x] join pomo;
		if(i==0) then {
			_x assignasdriver rekka;
			[_x] orderGetIn true;
		} else {
			_x assignascargo rekka;
			[_x] orderGetIn true;
		};
		i=i+1;
	};
} forEach allunits;

[apu1,rekka] execvm "kol_apujoukottulee.sqf";

