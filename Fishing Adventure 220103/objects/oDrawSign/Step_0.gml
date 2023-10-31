if (live_call()) return live_result;
global.cutscene = true
if !instance_exists(oGettingItems)
{


show_debug_message(mouse_x)
show_debug_message(mouse_y)

if keyboard_check_pressed(global.key_pause) || keyboard_check_pressed(global.key_b)
{
// Create a sprite from the surface
//global.sSign = sprite_create_from_surface(driftwood_surface, 0, 0, sprite_get_width(sDriftwood), sprite_get_height(sDriftwood), false, false, 0, 0);
global.sSign = sprite_create_from_surface(driftwood_surface, 0, 0, 480, 270, false, false, 0, 0);



// The new_sprite now contains your driftwood and drawings
surface_free(driftwood_surface);



// Create a new surface at 1/7th the size of the original
var scaled_surface = surface_create(480 / 7, 270 / 7);

// Set the new surface as the target
surface_set_target(scaled_surface);

// Clear the surface (optional)
draw_clear_alpha(c_black, 0);

// Draw the original sprite onto the new surface at reduced scale
draw_sprite_stretched(global.sSign, 0, 0, 0, 480 / 7, 270 / 7);

// Reset the surface target
surface_reset_target();

// Create a new sprite from the scaled surface
global.sSign = sprite_create_from_surface(scaled_surface, 0, 0, 480 / 7, 270 / 7, false, false, 32, 16);

// Free the scaled surface to avoid memory leaks
surface_free(scaled_surface);

// Now you can use `scaled_sprite` as you would any other sprite


global.cutscene = false
instance_destroy(self)
}

	if keyboard_check(global.key_left)
	{
		handX -=1
	}
	if keyboard_check(global.key_right)
	{
		handX +=1
	}
	if keyboard_check(global.key_up)
	{
		handY -=1
	}
	if keyboard_check(global.key_down)
	{
		handY +=1
	}

}