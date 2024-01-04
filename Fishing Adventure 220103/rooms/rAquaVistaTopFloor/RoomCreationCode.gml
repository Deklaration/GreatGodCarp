global.directionbeforefish = sProt_North
global.xbeforefish = 463
global.ybeforefish = 335
instance_create_depth(463,335,-1,oProt)

	
	rareAquarium[0,0] = 0
	rareAquarium[0,1] = 0
	rareAquarium[1,0] = 529
	rareAquarium[1,1] = 30
	rareAquarium[2,0] = 625
	rareAquarium[2,1] = 30
	rareAquarium[3,0] = 721
	rareAquarium[3,1] = 30

for (var i = 1; i < 4; ++i) { //array_length(global.oceanFish)-1
    
//instance_create_depth(rareAquarium[i,0],rareAquarium[i,1],0,oAkvarium_Ocean,{_fish : i})
	

}

global.rAquaVistaTopFloorRoomID = room
global.lastroom = room