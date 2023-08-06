if global.paused = true
{
	if gettingspeedbeforepaused = false
	{
	speedbeforepaused = path_speed
	gettingspeedbeforepaused = true
	}
settingpath_speed = false
path_speed = 0
}

if global.paused = false
{
	
gettingspeedbeforepaused = false
	if settingpath_speed = false
	{
	path_speed = speedbeforepaused
	settingpath_speed = true
	}

/////////////////////

image_angle = direction
speed = random_range(0.25,1)
forward = irandom_range(1,2)

	if place_meeting(x,y,oMark)
	{
		path_start(pFishUp,0.25,path_action_stop,false)
		up = true
	}
	if up = true && !place_meeting(x,y,oMark) && path_position = 1
	{
		if forward = 1
		{
			path_start(path[j],random_range(0.13,0.5),path_action_restart,false)
		}

		if forward = 2
		{
			path_start(path[j],random_range(-0.13,-0.5),path_action_restart,false)
		}
		
		up = false
	}
	
	if y < oWater.y+7
	{
		path_start(pFishDown_Mirror,0.25,path_action_stop,false)
		down = true
	}
	if down = true &&  y > oWater.y+7 && path_position = 1
	{
		if forward = 1
		{
			path_start(path[j],random_range(0.13,0.5),path_action_restart,false)
		}

		if forward = 2
		{
			path_start(path[j],random_range(-0.13,-0.5),path_action_restart,false)
		}
		
		down = false
	}
	

if global.fiskesida = "right"
{
	
		if x > oDock.x-4
	{
		path_start(pFishLeft,0.25,path_action_stop,false)
		left = true
	}
	if left = true && x < oDock.x-4 && path_position = 1
	{
		if forward = 1
		{
			path_start(path[j],random_range(0.13,0.5),path_action_restart,false)
		}

		if forward = 2
		{
			path_start(path[j],random_range(-0.13,-0.5),path_action_restart,false)
		}
		
		left = false
	}
	
	if x < -80
	{
		instance_destroy(self)
	}

}

if global.fiskesida = "left"
{
	
		if x < oDock.x+4
	{
		path_start(pFishLeft_Mirror,0.25,path_action_stop,false)
		left = true
	}
	if left = true && x > oDock.x+4 && path_position = 1
	{
		if forward = 1
		{
			path_start(path[j],random_range(0.13,0.5),path_action_restart,false)
		}

		if forward = 2
		{
			path_start(path[j],random_range(-0.13,-0.5),path_action_restart,false)
		}
		
		left = false
	}
	
	if x > room_width + 80
	{
		instance_destroy(self)
	}

}

}