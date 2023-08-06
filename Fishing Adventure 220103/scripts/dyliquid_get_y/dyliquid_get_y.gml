/// @description dyliquid_get_y(x)
/// @param x
function dyliquid_get_y(argument0) {

	/*
	Returns y position of water at given x point or noone if x is outside of bounds
	*/

	if (argument0 > dy_x[0] && argument0 < dy_x[1]) {
	    return dy_column[(floor((argument0 - dy_x[0]) / dy_column_width)) * 3 + 1];
	} else {
	    show_debug_message("x in dyliquid_get_y(x) is outside of bounds of liquid rectangle!");
	}


}
