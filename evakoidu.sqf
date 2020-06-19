pisteraja=0;
if (alive stavros) then {
	pisteraja = pisteraja - 1;
	} else {
	pisteraja = pisteraja + 1;
	};
if (alive moralez) then {
	pisteraja = pisteraja - 1;
	} else {
	pisteraja = pisteraja + 1;
	};

if (alive toska) then {
	pisteraja = pisteraja - 1;
	} else {
	pisteraja = pisteraja + 1;
	};
vika=false;

sleep 16;
if (!alive toska) then {
playsound "evakuointi";
titleText ["Thank you, Mr Harrington, for your visit to Livonia. The murder of a politician has triggered police investigations. Before the cops are at your door, we ask that you go in the car and drive to the airport.", "PLAIN DOWN",8];
sleep 17;
} else {
playsound "evakuointi2";
titleText ["Thank you, Mr Harrington, for your visit to Livonia. The murder attempt of a politician has triggered police investigations. Before the cops are at your door, we ask that you go in the car and drive to the airport.", "PLAIN DOWN",8];
sleep 17;
};

titleText ["", "PLAIN DOWN",8];

waitUntil {poispois};
sleep 11;
titleText ["Code: Poksumoni", "PLAIN",8];
sleep 10;
titleText ["Story line: Poksumoni", "PLAIN",8];
sleep 10;
titleText ["Execution: Poksumoni", "PLAIN",8];
sleep 5;

player setpos [getpos tuoli5 select 0, getpos tuoli5 select 1,(getpos tuoli5 select 2)+1];
player switchmove "Acts_ExecutionVictim_Loop";
player setdir (getdir mies);
mies dotarget player;
titleCut ["", "BLACK IN", 5];
2 fadesound 1;
sleep 5;
	playsound "miespuhuu1";
	titleText ["Mr Harrington, we will finally meet. It was quite difficult to find you, thanks to the agency that tried to cover your tracks. However, the CIA found you.", "PLAIN DOWN",8];
	sleep 14.1;

	if (pisteraja <=1) then {
		playsound "miespuhuuhuono";
		titleText ["as an assassin Mr. Harrigton you have been really bad, now I will show you how to assassinate properly. Goodbye.", "PLAIN DOWN",8];
		sleep 9.3;
		[mies, "hgun_P07_F"] call BIS_fnc_fire;
		waitUntil {!alive player};
			endMission "END3";

	} else {
		playsound "miespuhuuhyva";
		titleText ["When I followed the murder investigations, I have come to the conclusion that your job has been good. Now I have a question, think carefully. Your life depends on it. If you still want to live, you start working for the CIA. What do you answer?", "PLAIN DOWN",8];
		sleep 20.1;
		vastaus=0;
		waitUntil {vastaus > 0};
		if (vastaus==1) then {
			sleep 2;
			playsound "miespuhuuhyva2";
			titleText ["Next, I open the ropes and then we move on to new tasks. When are they, you ask? well, Mr. Harrington, it depends on the feedback.", "PLAIN DOWN",8];
			sleep 10;
			titleCut ["", "BLACK OUT", 3];
			vika=true;
			
			} else {
			sleep 2;
			playsound "miespuhuuhuono2";
			titleText ["Mr. Harrington, it's time to meet your maker!", "PLAIN DOWN",8];
			sleep 4.3;
			[mies, "hgun_P07_F"] call BIS_fnc_fire;
			waitUntil {!alive player};
			endMission "END2";
		};
	};





