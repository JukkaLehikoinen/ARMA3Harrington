while {alive player} do {

	_item = "ClaymoreDirectionalMine_Remote_Mag";
	_b=100;
	_a = vestItems player;
	_b = _a find _item;
	sleep 0.2;
	if (_b > -1 ) then {
		claymoreinme=true;
	}else{
		claymoreinme=false;
	};

};