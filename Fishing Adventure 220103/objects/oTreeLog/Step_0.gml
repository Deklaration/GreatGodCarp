if (live_call()) return live_result;
depth =-y+2;
 if global.paused=false && global.cutscene=false && global.textbox=false && oProt.disable=false && !instance_exists(oText) {


    // If no text is displayed and the player character is nearby
    var prot_talk_key = keyboard_check_pressed(global.key_a);
    var near_player = false;
    var face_dir = 0;

    if (place_meeting(x-1, y, oProt) && oProt.sprite_index == sProt_West && oProt.xscale == -1) {
        near_player = true;
        face_dir = 1;
    } else if (place_meeting(x+1, y, oProt) && oProt.sprite_index == sProt_West && oProt.xscale == 1) {
        near_player = true;
        face_dir = 2;
    } else if (place_meeting(x, y-1, oProt) && oProt.sprite_index == sProt_South) {
        near_player = true;
        face_dir = 3;
    } else if (place_meeting(x, y+1, oProt) && oProt.sprite_index == sProt_North) {
        near_player = true;
        face_dir = 4;
    }

    if (near_player && prot_talk_key) {
        oProt.image_index = 0;


        talking = true;
    }

 }
 
 if talking = true && scrInventorySearch(oKeyInventory,enumItem.Bunnyhouse) !=-1
 {
scrInventoryRemove(oKeyInventory,enumItem.Bunnyhouse)
global.placedBunnyHouse = true
talking = false
 }
 
 if talking = true && global.youCanJustWalkOverIt = true
 {
	 if oProt.y > y
	 {
	oProt.y-=30
	 }
	 else 
	 {
	oProt.y+=30
	 }
	talking = false
 }
 