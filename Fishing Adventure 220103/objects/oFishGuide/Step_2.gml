/// @description Settings

if sida =-1 && menuchoice = 2
{
	
	if changekey = false
	{
		if keyboard_check_pressed(global.key_down) && settingschoice <13 && menuflip = 1
		{
			settingschoice +=1
			menuflip = 0
		}
		if keyboard_check_pressed(global.key_down) && settingschoice = 13  && menuflip = 1
		{
			settingschoice = 0
			menuflip = 0
		}
		if keyboard_check_pressed(global.key_up) && settingschoice >0 && menuflip = 1
		{
			settingschoice -=1
			menuflip = 0
		}
		if keyboard_check_pressed(global.key_up) && settingschoice =0 && menuflip = 1
		{
			settingschoice =13
			menuflip = 0
		}
		menuflip =1
		
	}
	
	//FULLSCREEN
	if settingschoice = 0
	{
		fullscreencolor = c_green
		if keyboard_check_pressed(global.key_a) || keyboard_check_pressed(global.key_right) || keyboard_check_pressed(global.key_left)
		{
			if window_get_fullscreen()
			{
				window_set_fullscreen(false)
			}
			else
			{
				window_set_fullscreen(true)
			}
		}
	}
	else
	{
		fullscreencolor = c_black
	}
	
	//MUSIKVOLYM
	if settingschoice = 1
	{
		musicvolumecolor = c_green
		changemusicvolume = true
	}
	else
	{
		musicvolumecolor = c_black
		changemusicvolume = false
	}
	
	if changemusicvolume = true
	{
		if keyboard_check_pressed(global.key_left) && global.musicvolume > 0
		{
			global.musicvolume -=10
		}
		if keyboard_check_pressed(global.key_right) && global.musicvolume < 100
		{
			global.musicvolume +=10
		}
	}
	
	//MASTER VOLUME
	if settingschoice = 2
	{
		mastervolumecolor = c_green
		changemastervolume = true
	}
	else
	{
		mastervolumecolor = c_black
		changemastervolume = false
	}
	
	if changemastervolume = true
	{
		if keyboard_check_pressed(global.key_left) && global.mastervolume > 0
		{
			global.mastervolume -=10
		}
		if keyboard_check_pressed(global.key_right) && global.mastervolume < 100
		{
			global.mastervolume +=10
		}
	}

	//VEGAN
	if settingschoice = 3
	{
		vegancolor = c_green
		if keyboard_check_pressed(global.key_a) || keyboard_check_pressed(global.key_right) || keyboard_check_pressed(global.key_left)
		{
			if global.vegan = false
			{
				global.vegan = true
			}
			else
			{
				global.vegan = false
			}
		}
	}
	else
	{
		vegancolor = c_black
	}

//LANGUAGE
	if settingschoice = 4
	{
		languagecolor = c_green
		languagetimer = 1
		if keyboard_check_pressed(global.key_right) && oGame.l <5 && languagetimer = 1
		{
			oGame.l +=1
			languagetimer = 0
		}
		if keyboard_check_pressed(global.key_left) && oGame.l >0 && languagetimer = 1
		{
			oGame.l -=1
			languagetimer = 0
		}
		if keyboard_check_pressed(global.key_left) && oGame.l = 0 && languagetimer = 1
		{
			oGame.l =5
			languagetimer = 0
		}
		if keyboard_check_pressed(global.key_right) && oGame.l = 5 && languagetimer = 1
		{
			oGame.l =0
			languagetimer = 0
		}
		
		
	}
	else
	{
		languagecolor = c_black
	}
	
	//RESETS
	if settingschoice = 5
	{
		reset1color = c_green
		if keyboard_check_pressed(global.key_a)
		{
			oGame.l = 0
			global.vegan = false
			window_set_fullscreen(true)
			global.musicvolume = 100
			global.mastervolume = 100
		}
	}
	else
	{
		reset1color = c_black
	}
	
	//ÄNDRA UPPÅT
	if settingschoice = 6
	{
		if upkey = true
		{
		changekey = true
		upcolor = c_purple
			 if keyboard_key != global.key_a && keyboard_key != global.key_b
			 && keyboard_key != global.key_left && keyboard_key != global.key_right 
			 && keyboard_key != global.key_down && keyboard_key != global.key_pause
			 {
				global.key_up = keyboard_key
			 }
			 
			if global.key_up != 0
			{
				upkey = false
				changekey = false
			}
		}
		
		if upkey = false
		{
		upcolor = c_green
		}
		if keyboard_check_released(global.key_a) && upkey = false
		{
			upkey = true
		}
		
	}
	else
	{
		upcolor = c_black
		upkey = false
	}


	//ÄNDRA NEDÅT
	if settingschoice = 7
	{
		if downkey = true
		{
		changekey = true
		downcolor = c_purple
			 if keyboard_key != global.key_a && keyboard_key != global.key_b
			 && keyboard_key != global.key_left && keyboard_key != global.key_right 
			 && keyboard_key != global.key_up && keyboard_key != global.key_pause
			 {
				global.key_down = keyboard_key
			 }
			 
			if global.key_down != 0
			{
				downkey = false
				changekey = false
			}
		}
		
		if downkey = false
		{
		downcolor = c_green
		}
		if keyboard_check_released(global.key_a) && downkey = false
		{
			downkey = true
		}
		
	}
	else
	{
		downcolor = c_black
		downkey = false

	}
	
	//ÄNDRA VÄNSTER
	if settingschoice = 8
	{
		if leftkey = true
		{
		changekey = true
		leftcolor = c_purple
			 if keyboard_key != global.key_a && keyboard_key != global.key_b
			 && keyboard_key != global.key_up && keyboard_key != global.key_right 
			 && keyboard_key != global.key_down && keyboard_key != global.key_pause
			 {
				global.key_left = keyboard_key
			 }
			 
			if global.key_left != 0
			{
				leftkey = false
				changekey = false
			}
		}
		
		if leftkey = false
		{
		leftcolor = c_green
		}
		if keyboard_check_released(global.key_a) && leftkey = false
		{
			leftkey = true
		}
		
	}
	else
	{
		leftcolor = c_black
		leftkey = false
	}
	
	//ÄNDRA HÖGER
	if settingschoice = 9
	{
		if rightkey = true
		{
		changekey = true
		rightcolor = c_purple
			 if keyboard_key != global.key_a && keyboard_key != global.key_b
			 && keyboard_key != global.key_left && keyboard_key != global.key_up 
			 && keyboard_key != global.key_down && keyboard_key != global.key_pause
			 {
				global.key_right = keyboard_key
			 }
			 
			if global.key_right != 0
			{
				rightkey = false
				changekey = false
			}
		}
		
		if rightkey = false
		{
		rightcolor = c_green
		}
		if keyboard_check_released(global.key_a) && rightkey = false
		{
			rightkey = true
		}
		
	}
	else
	{
		rightcolor = c_black
		rightkey = false
	}

	//ÄNDRA ACTION
	if settingschoice = 10
	{
		if actionkey = true
		{
			keyboard_key_release(global.key_a)
		changekey = true
		actioncolor = c_purple
			 if keyboard_key != global.key_up && keyboard_key != global.key_b
			 && keyboard_key != global.key_left && keyboard_key != global.key_right 
			 && keyboard_key != global.key_down && keyboard_key != global.key_pause
			 {
				global.key_a = keyboard_key
				changeactionkey = true
			 }
			 else
			 {
				 global.key_a = 0
			 }
			 
			if global.key_a != 0
			{
				actionkey = false
				changekey = false
			}
		}
		
		if actionkey = false
		{
		actioncolor = c_green
		}
		if keyboard_check_released(global.key_a) && actionkey = false && changeactionkey = false
		{
			actionkey = true
		}
		
	}
	else
	{
		changeactionkey = false
		actioncolor = c_black
		actionkey = false
	}
	
	//ÄNDRA CANCEL
	if settingschoice = 11
	{
		if cancelkey = true
		{
		changekey = true
		cancelcolor = c_purple
			 if keyboard_key != global.key_a && keyboard_key != global.key_up
			 && keyboard_key != global.key_left && keyboard_key != global.key_right 
			 && keyboard_key != global.key_down && keyboard_key != global.key_pause
			 {
				global.key_b = keyboard_key
			 }
			 
			if global.key_b != 0
			{
				cancelkey = false
				changekey = false
			}
		}
		
		if cancelkey = false
		{
		cancelcolor = c_green
		}
		if keyboard_check_released(global.key_a) && cancelkey = false
		{
			cancelkey = true
		}
		
	}
	else
	{
		cancelcolor = c_black
		cancelkey = false
	}

	//ÄNDRA PAUSE
	if settingschoice = 12
	{
		if pausekey = true
		{
		changekey = true
		pausecolor = c_purple
			 if keyboard_key != global.key_a && keyboard_key != global.key_b
			 && keyboard_key != global.key_left && keyboard_key != global.key_right 
			 && keyboard_key != global.key_down && keyboard_key != global.key_up
			 {
				global.key_pause = keyboard_key
			 }
			 
			if global.key_pause != 0
			{
				pausekey = false
				changekey = false
			}
		}
		
		if pausekey = false
		{
		pausecolor = c_green
		}
		if keyboard_check_released(global.key_a) && pausekey = false
		{
			pausekey = true
		}
		
	}
	else
	{
		pausecolor = c_black
		pausekey = false
	}
	
	//ÄNDRA PRESET
	if settingschoice = 13
	{
		reset2color = c_green
		scrPreset()
	}
	
	else
	{
		reset2color = c_black
	}
	
	
if settingschoice = -1
{
	settingschoice = 0
}

}

//SAVING

if sida =-1 && menuchoice = 3
{
	

	if keyboard_check_pressed(global.key_a) && savecheck = 1
	{	
		
		if room = rFiske
		{
			cantsave = true
			cantsavetimer = 300
		}
		else
		{
	scrSave();
		}
	}
	savecheck = 1
}