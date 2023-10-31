depth = -y
if global.gotSign = true
{
	image_index = 1
}
if global.gotBark = true
{
	image_index = 2
	mask_index = sHousetestColmask
	if !instance_exists(oMuseumDoor)
	{
		instance_create_depth(x,y+35,0,oMuseumDoor)
	}
}