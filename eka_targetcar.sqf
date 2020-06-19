ukko = (_this select 0);
ryhma= (_this select 1);

stavros call BIS_fnc_ambientAnim__terminate;
deleteWaypoint [ryhma, 0];
waypoint =ryhma addWaypoint [getpos auto1, 0];
waypoint setWaypointType "GETIN";
ukko assignasdriver auto1;
waituntil {stavros in auto1};
waypoint =ryhma addWaypoint [getpos paikka, 0];
waypoint setWaypointType "MOVE";
waituntil {ukko distance paikka < 50};
feilaus=true;