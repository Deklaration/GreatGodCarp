if (live_call()) return live_result;

if place_meeting(x,y,oProt) && global.searchTheCave = false
{
	cutscene = true
}

if cutscene = true
{
global.cutscene = true
	if !instance_exists(oOphelia)
	{
	instance_create_depth(oProt.x+25,y+150,0,oOphelia)	
	}
	oProt.image_index = 0
}

if global.searchTheCave = true
{
global.cutscene = false
}
