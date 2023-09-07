depth =-y;
if (live_call()) return live_result;


if global.paused = false && global.textbox = false //Pratar med Daugava
{ 

if (place_meeting(x-1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = -1)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		sprite_index = sDaugavaEast
		talking = true
		global.textbox = true
	}
}




if (place_meeting(x+1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = 1)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		sprite_index = sDaugavaWest
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

//ANDRA SNACKET. MAN FÅR HJÄLP ATT FISKA
scrTalkToDaugava(1,2)

//Man pratar med honom igen inne på AquaVista, innan man fångat sig en fisk
scrTalkToDaugava(2,2)

//Efter man fångat sin första fisk
scrTalkToDaugava(3,3)

//Man har satt sin första fisk i akvarium
scrTalkToDaugava(4,5)

//Man pratar igen efter man satt sin första fisk i akvarium
scrTalkToDaugava(5,5)

