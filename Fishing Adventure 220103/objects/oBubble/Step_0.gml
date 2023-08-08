
if place_meeting(x,y,oFishParent) && fiskid = oNothing
{
	fiskid = other.fiskid
	timer =  other.sprite_width / 4
}


speed = 3

timer -= 1

if timer < 0
{
	image_alpha =1
}

if timer < random_range(-2,-5)
{
	instance_destroy()
}

if y < oWater.y+3
{
	instance_destroy()
}

