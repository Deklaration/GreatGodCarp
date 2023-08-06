///@description Placepicker - inget mer
if instance_exists(oFishGuide)
	{
		if oFishGuide.sida =-1 && discard = false
		{
			
		x = oFishGuide.x-125
		y = oFishGuide.y+92
		
		if keyboard_check_pressed(global.key_right) && place < 23 && placepicker = 0
		{
			place+=1
			placepicker = 1
		}
		if keyboard_check_pressed(global.key_right) && place = 23 && placepicker = 0
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
			place=23
			placepicker = 1
		}
		if keyboard_check_pressed(global.key_down) &&  place < 20 && placepicker = 0
		{
			place+=4
			placepicker = 1
		}
		if keyboard_check_pressed(global.key_down) &&  place > 19 && placepicker = 0
		{
			place-=20
			placepicker = 1
		}
		if keyboard_check_pressed(global.key_up) && place > 3 && placepicker = 0
		{
			place-=4
			placepicker = 1
		}
		if keyboard_check_pressed(global.key_up) && place < 4 && placepicker = 0
		{
			place+=20
			placepicker = 1
		}
		
		placepicker = 0
		}
		
		
	}
	
	