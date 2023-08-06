/// @description Var man är, rods och turistskaparen

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

//FISKESPÖN

if global.activerod = "It's a stick"
{
	global.rodthrow = 1
}


//TURIST


var numTourists = round(global.totalFishScore/10);

// Ensure that we don't exceed the max number of tourists (e.g., 100)
if (numTourists > 100) {
    numTourists = 100;
}

// Get the current number of tourists
var currentTourists = instance_number(oGenerator);

// Create new tourists if necessary
for (var i = currentTourists; i < numTourists; i++) {
    var turistx = irandom(room_width);  // or any other location logic
    var turisty = irandom(room_height);  // or any other location logic
    instance_create_layer(turistx, turisty, "Instances", oGenerator);
}