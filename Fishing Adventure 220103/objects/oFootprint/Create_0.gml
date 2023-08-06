timer = 120

if !place_meeting(x,y,oSand)
{
	instance_destroy(id)
}
if place_meeting(x,y,oFootprint)
{
	instance_destroy(id)
}


if oProt.sprite_index = sProt_West && oProt.xscale = 1
{
	image_angle = 90
}
if oProt.sprite_index = sProt_West && oProt.xscale = -1
{
	image_angle = -90
}
if (oProt.sprite_index = sProt_NorthEast && oProt.xscale = 1) || (oProt.sprite_index = sProt_SouthWest && oProt.xscale = -1) 
{
	image_angle = 45
}
if (oProt.sprite_index = sProt_NorthEast && oProt.xscale = -1) || (oProt.sprite_index = sProt_SouthWest && oProt.xscale = 1) 
{
	image_angle = 315
}