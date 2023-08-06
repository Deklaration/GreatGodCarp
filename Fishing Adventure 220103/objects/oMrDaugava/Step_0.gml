depth =-y;

if !instance_exists(oGettingGear)
{


if global.paused = false {

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


}
//FÖRSTA SNACKET, DÅ MAN FÅR SINA GREJER
if global.gettinggear = false
{

if talking = true && createtext = false
{
	image_index = 1
	scrNewTextbox(dialog[0],0)
	scrNewTextbox(dialog[1],0)
	scrNewTextbox(dialog[2],0)
	scrNewTextbox(dialog[3],0)
	scrNewTextbox(dialog[4],0)
	scrNewTextbox(dialog[5],0)
	scrNewTextbox(dialog[6],0)	
	scrNewTextbox(dialog[7],0)
	scrNewTextbox(dialog[8],0)
	scrNewTextbox(dialog[9],0)
	createtext = true
}

if instance_exists(oText) && talking = true 
{
	oText.NPC = self
}

if !instance_exists(oText) && talking = true
{
	talking = false
	createtext = false
	global.gettinggear = true
	instance_create_depth(x,y,1,oGettingGear)
	image_index = 0
}
}


//ANDRA SNACKET. MAN FÅR HJÄLP ATT FISKA
if global.gettinggear = true
{
if talking = true && createtext = false
{
	scrNewTextbox(dialog[10],0)
	scrNewTextbox(dialog[11],0)
	scrNewTextbox(dialog[12],0)
	createtext = true
}

if talking = true && instance_exists(oText)
{
	image_index = 1
	oText.NPC = self
}

if !instance_exists(oText)
{
	image_index = 0
	talking = false
	createtext = false
}
}