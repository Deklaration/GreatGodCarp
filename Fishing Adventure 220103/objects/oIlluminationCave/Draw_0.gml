if (live_call()) return live_result;
draw_set_alpha(0.93)
if (scrInventorySearch(oInventory, enumFish.Lakelight) !=-1) 
{
	draw_sprite(sIlluminatedCave,0,oProt.x,oProt.y)
}
else
{
	
	draw_rectangle_color(0,0,room_width,room_height,global.color[25],global.color[25],global.color[25],global.color[25],false)
}
draw_set_alpha(1)
depth = -1499