if (live_call()) return live_result;
depth =-y

scrTalkToObject()

if talking = true
{
	oProt.disable = true
	sprite_index = sSetSail
	image_speed = 0.04
	//global.cutscene = true
	if image_index = 3
	{
	//oProt.disable = false
	global.sailing = true
	}
}


if global.sailing = true {
    talking = false;
    sprite_index = sSailing;
	image_angle = boat_direction
    image_speed = 0.05;

    // Update wind direction
    wind_direction += choose(-2, -1, 0, 1, 2);
    wind_direction = (wind_direction + 360) % 360; // Ensure it stays within 0-360

    // Calculate wind alignment factor
    var alignment = abs(wind_direction - boat_direction) % 360;
    if (alignment > 180) {
        alignment = 360 - alignment; // Ensure alignment is within 0-180
    }

    // Adjust wind boost based on alignment
    if (alignment > 150) { // Very poor alignment (sailing against the wind)
        wind_boost = -0.6; // Negative boost (penalty)
    } else {
        wind_boost = 0.8 - (alignment / 150) * 0.8; // Decreases as alignment worsens
    }

    // Update boat direction
    if keyboard_check(global.key_left) {
        boat_direction += 2; // Turn left
    }
    if keyboard_check(global.key_right) {
        boat_direction -= 2; // Turn right
    }
    boat_direction = (boat_direction + 360) % 360; // Ensure boat direction is within 0-360

    // Move forward
    if keyboard_check(global.key_up) {
        move_speed = 0.6 + wind_boost;
        x += move_speed * cos(degtorad(boat_direction));
        y -= move_speed * sin(degtorad(boat_direction)); // Subtract because y increases downwards
    } else {
        move_speed = wind_boost; // Drift with the wind when not moving forward
    }

    // Debug messages
    //show_debug_message("ms: " + string(move_speed));
    //show_debug_message("bd: " + string(boat_direction));
    //show_debug_message("wd: " + string(wind_direction));
    //show_debug_message("al: " + string(alignment));
}
