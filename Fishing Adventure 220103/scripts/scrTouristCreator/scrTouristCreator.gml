// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrTouristCreator(){


var numTourists = round(global.totalFishScore/10);

//// Ensure that we don't exceed the max number of tourists (e.g., 100)
//if (numTourists > array_length(global.touristLocation)) {
//    numTourists = array_length(global.touristLocation);
//}



// Get the current number of tourists
var currentTourists = instance_number(oTourist);

// Create new tourists if necessary
for (var i = currentTourists; i < numTourists; i++) {
    var touristx = irandom(room_width);  // or any other location logic
    var touristy = irandom(room_height);  // or any other location logic
    instance_create_layer(touristx, touristy, "Instances", oTourist);
}


}

