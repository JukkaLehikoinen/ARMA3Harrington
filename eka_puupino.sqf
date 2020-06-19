ukko = (_this select 0);
ryhma= (_this select 1);


randomi = round(random 45)+45;

sleep randomi;
stavros call BIS_fnc_ambientAnim__terminate;
deleteWaypoint [ryhma, 0];
waypoint =ryhma addWaypoint [getpos puupino, 0];
waypoint setWaypointType "MOVE";
