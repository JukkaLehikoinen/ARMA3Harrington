joukko = (_this select 0);
alue = (_this select 1);


{
	if ((side _x)==east && _x inarea alue && _x !=pv1 && _x !=pv2 && _x !=moralez && _x != kuski2) then {
		_x setbehaviour "AWARE";
		[_x] join joukko;
	};
} forEach allunits;

for "_i" from 1 to 10 do { 
		deleteWaypoint [joukko, _i];
	};

while {haly2 && (tehtava==2)} do {
	
	_waypoint =joukko addWaypoint [piste2, 0];
	_waypoint setWaypointType "MOVE";
	[joukko,0] setWaypointSpeed "FULL";
	sleep 180;
};
