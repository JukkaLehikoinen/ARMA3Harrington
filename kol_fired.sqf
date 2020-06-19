

ampuja = (_this select 0);

ampuja addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
	
	
	_vaimennin = ampuja weaponAccessories currentWeapon ampuja param [0, ""] != "";
	//hint str _vaimennin;

	if (!_vaimennin && !isohaly) then {
		isohaly=true;
	};
	if (!_vaimennin) then {
		piste3=getpos ampuja;
		[1] execvm "kol_ammuttu.sqf";
		
	} else {[0] execvm "kol_ammuttu.sqf"};
		
	if (_muzzle=="handGrenademuzzle") then {
		piste3=getpos ampuja;
			if (!isohaly) then {
			isohaly=true;
			};
	};	
	
	
	
}];

