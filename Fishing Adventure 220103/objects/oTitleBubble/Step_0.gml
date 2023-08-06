y-=yspeed


if y< -100
{
	instance_create_depth(random(room_width),room_height+100,0,oTitleBubble)
	instance_destroy(self)
}