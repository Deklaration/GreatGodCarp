if (live_call()) return live_result;

//show_debug_message(global.talkedToSkurt)

if global.paused = false && global.textbox = false{ //Pratar med

if (place_meeting(x-1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = -1)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0

		talking = true
		global.textbox = true
	}
}


if (place_meeting(x+1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = 1)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0

		talking = true
		global.textbox = true
	}
	
}

if (place_meeting(x,y-1,oProt) && oProt.sprite_index = sProt_South)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0

		talking = true
		global.textbox = true
	}
	
}

if (place_meeting(x,y+1,oProt) && oProt.sprite_index = sProt_North)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0

		talking = true
		global.textbox = true
	}
}


}



if talking = true && global.talkedToSkurt !=2
{
	
	if global.cutscene = false
	{
		place = 1
		global.talkedToSkurt +=1
	}
	global.cutscene = true
	shopActive = true
}






if shopActive = true
{
	if talking = true && createtext = false && howMany = false
	{
	scrNewTextbox(dialog[0], 0)
	alpha = 0
	createtext = true
	oProt.image_index = 0

	}



	if keyboard_check_pressed(global.key_a) && activeSet = true && howMany = false
	{
		howMany = true
		instance_destroy(oText)
		scrNewTextbox(dialog[1], 0)
		exit
	}

activeSet = true



{ //antal och place
if keyboard_check_pressed(global.key_b) && howMany = false
	{
		shopActive = false
		talking = false
		createtext = false
		global.textbox = false
		howMany = false
		wannaBuy = false
		y1 = 200
		y2 = 352
		activeSet = false
		setRandom = false
		if instance_exists(oText)
		{
			instance_destroy(oText)
		}
		alpha = 0
		global.cutscene = false
		antal = 1
		show_debug_message("hallådär")
	}


			if keyboard_check_pressed(global.key_left)
			{
				if howMany = false
				{
				place-=1
				}
				else
				{
				antal -=1
				}
			}
			if keyboard_check_pressed(global.key_right)
			{
				if howMany = false
				{
				place+=1
				}
				else
				{
				antal+=1
				}
			}
			if keyboard_check(global.key_left) || keyboard_check(global.key_right)
			{
				timer -=1
				fishalphaset = 2
				fishalpha = 0
			}
			if timer < 0
			{
				if keyboard_check(global.key_left)
				{
					if howMany = false
					{
					place-=1
					}
					else
					{
					antal -=1
					}
				}
				if keyboard_check(global.key_right)
				{
					if howMany = false
					{
					place+=1
					}
					else
					{
					antal+=1
					}
				}
			}
			if keyboard_check_released(global.key_left) || keyboard_check_released(global.key_right)
			{
				timer = 30
				fishalphaset = 1
				fishalpha = -0.02
			}

			
			place = clamp(place,1,12)
			antal = clamp(antal,0,999)
}

if fishalphaset = 1
{
	fishalpha +=0.005
	if fishalpha >= 0.15
	{
		fishalphaset = 0
	}
}

//show_debug_message(fishalphaset)
if howMany = true
{
	fishalpha = 0.15
	if keyboard_check_pressed(global.key_b)
	{
		howMany = false
		wannaBuy = false
		antal = 1
	}

	
	if keyboard_check_pressed(global.key_a) && wannaBuy = false
	{
	wannaBuy = true
	}
	if wannaBuy = true && created2 = false
	{
		instance_destroy(oText)
		scrNewTextbox(dialog[2],0)
		created2 = true
		exit
	}
}

if wannaBuy = true
{
	if  global.baitarray[place,2] * antalSave > 0
	{
		
		if keyboard_check_pressed(global.key_a) 
		{
			if yes = true
				{
				if global.gold >= global.baitarray[place,2] * antalSave
				{
				instance_destroy(oText)
				scrNewTextbox(dialog[3],0)
			
				for (var i = 0; i < antalSave; ++i) {
				   scrInventoryAdd(oBait,place)
				   global.gold -= global.baitarray[place,2]
				}
			
				wannaBuy = false
				created2 = false
				howMany = false
				antal = 1
				}
				else
				{
				instance_destroy(oText)
				scrNewTextbox(dialog[4],0)
				wannaBuy = false
				howMany = false
				created2 = false
				antal = 1
				}
			}
			else
			{
				instance_destroy(oText)
				wannaBuy = false
				howMany = false
				created2 = false
				antal = 1
			}
		}
	
	}
	else
	{
		instance_destroy(oText)
		scrNewTextbox(dialog[5],0)
		wannaBuy = false
		howMany = false
		created2 = false
		antal = 1
	}
	
	
	if keyboard_check_pressed(global.key_b)
	{
		instance_destroy(oText)
		wannaBuy = false
		created2 = false
		howMany = false
		antal = 1
	}
}
}//shopActive