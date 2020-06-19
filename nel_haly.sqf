
alue=(_this select 1);





{
	if ((side _x)==independent && _x inarea alue && !=nel_sniper1) then {
		[_x] join nelpomo;
		
	};
} forEach allunits;


while {haly4} do {
deleteWaypoint [nelpomo, 0];
_waypoint =nelpomo addWaypoint [piste4, 0];
_waypoint setWaypointType "MOVE";
sleep 180;
};



