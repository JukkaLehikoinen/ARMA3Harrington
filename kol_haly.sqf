
alue=(_this select 1);





{
	if ((side _x)==east && _x inarea alue && _x !=sniper1 && _x !=kuski && _x !=viktor && _x !=jevgeni) then {
		[_x] join kytat;
		
	};
} forEach allunits;


while {isohaly} do {
deleteWaypoint [kytat, 0];
_waypoint =kytat addWaypoint [piste3, 0];
_waypoint setWaypointType "MOVE";
deletevehicle pomo2;
sleep 30;
};



