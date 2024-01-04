if (live_call()) return live_result;
if global.paused=false && global.cutscene=false && global.textbox=false && !instance_exists(oText) {
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


	if talking = true && global.sailing = true
	{
		global.sailing = false
		oProt.disable = false
		oProt.x = x+30
		oProt.y = y+20
		talking = false
		oBoat.sprite_index = sBoat
		oBoat.image_angle = image_angle
		oBoat.x = x+(sprite_width/2)
		oBoat.y = y+sprite_height
	}