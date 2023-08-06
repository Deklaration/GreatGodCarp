/// @description dyliquid_get_bounds()
function dyliquid_get_bounds() {

	/*
	Returns the coordinates of water as array (arguments as draw_rectangle)
	*/

	var result;

	result[0] = dy_x[0];
	result[1] = dy_y[0];
	result[2] = dy_x[1];
	result[3] = dy_y[1];

	return result;


}
