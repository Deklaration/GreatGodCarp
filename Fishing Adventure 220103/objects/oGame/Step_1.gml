/// @description Var man är, rods och touristskaparen

if instance_exists(oFishGuide){

if room = rTownCenter || (room = rFiske && room_previous(rTownCenter))
{
	oFishGuide.blink[0] = oFishGuide.blinky
	currenttown = "Puddle Town"
}
else
{
	oFishGuide.blink[0] = 0
}

}
 
//show_debug_message(global.daugava_set)

/*
if global.activerod = "It's a stick"
{
	global.rodthrow = global.fisharray[1,3]
	global.rodpower = global.
}
*/
