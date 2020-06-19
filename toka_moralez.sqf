while {moralez in leko} do {

	sleep 1;
	if (leko distance auto2 <20) then {
		unassignVehicle moralez;
		moralez leaveVehicle leko;
	};
};

_wp =vip addWaypoint [getpos auto2, 0];
_wp setWaypointType "GETIN";
moralez assignascargo auto2;

waituntil {autosta};
	unassignVehicle moralez;
	moralez leaveVehicle auto2;
	_wp =vip addWaypoint [getpos tuoli, 0];
	
waituntil {moralez distance tuoli < 2};
moralez setdir (getdir laptop2);
	sleep 240;
	koodit=true;
	_wp =vip addWaypoint [getpos auto2, 0];
_wp setWaypointType "GETIN";
moralez assignascargo auto2;
waituntil {takas};
unassignVehicle moralez;
	moralez leaveVehicle auto2;
	_wp =vip addWaypoint [getpos leko, 0];
_wp setWaypointType "GETIN";
moralez assignascargo leko;
waituntil {moralez in leko};
leko setfuel 1;
