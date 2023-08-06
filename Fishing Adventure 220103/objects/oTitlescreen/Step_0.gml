//Blinking effect
if blinkingtext > 1.1 
{
	fadeout = true
}
if blinkingtext < 0.005
{
	fadeout = false
}

if fadeout = false
{
	blinkingtext +=0.005
}
if fadeout = true
{
	blinkingtext -=0.005
}


if timestart = true
{
	timer-=1
}

fullscreen = window_get_fullscreen()

if starttext = ""{
	
if keyboard_check_pressed(global.key_up)
{
	if choice > 1
{
	choice--;
}
}
if keyboard_check_pressed(global.key_down)
{
	if choice < 3 && settings = false
{
	choice++;
}

	if choice < 4 && settings = true
{
	choice++;
}
}
}



//VALEN

if keyboard_check_pressed(global.key_a)
{
	//STARTVAL

if choice = 1 && starttext = "" && settings = false
{
	room_goto(global.roomsave)	
}

if choice = 2 && starttext = "" && settings = false
{
	settings = true
	menu[0] = "Fullscreen"
	menu[1] = "Audio"
	menu[2] = "Reset save file"
	menu[3] = "Back to start menu"
	choice = 1
	timestart = true
}

if choice = 3 && starttext = "" && settings = false
{
	game_end()
}

//SETTTINGS

if settings = true && timer <0
{
	if choice = 1 // Fullscreen
	{
		if fullscreen = true
		{
		window_set_fullscreen(false)
		}
		else
		{
			window_set_fullscreen(true)
		}
	}
	
	if choice = 2 // AUDIO
	{
		if !audio_is_playing(soTitle)
		{
			audio_play_sound(soTitle,1,true)
		}
		else
		{
			audio_stop_sound(soTitle)
		}
	}

	if choice = 3 // Delete save
	{
		//if file_exists("savedgame.fish")
	   //{	file_delete("savedata.ini")
			playerprefs_delete_all();
			game_restart()
	//   }
	}	
	
	if choice = 4 // GO BACK
	{
		menu[0] = "Start"
		menu[1] = "Settings"
		menu[2] = "Exit"
		settings = false
		choice = 1
		timestart = false
		timer = 5
	}
}



starttext = ""
}

if keyboard_check_pressed(global.key_b)
{
	if settings = true && timer <0
		{
		menu[0] = "Start"
		menu[1] = "Settings"
		menu[2] = "Exit"
		settings = false
		choice = 1
		timestart = false
		timer = 5
	}
}