if global.shipSet = true
{
	draw_self()
	
	if global.sailing = true
	{
		draw_sprite_ext(sArrow,0,x,y-30,1,1,wind_direction,c_white,1)
	}
}