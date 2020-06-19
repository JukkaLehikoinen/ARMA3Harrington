

ampuja = (_this select 0);

ampuja addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
	
	
	_vaimennin = ampuja weaponAccessories currentWeapon ampuja param [0, ""] != "";
	//hint str _vaimennin;

	if (!_vaimennin && !haly4) then {
		haly4=true;
	};
	if (!_vaimennin) then {
		piste3=getpos ampuja;
		[1] execvm "nel_ammuttu.sqf";
		
	} else {[0] execvm "nel_ammuttu.sqf"};
		
	if (_muzzle=="handGrenademuzzle") then {
		piste3=getpos ampuja;
			if (!haly4) then {
			haly4=true;
			};
	};	
	
	
	
}];

