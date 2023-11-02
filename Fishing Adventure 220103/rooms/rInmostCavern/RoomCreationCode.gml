	global.directionbeforefish = sProt_North
	global.xbeforefish = 230
	global.ybeforefish = 240
	instance_create_depth(230,240,-1,oProt)
	if global.searchedTheCave = false
	{
	instance_create_depth(230,260,-1,oOphelia)
	}
	else
	{
	instance_create_depth(272,126,-1,oOphelia)
	}
	//instance_create_depth(230,240,-1,oIlluminationCave)
	