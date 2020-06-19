laite = (_this select 0);

pommi = "ClaymoreDirectionalMine_Remote_Ammo" createVehicle (getpos laite);
pommi attachto [laite];
sleep 1;
pommi setdamage 1;
sleep 0.5;
stavros setdamage 1;


