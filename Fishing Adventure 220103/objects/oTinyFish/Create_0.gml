if place_meeting(x,y,oMark)
{
	instance_destroy(self)
}

path[0] = pFish1
path[1] = pFish2
path[2] = pFish3
path[3] = pFish4
path[4] = pTinyFish

up = false
down = false
right = false
left = false

speedbeforepaused = 0
gettingspeedbeforepaused = false
settingpath_speed = true

i=random_range(0.1,1.7)
j = irandom_range(0,3)

depth = oWater.depth-1
hspeed = random_range(-1,1)
image_xscale = i
image_yscale = i
forward = irandom_range(1,2)

if forward = 1
{
path_start(path[j],random_range(0.13,0.5),path_action_restart,false)
}

if forward = 2
{
path_start(path[j],random_range(-0.13,-0.5),path_action_restart,false)
}