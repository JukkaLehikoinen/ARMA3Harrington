

solttu= (_this select 0);

solttu addEventHandler ["Killed", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	if (_unit==stavros && _killer == player) then {
		kukatappoi = _killer;
		tappaja=true;
	};	
}];