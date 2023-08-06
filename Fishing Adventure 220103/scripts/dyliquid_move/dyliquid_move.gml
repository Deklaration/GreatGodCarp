/// @description dyliquid_move(x1, y1, x2, y2);
/// @param x1
/// @param y1
/// @param x2
/// @param y2
function dyliquid_move(argument0, argument1, argument2, argument3) {

	/*
	Change location and size of water (arguments as draw_rectangle)
	*/

	dyliquid_set_bounds(argument0, argument1, argument2, argument3);
	dyliquid_set_quality(dy_colomns_count, dy_smoothing);


}
