depth =-y;
//if (live_call()) return live_result;


if global.paused = false && global.textbox = false && global.cutscene = false//Pratar med Daugava
{ 

if (place_meeting(x-1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = -1)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		sprite_index = sDaugavaWest
		talking = true
		global.textbox = true
	}
}




if (place_meeting(x+1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = 1)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		sprite_index = sDaugavaEast
		talking = true
		global.textbox = true
	}
	
}

if (place_meeting(x,y-1,oProt) && oProt.sprite_index = sProt_South)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		sprite_index = sDaugavaNorth
		talking = true
		global.textbox = true
	}
	
}


if (place_meeting(x,y+1,oProt) && oProt.sprite_index = sProt_North)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		sprite_index = sDaugavaSouth
		talking = true
		global.textbox = true
	}
}
}


//FÖRSTA SNACKET, INNAN MAN GÅR TILL AQUAVISTA
scrTalkToDaugava(0,1)

//Cutscene, där Daugava går in till AquaVista
if global.daugava_set = 1 && global.cutscene2 = false && global.textbox = false
{
	if sprite_index != sDaugavaEast && walkSet = false 
	{ 
		walkRight = 1;
		walkSet = true
	} 
	if sprite_index = sDaugavaEast && walkSet = false 
	{	walkRight = 2; 
		walkSet = true
	}
	//show_debug_message(walkRight)
	
	if walkRight = 1
	{
		global.cutscene = true
		walktimer_cutscene2 +=1
	 	x+= 1
		sprite_index = sDaugavaEast
		if oProt.y > y
		{
			oProt.sprite_index = sProt_NorthEast
			oProt.xscale = -1
			oProt.clothes = global.clothesnorthwest
			oProt.nose = sNothing
		}
		
		if walktimer_cutscene2 >= 80
		{
			sprite_index = sDaugavaNorth
			x = 776
			if !place_meeting(x,y,oAquaVista_Door)
			{
				y-= 1
			}
			else
			{
			global.cutscene2 = true
			global.cutscene = false
			instance_destroy(self)
			}
		}
	}
	if walkRight = 2
	{
		global.cutscene = true
		walktimer_cutscene2 +=1
	 	y-= 1
		sprite_index = sDaugavaNorth
		if walktimer_cutscene2 >= 40
		{
			sprite_index = sDaugavaEast
				if x < 776
				{
				y = 448
				}
				x+=1
						if oProt.y > y && oProt.x < x
							{
								oProt.sprite_index = sProt_NorthEast
								oProt.xscale = -1
								oProt.clothes = global.clothesnorthwest
								oProt.nose = sNothing
							}
							
						if oProt.y > y && oProt.x > x
							{
								oProt.sprite_index = sProt_NorthEast
								oProt.xscale = 1
								oProt.clothes = global.clothesnorthwest
								oProt.nose = sNothing
							}
				if x >= 776
				{
					x = 776
					y-= 0.8
					sprite_index = sDaugavaNorth
				}
				
				if place_meeting(x,y,oAquaVista_Door)
				{
				global.cutscene2 = true
				global.cutscene = false
				instance_destroy(self)
				}
		}
	}
}

//ANDRA SNACKET. MAN FÅR HJÄLP ATT FISKA
scrTalkToDaugava(1,2)

if global.daugava_set = 2 && global.gettinggear = false //Equippar gear
{
	global.baitshopUnlock = true
	global.gettinggear = true
	global.activerod = 1
	global.activebait = 1
}

//Man pratar med honom igen inne på AquaVista, innan man fångat sig en fisk
scrTalkToDaugava(2,2)

if global.daugava_set = 2 && global.catchFirstFish !=-1
{
	global.daugava_set = 3
}

//Efter man fångat sin första fisk
scrTalkToDaugava(3,4)

if global.daugava_set = 4
{
	global.showAquaVistaLight = true
	if global.placedFirstFishInTank = true
	{
		global.daugava_set = 5
	}
}
//Man pratar igen efter man fångat sin första fisk
scrTalkToDaugava(4,4)

//Man har satt sin första fisk i akvarium
scrTalkToDaugava(5,6)

//Man pratar igen efter man satt sin första fisk i akvarium
scrTalkToDaugava(6,6)

