/// @description dyliquid_set_quality(columns, smoothing)
/// @param columns
/// @param smoothing
function dyliquid_set_quality(argument0, argument1) {

	/*
	Sets the quality of the water.

	argument0: The amount of columns to be used. Ideally, the bigger the area of the water the more columns
	you want to have (If area is small, it won't make a difference but it will slow down the game).
	argument1: The bigger the value, the smoother the transition of force between waves.

	Of course, with a higher quality it's going to be slower. You need to adjust this according to your needs.
	*/

	var quality = max(2, argument0);

	for (var i = 0; i < quality; i++) {
	    dy_column[i*3] = dy_y[0]; // target height
	    dy_column[i*3+1] = dy_y[0]; // height
	    dy_column[i*3+2] = 0; // speed
	}

	dy_colomns_count = quality;
	dy_column_width = (dy_x[1] - dy_x[0]) / (dy_colomns_count - 1); // width of each spring
	dy_smoothing = argument1; // amount of water passes, used in dyliquid_update


}
