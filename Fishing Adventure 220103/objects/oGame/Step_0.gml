//global.time += 0.9

//if instance_exists(oShop) && instance_exists(oInventory)
//{
//show_debug_message(string("many: ") + string(oShop.many))
////show_debug_message(string("oShop place: ") + string(oInventory.inventory[oShop.placej]))
//show_debug_message(string("Inventory gold: ") + string(oShop.inventorygold))
//}


//if instance_exists(oWater)
//{
//show_debug_message("tension: ")
//show_debug_message(oWater.tension)
//show_debug_message(" dampening: ")
//show_debug_message(oWater.dampening)show_debug_message(" spread: ")
//show_debug_message(oWater.spread)show_debug_message(" wave: ")
//show_debug_message(oWater.wave)show_debug_message(" wavespeed: ")
//show_debug_message(oWater.wavespeed)show_debug_message(" DONE ")
//}

show_debug_message(global.lastroom)

if textboxtimer = true
{
	textboxtimercountdown -=1
}
if textboxtimercountdown <0 && !instance_exists(oText) && !instance_exists(oTextSign)
{
	global.textbox = false
	textboxtimer = false
	textboxtimercountdown = 5
}

if keyboard_check_pressed(global.key_pause) && room != rTitlescreen && global.cutscene = false && global.textbox = false && !instance_exists(oCastingWheel) && global.cantpause = false
{
	if !instance_exists(oFishGuide) && !instance_exists(oText) && !instance_exists(oTextSign)
{
	if room = rFiske
	{
		instance_create_layer(room_width/2,room_height,"Instances",oFishGuide)
	}
	else
	{
	instance_create_layer(camera_get_view_width(oCamera.cam) / 2,camera_get_view_height(oCamera.cam),"Instances",oFishGuide)
	}
}
}

//Time played
second -=1
if second = 0
{
	global.secondsplayed += 1
	second = 60

	if global.secondsplayed = 60
	{
		global.secondsplayed = 0
		global.minutesplayed +=1

		if global.minutesplayed = 60
		{
			global.minutesplayed = 0
			global.hoursplayed +=1
		}
	}
}


audio_set_master_gain(0,global.mastervolume/100)
global.language = language[l]