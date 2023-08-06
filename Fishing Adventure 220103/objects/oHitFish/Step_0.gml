if idset = true
{
	if instance_exists(fiskid)
	{
		x = fiskid.x
		y = fiskid.y
		image_xscale = fiskid.image_xscale
		image_yscale = fiskid.sightWidth
		image_index = fiskid.sightLength
		
		//image_yscale = 1
		//image_xscale = fiskid.image_xscale
	}
	else
	{
		instance_destroy(self)
	}
}

timer -=1
if timer <0 && !instance_exists(fiskid)
{
	instance_destroy(self)
}