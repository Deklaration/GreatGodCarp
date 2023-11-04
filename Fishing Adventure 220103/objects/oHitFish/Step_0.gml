if instance_exists(fiskid)
	{
		x = fiskid.x
		y = fiskid.y
		image_xscale = fiskid.image_xscale
		image_yscale = fiskid.sightWidth
		image_index = fiskid.sightLength
	}

timer -=d(1)
if timer <0 && !instance_exists(fiskid)
{
	instance_destroy(self)
}


if place_meeting(x,y,oHitBete) && instance_exists(fiskid)
{
	for (var i = 0; i < array_length(global.baitarray[global.activebait,4]); ++i)
	{
	var obj_name = object_get_name(global.baitarray[global.activebait,4][i])
		if obj_name = fiskid.object_name
		{
			correctBait = true
		}
	}

	if correctBait = false
	{
		fiskid.showAngryFish = true
	}
	
	if correctBait = true
	{
		if fiskid.i = 0 && global.fishbait = false
		{
		fiskid.i =1	
		}
	}
}




//if !place_meeting(x,y,oHitBete) && idset = true
//{
//	fiskid.showAngryFish = false
//}
