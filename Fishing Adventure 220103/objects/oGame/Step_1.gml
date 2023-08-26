/// @description Var man är, rods och touristskaparen

if instance_exists(oFishGuide){

if room = rPuddleTown || (room = rFiske && room_previous(rPuddleTown))
{
	oFishGuide.blink[0] = oFishGuide.blinky
	currenttown = "Puddle Town"
}
else
{
	oFishGuide.blink[0] = 0
}

}
 

/*
if global.activerod = "It's a stick"
{
	global.rodthrow = global.fisharray[1,3]
	global.rodpower = global.
}
*/
