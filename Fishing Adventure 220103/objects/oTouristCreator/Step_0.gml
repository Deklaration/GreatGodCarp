 
var numTourists = round(global.totalFishScore/10);

//// Ensure that we don't exceed the max number of tourists (e.g., 100)
//if (numTourists > array_length(touristLocation)) {
//    numTourists = array_length(touristLocation);
//}


with(oTourist)
{
    if(num <= numTourists)
    {
        activate = true
    }
	else
	{
		activate = false
	}
}

show_debug_message(numTourists)

/*

// Get the current number of tourists
var currentTourists = instance_number(oTourist);

// Create new tourists if necessary
for (var i = currentTourists; i < numTourists; i++) {
	show_debug_message(i)
	if oGame.roomarray[room] = "Beachside" && touristLocation[i,0] = oGame.roomarray[room]
	{
    var touristx = touristLocation[i,1];  // or any other location logic
    var touristy = touristLocation[i,2];  // or any other location logic
	var clothes = touristLocation[i,3];
	var ears = touristLocation[i,4];
	var eyes = touristLocation[i,5];
	var hair = touristLocation[i,6];
	var mouth = touristLocation[i,7];
	var nose = touristLocation[i,8];
	var shoes = touristLocation[i,9];
	var clothescolor = touristLocation[i,10];
	var haircolor = touristLocation[i,11];
	var shoescolor = touristLocation[i,12];
	var skincolor = touristLocation[i,13];
	
    instance_create_depth(touristx, touristy, 0, oTourist,{
		set_clothes : clothes ,
		set_ears : ears,
		set_eyes : eyes,
		set_hair : hair,
		set_mouth : mouth,
		set_nose : nose,
		set_shoes : shoes,
		set_clothescolor : clothescolor,
		set_haircolor : haircolor,
		set_shoescolor : shoescolor,
		set_skincolor : skincolor 
		});
	}
}
