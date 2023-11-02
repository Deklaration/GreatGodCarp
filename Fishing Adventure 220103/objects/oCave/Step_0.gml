if scrStackSearch(oInventory,enumFish.Weedsnout) < 6
{
    if (point_distance(x, y, oProt.x, oProt.y) < player_distance) {
        state = "goodbye";
    }
}
else
{
	state = "hello"
}

if state = "goodbye"
{
	image_alpha -=0.1
	if image_alpha < 0
	{
		instance_destroy(self)
	}
}

if state = "hello"
{
	if position_meeting(x,y,oProt)
	{
		global.lastroom = room
		global.cavex = x
		global.cavey = y+16
		scrTransitionsStart(rCavern,sqFadeOut,sqFadeIn)
	}
}