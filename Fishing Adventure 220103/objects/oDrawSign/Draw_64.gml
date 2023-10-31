if (live_call()) return live_result;

if !instance_exists(oGettingItems)
{
	
draw_sprite(sFixTheSign,signSpeed,240,5)
signSpeed +=0.4
// Set the target surface for drawing
if !surface_exists(driftwood_surface)
{
	driftwood_surface = surface_create(480,270)
}
// Set the target surface for drawing
surface_set_target(driftwood_surface);

// Clear the surface with a transparent color (optional)
draw_clear_alpha(c_black, 0);

// Draw the driftwood sprite
//draw_sprite_ext(sDriftwood, 0, camera_get_view_width(oCamera.cam) / 2, camera_get_view_height(oCamera.cam) / 2,7,7,0,c_white,1);
draw_sprite_ext(sDriftwood, 0, 240, 270/2, 7, 7, 0, c_white, 1);

// Draw your unique positions
for (var i = 0; i < unique_positions_count; ++i) {
    var pos = unique_positions[i];
    draw_sprite_ext(sDot, 0, pos.x, pos.y, 7, 7, 0, global.color[25], 1);
}

// Reset the target surface to application surface
surface_reset_target();


// Draw the surface onto the application surface at the calculated position
draw_surface(driftwood_surface, 0,0);

// Draw the hand
draw_sprite(sHand, 0, handX, handY);


//var converted_coords = convertRoomToView(poly_x, poly_y, cam_x, cam_y);
//var poly_screen_x = converted_coords[0];
//var poly_screen_y = converted_coords[1];


// Check for new position
if keyboard_check(global.key_a) {
	if (scrPointInPolygon(handX,handY, poly_x, poly_y))
    {
		show_debug_message("INSIDE")
    var new_position = { x: handX, y: handY };
    var already_exists = false;

    // Check if the new position already exists in unique_positions
    for (var i = 0; i < unique_positions_count; ++i) {
        var pos = unique_positions[i];
        if (pos.x == new_position.x && pos.y == new_position.y) {
            already_exists = true;
            break;
        }
    }

    // If the new position doesn't exist, add it
    if (!already_exists) {
        unique_positions[unique_positions_count] = new_position;
        unique_positions_count++;
    }
	}
}
}