image_speed = 0
sprite_index = sDepthGrass
image_index = irandom_range(0,5)
depth = -y - 12
if place_meeting(x,y,oWall) || !place_meeting(x,y,oGrass) || place_meeting(x,y,oDoor)
{
	instance_destroy(self)
}