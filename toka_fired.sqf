

ampuja = (_this select 0);

ampuja addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
	
	_vaimennin = ampuja weaponAccessories currentMuzzle ampuja param [0, ""] != "";
	if (!_vaimennin && !haly2) then {
		haly2=true;
	};
	if (!_vaimennin) then {
		piste2=getpos ampuja;
		[1] execvm "toka_ammuttu2.sqf";
		
	} else {[0] execvm "toka_ammuttu2.sqf"};
		
	if (_muzzle=="handGrenademuzzle") then {
		piste2=getpos ampuja;
			if (!haly2) then {
			haly2=true;
			};
	};	
	
	
	
}];

