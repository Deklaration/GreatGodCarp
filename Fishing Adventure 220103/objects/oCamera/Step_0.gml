/// @description Uppdatera kameran
if disable = false
{
	
if global.cutscene1done = false
{
	x = follow.x
	y = follow.y
}

if room = rTitlescreen
{
	x = view_width_half
	y = view_height_half
}


//Update destination
if instance_exists(follow)
{
	xTo = follow.x;
	yTo = follow.y;
}


//Uppdatera objektposition
x += (xTo - x) / 15;
y += (yTo - y) / 15;

view_width_half = camera_get_view_width(cam) / 2;
view_height_half = camera_get_view_height(cam) / 2;

//Keep camera center inside room
x = clamp(x,view_width_half,room_width-view_width_half);
y = clamp(y,view_height_half,room_height-view_height_half);


//Screenshake
x += random_range(-shakeremain,shakeremain)
y += random_range(-shakeremain,shakeremain)

shakeremain = max(0,shakeremain - ((1/shakelenght) * shakemagnitude));

camera_set_view_pos(cam, x - view_width_half, y - view_height_half)

if followprot = false
{
	if instance_exists(follow)
	{
		x = follow.x
		y = follow.y
		followprot = true
	}
}
}