
joukko = (_this select 0);
rekka = (_this select 1);

autossa3=false;
i= count units joukko;

while {!autossa3} do {
a=0;
sleep 0.5;
	{
		if (_x in rekka) then {
			a=a+1
		}
	} foreach units joukko;
	if (a==i) then {autossa3=true;};
};


_waypoint =joukko addWaypoint [getpos paikka3, 0];

waitUntil {rekka distance paikka3 <10};
{
		unassignvehicle _x;
	} foreach units joukko;
	
while {isohaly} do {
deleteWaypoint [joukko, 0];
_waypoint =joukko addWaypoint [piste3, 0];
_waypoint setWaypointType "MOVE";

sleep 30;
};

