draw_self()
if global.groundstanding = oSand
{
	image_alpha = 0 
}
if global.groundstanding = oGrass
{
    image_index = 1
}
if global.groundstanding = oBridge
{
	if place_meeting(x,y-16,oMark)
	{
		image_alpha = 0
	}
	image_index = 3
	
}