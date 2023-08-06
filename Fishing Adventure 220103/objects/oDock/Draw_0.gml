draw_self()

if global.groundstanding = oSand
{
	image_alpha = 0 
}
if global.groundstanding = oGrass
{
    image_index = 1
	draw_sprite(sGrassDock,0,room_width,y+16)
}
if global.groundstanding = oBridge
{
	image_index = 2
}