if instance_exists(oFishGuide)
	{
		if oFishGuide.sida =-1
		{
		x = oFishGuide.x-125
		y = oFishGuide.y+92
		
		if keyboard_check_pressed(global.key_right) && place < 19 && placepicker = 0
		{
			place+=1
			placepicker = 1
		}
		if keyboard_check_pressed(global.key_right) && place = 19 && placepicker = 0
		{
			place=0
			placepicker = 1
		}
		if keyboard_check_pressed(global.key_left) && place > 0 && placepicker = 0
		{
			place-=1
			placepicker = 1
		}
		if keyboard_check_pressed(global.key_left) && place = 0 && placepicker = 0
		{
			place=19
			placepicker = 1
		}
		if keyboard_check_pressed(global.key_down) &&  place < 16 && placepicker = 0
		{
			place+=4
			placepicker = 1
		}
		if keyboard_check_pressed(global.key_down) &&  place > 15 && placepicker = 0
		{
			place-=16
			placepicker = 1
		}
		if keyboard_check_pressed(global.key_up) && place > 3 && placepicker = 0
		{
			place-=4
			placepicker = 1
		}
		if keyboard_check_pressed(global.key_up) && place < 4 && placepicker = 0
		{
			place+=16
			placepicker = 1
		}

			oBait.place = place - 8
		
		placepicker = 0
		}
		
	}
	
	