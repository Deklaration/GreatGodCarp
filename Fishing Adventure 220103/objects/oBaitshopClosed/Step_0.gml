if (live_call()) return live_result;
// Define these variables in the Create event or at the start of the script


var shake_intensity = 1; // Intensity of the shake

depth = -y;

// First, check if any dialog or cutscene is currently active
if (global.paused || global.cutscene || global.textbox || oProt.disable || instance_exists(oText)) {
    return;
}

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
    global.textbox = true;

    // Create text instances based on dialog
        // Start shaking
        shake_duration = 5; // Set shake duration in steps (e.g., 30 steps)
        shake = true;
		
}

//show_debug_message(shake)
if shake = true
{
    if shake_duration > 0 
	{
        // Randomly adjust position
        drawx += irandom_range(-shake_intensity, shake_intensity);
        //y += irandom_range(-shake_intensity, shake_intensity);
		//show_debug_message(shake_duration)
        shake_duration-=1
    } 
	if shake_duration <= 0
	{
        // Reset position and stop shaking
		shake = false
        drawx = original_x;
        drawy = original_y;
    }
}
