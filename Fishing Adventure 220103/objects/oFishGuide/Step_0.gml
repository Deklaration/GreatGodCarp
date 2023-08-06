if image_index = 3
{
	if alpha < 1
	{
	alpha +=0.2
	}
}


if cantsave = true
{
	cantsavetimer -=1
}
if cantsavetimer <0
{
	cantsave = false
}


//Vända sida till höger

turntimer-=1

if (keyboard_check_pressed(global.key_right)) && open = true && changekey = false
{
	if sida < 5 && sida >-1
	{
		sida +=1
		flipright = true
		turntimer = 1
	}
}

if flipright = true
{
	alpha =0
if image_index < 6
	{
			timer -=1
			
			if timer < 0
			{
				image_index +=1
				timer = 7
			}
		}
else
{
	flipright = false
	image_index = 3
}
}

//Vända sida till vänster

if (keyboard_check_pressed(global.key_left) ) && open = true && changekey = false
{
	if sida > 0
	{
		alpha = 0
		sida -=1
		flipleft = true
		image_index = 6
		turntimer = 1
	}
}

if flipleft = true
{
if image_index > 3
	{
			timer -=1
			
			if timer < 0
			{
				image_index -=1
				timer = 7
			}
		}
else
{
	flipleft = false
	image_index = 3
}
}


//Rätt stad blinkar på kartan
blinktimer -=1
if blinktimer < 0
{
	if blinky = 1
	{
		blinky = 0
	}
	else
	{
		blinky = 1
	}
	blinktimer = 60
}

//Den dyker upp och försvinner som den ska
if y > 20 && away = false
{
y-=60
}

if y <= 20 && image_index < 3 && open = false
{
	timer -=1
	if timer < 0
	{
	image_index +=1
	timer = 7
	}
}

if image_index = 3
{
	open = true
}


if away = true
{
	y+=60
	if y > room_height
	{
		instance_destroy(self)
	}
}
////


///////////////////// Välja mellan de olika menyerna på sida 0


if sida = 0 
{

	if menuchoice = 0
	{
		inventorycolor = c_green	
		if (keyboard_check_pressed(global.key_a)  ) && turntimer <0
			{
				sida =-1
				alpha = 0
				flipleft = true
				image_index = 6
				oInventory.place = 0
			}
	}
else
	{
		inventorycolor = c_black
	}
	
	if menuchoice = 1
	{
		gearcolor = c_green
				if keyboard_check_pressed(global.key_a)  && turntimer <0
			{
				oRods.place = 0
				oRods.buttonreset = 1
				sida = -1
				alpha = 0
				flipleft = true
				image_index = 6
				turntimer = 1
			}
	}
	else
	{
		gearcolor = c_black
	}
	
	if menuchoice = 2
	{
				if keyboard_check_pressed(global.key_a) && turntimer <0
			{
				settingschoice = -1
				sida = -1
				alpha = 0
				flipleft = true
				image_index = 6
				turntimer = 1
			}
		optionscolor = c_green
	}
	else
	{
		optionscolor = c_black
	}
	
	if menuchoice = 3
	{
				if keyboard_check_pressed(global.key_a) && turntimer <0
			{
				sida = -1
				alpha = 0
				flipleft = true
				image_index = 6
				turntimer = 1
				savecheck = 0
			}
		savecolor = c_green
	}
	else
	{
		savecolor = c_black
	}
	
	if menuchoice > 0 && keyboard_check_pressed(global.key_up)
	{
		menuchoice -=1
	}
	if menuchoice < 3 && keyboard_check_pressed(global.key_down) 
	{
		menuchoice +=1
	}
}

/////////
//Tillbaka till startsidan
if sida = -1 && (keyboard_check_pressed(global.key_b)) && turntimer <0 && changekey = false
	{
		scrInventoryJump()
		alpha = 0
		sida +=1
		flipright = true
		turntimer = 1
	}
	
//// Bort med boken
if ((keyboard_check_pressed(global.key_pause) && turntimer <0) || (keyboard_check_pressed(global.key_b) && sida >-1 && turntimer <0)) && changekey = false
{
	away = true
oMusic.intensity = 1
global.paused = false
oRods.place = 0
oRods.buttonreset = 1
}