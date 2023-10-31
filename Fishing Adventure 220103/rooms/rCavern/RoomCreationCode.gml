	if global.lastroom = rBeachside
	{
	global.directionbeforefish = sProt_North
	
	
	global.xbeforefish = 712
	global.ybeforefish = 800
	}
	
	if global.lastroom = rInmostCavern
	{
	global.xbeforefish = 1223
	global.ybeforefish = 74
	}
	
	instance_create_depth(global.xbeforefish,global.ybeforefish,-1,oProt)

	instance_create_depth(global.xbeforefish,global.ybeforefish,-1,oIlluminationCave)
	