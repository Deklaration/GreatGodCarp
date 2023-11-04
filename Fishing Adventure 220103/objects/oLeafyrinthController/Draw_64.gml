// Draw GUI event for obj_maze_controller
draw_set_alpha(fadeAlpha);
draw_set_color(c_black);
draw_rectangle(display_get_gui_width()*-0.5, display_get_gui_height()*-0.5, display_get_gui_width()*1.5, display_get_gui_height()*1.5, false);
draw_set_alpha(1); // Reset alpha to prevent affecting other GUI elements
