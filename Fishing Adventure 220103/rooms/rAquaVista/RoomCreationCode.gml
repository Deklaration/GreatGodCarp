
if global.lastroom != global.rAquaVistaTopFloorRoomID
{
	global.directionbeforefish = sProt_North
	global.xbeforefish = 712
	global.ybeforefish = 800
	instance_create_depth(712,800,-1,oProt)
}
else
{
	global.directionbeforefish = sProt_South
	global.xbeforefish = 712
	global.ybeforefish = 381-16
	instance_create_depth(712,381,-1,oProt)
}

if global.cutscene2 = true
	{
	instance_create_depth(720,480,-1,oMrDaugava)	
	}
	
	oceanAquarium[0,0] = 0
	oceanAquarium[0,1] = 0
	oceanAquarium[1,0] = 976
	oceanAquarium[1,1] = 48
	oceanAquarium[2,0] = 1072
	oceanAquarium[2,1] = 48
	oceanAquarium[3,0] = 1168
	oceanAquarium[3,1] = 48
	oceanAquarium[4,0] = 1264
	oceanAquarium[4,1] = 48
	oceanAquarium[5,0] = 1360
	oceanAquarium[5,1] = 48
	oceanAquarium[6,0] = 976
	oceanAquarium[6,1] = 160
	oceanAquarium[7,0] = 1104
	oceanAquarium[7,1] = 160
	oceanAquarium[8,0] = 1232
	oceanAquarium[8,1] = 160
	oceanAquarium[9,0] = 1360
	oceanAquarium[9,1] = 160
	oceanAquarium[10,0] = 976
	oceanAquarium[10,1] = 272
	oceanAquarium[11,0] = 1104
	oceanAquarium[11,1] = 272
	oceanAquarium[12,0] = 1232
	oceanAquarium[12,1] = 272
	oceanAquarium[13,0] = 1360
	oceanAquarium[13,1] = 272
	oceanAquarium[14,0] = 976
	oceanAquarium[14,1] = 384
	oceanAquarium[15,0] = 1360
	oceanAquarium[15,1] = 384
	
	lakeAquarium[0,0] = 0
	lakeAquarium[0,1] = 0
	lakeAquarium[1,0] = 976
	lakeAquarium[1,1] = 496
	lakeAquarium[2,0] = 1072
	lakeAquarium[2,1] = 496
	lakeAquarium[3,0] = 1168
	lakeAquarium[3,1] = 496
	lakeAquarium[4,0] = 1264
	lakeAquarium[4,1] = 496
	lakeAquarium[5,0] = 1360
	lakeAquarium[5,1] = 496
	lakeAquarium[6,0] = 1024
	lakeAquarium[6,1] = 608
	lakeAquarium[7,0] = 1168
	lakeAquarium[7,1] = 608
	lakeAquarium[8,0] = 1312
	lakeAquarium[8,1] = 608
	lakeAquarium[9,0] = 1168
	lakeAquarium[9,1] = 720
	
	riverAquarium[0,0] = 0
	riverAquarium[0,1] = 0
	riverAquarium[1,0] = 80
	riverAquarium[1,1] = 48
	riverAquarium[2,0] = 208
	riverAquarium[2,1] = 48
	riverAquarium[3,0] = 336
	riverAquarium[3,1] = 48
	riverAquarium[4,0] = 464
	riverAquarium[4,1] = 48
	riverAquarium[5,0] = 128
	riverAquarium[5,1] = 160
	riverAquarium[6,0] = 272
	riverAquarium[6,1] = 160
	riverAquarium[7,0] = 416
	riverAquarium[7,1] = 160
	riverAquarium[8,0] = 192
	riverAquarium[8,1] = 272
	riverAquarium[9,0] = 352
	riverAquarium[9,1] = 272
	riverAquarium[10,0] = 112
	riverAquarium[10,1] = 384
	riverAquarium[11,0] = 272
	riverAquarium[11,1] = 384
	riverAquarium[12,0] = 432
	riverAquarium[12,1] = 384

	forestAquarium[0,0] = 0
	forestAquarium[0,1] = 0
	forestAquarium[1,0] = 144
	forestAquarium[1,1] = 496
	forestAquarium[2,0] = 240
	forestAquarium[2,1] = 496
	forestAquarium[3,0] = 336
	forestAquarium[3,1] = 496
	forestAquarium[4,0] = 432
	forestAquarium[4,1] = 496
	forestAquarium[5,0] = 192
	forestAquarium[5,1] = 608
	forestAquarium[6,0] = 288
	forestAquarium[6,1] = 608
	forestAquarium[7,0] = 384
	forestAquarium[7,1] = 608
	forestAquarium[8,0] = 192
	forestAquarium[8,1] = 720
	forestAquarium[9,0] = 288
	forestAquarium[9,1] = 720
	forestAquarium[10,0] = 384
	forestAquarium[10,1] = 720

for (var i = 1; i < array_length(global.oceanFish); ++i) { 
    
instance_create_depth(oceanAquarium[i,0],oceanAquarium[i,1],0,oAkvarium_Ocean,{_fish : i})
	
}

for (var j = 1; j < array_length(global.lakeFish); ++j) { 
    
instance_create_depth(lakeAquarium[j,0],lakeAquarium[j,1],0,oAkvarium_Lake,{_fish : j})
	
}

for (var k = 1; k < array_length(global.riverFish); ++k) { 
    
instance_create_depth(riverAquarium[k,0],riverAquarium[k,1],0,oAkvarium_River,{_fish : k})
	
}

for (var l = 1; l < array_length(global.forestFish); ++l) { 
    
instance_create_depth(forestAquarium[l,0],forestAquarium[l,1],0,oAkvarium_Forest,{_fish : l})
	
}

