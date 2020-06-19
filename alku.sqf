_cam = "camera" camCreate (getpos unikamera); 
_cam camSetTarget player;
_cam CameraEffect ["Internal","Back"];
_cam CamCommit 0.1;
_cam attachTo [unikamera];
sleep 1;
playsound "alku";
sleep 2;
titleText ["Good evening, Mr. Harrington. This is Lisa from the Agency. Welcome to Livonia. Inside there is the necessary equipment to cope here. Please contact the Agency on a computer.", "PLAIN DOWN",8];
sleep 15;

_cam CameraEffect ["terminate","Back"];
sleep 1;
titleText ["", "PLAIN DOWN",8];
