pelaaja = (_this select 0);


_cam = "camera" camCreate (getpos unikamera); 
_cam camSetTarget player;
_cam CameraEffect ["Internal","Back"];
_cam CamCommit 0.1;
_cam attachTo [unikamera];
kerta=0;
while {kerta < 120} do {
skiptime 0.05;
kerta=kerta+1;
sleep 0.1;
};
_cam CameraEffect ["terminate","Back"];



pelaaja setdamage 0;
