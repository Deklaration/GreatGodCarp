// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrTuristCreator(){

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

}