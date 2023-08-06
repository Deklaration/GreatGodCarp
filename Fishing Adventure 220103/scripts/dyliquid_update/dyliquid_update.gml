/// @description dyliquid_update()
function dyliquid_update() {

	/*
	Updates the water.
	*/


	var i, i1, i2, column_x, dy_column_prev, size, delta_left, delta_right;

	// update springs (Hooke’s Law)
	for (i = 0; i < dy_colomns_count; i++) {
	    i1 = i*3+1;
	    i2 = i*3+2;
	    column_x = dy_column[i*3] - dy_column[i1];
	    dy_column[i2] += dy_tension * column_x - (dy_column[i2] * dy_dampening);
	    dy_wave_step += dy_speed/dy_colomns_count;
	    var xx = dy_x[0] + i * dy_column_width;
	    var yy = -dy_wave_step;
	    dy_column[i1] += dy_column[i2] - lengthdir_x(dy_wave, yy + xx);
	}

	/*
	Spread out the waves (Transfer force to adjacent springs)
	delta_left: Stores the difference in height between each spring and its left neighbour
	delta_right: Stores the difference in height between each spring and its right neighbour

	Does so dy_smoothing times in order to allow waves to spread smoothly.
	*/

	size = dy_colomns_count * 3;
	dy_column_prev[size] = 0;

	repeat (dy_smoothing) {
	    array_copy(dy_column_prev, 0, dy_column, 0, size);
	    for (i = 0; i < dy_colomns_count; i++) {
	        i1 = (i-1)*3+1;
	        i2 = (i+1)*3+1;
	        if (i > 0) {
	            delta_left[i] = dy_spread * (dy_column_prev[i*3+1] - dy_column_prev[i1]);
	            dy_column[i1] += delta_left[i];
	            dy_column[(i-1)*3+2] += delta_left[i];
	        }
	        if (i < dy_colomns_count - 1) {
	            delta_right[i] = dy_spread * (dy_column_prev[i*3+1] - dy_column_prev[i2]);
	            dy_column[i2] += delta_right[i];
	            dy_column[(i+1)*3+2] += delta_right[i];
	        }
	    }
	}


}
