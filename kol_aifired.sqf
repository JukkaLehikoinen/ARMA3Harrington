

ai = (_this select 0);

ai addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
	
	if (!isohaly) then {
		isohaly=true;
	};
		
	if (_muzzle=="handGrenademuzzle") then {
			if (!isohaly) then {
			isohaly=true;
			};
	};	
	
	
	
}];

