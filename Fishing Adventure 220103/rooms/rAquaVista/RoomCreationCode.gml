global.directionbeforefish = sProt_North
global.xbeforefish = 472
global.ybeforefish = 506
instance_create_depth(472,516,-1,oProt)

	
	oceanAquarium[0,0] = 0
	oceanAquarium[0,1] = 0
	oceanAquarium[1,0] = 529
	oceanAquarium[1,1] = 30
	oceanAquarium[2,0] = 625
	oceanAquarium[2,1] = 30
	oceanAquarium[3,0] = 721
	oceanAquarium[3,1] = 30

for (var i = 1; i < 4; ++i) { //array_length(global.oceanFish)-1
    
instance_create_depth(oceanAquarium[i,0],oceanAquarium[i,1],0,oAkvarium_Ocean,{_fish : i})
	

}

