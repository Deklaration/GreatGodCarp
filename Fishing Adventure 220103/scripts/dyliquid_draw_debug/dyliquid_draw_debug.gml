/// @description dyliquid_draw_debug()
function dyliquid_draw_debug() {

	/*
	Draws the water with given colors and alpha values.
	*/

	var i, p1, p2, p3, p4;

	draw_set_color(c_green);
	draw_primitive_begin(pr_linestrip);
	for (i = 0; i < dy_colomns_count; i+=1) {
	    p1[0] = dy_x[0] + i * dy_column_width;
	    p1[1] = dy_column[i*3+1];
	    p2[0] = p1[0];
	    p2[1] = dy_y[1];
	    draw_vertex(p1[0], p1[1]);
	    draw_vertex(p2[0], p2[1]);
	}
	draw_primitive_end();
	draw_set_color(c_black);


}
