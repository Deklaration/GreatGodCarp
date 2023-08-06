/// @description dyliquid_draw(col1, col2, alpha1, alpha2)
/// @param col1
/// @param col2
/// @param alpha1
/// @param alpha2
function dyliquid_draw(argument0, argument1, argument2, argument3) {

	/*
	Draws the water with given colors and alpha values.
	*/

	var i, p1, p2, p3, p4;

	draw_primitive_begin(pr_trianglestrip);
	for (i = 0; i < dy_colomns_count; i+=1) {
	    p1[0] = dy_x[0] + i * dy_column_width;
	    p1[1] = dy_column[i*3+1];
	    p2[0] = p1[0];
	    p2[1] = dy_y[1];
	    draw_vertex_colour(p1[0], p1[1], argument0, argument2);
	    draw_vertex_colour(p2[0], p2[1], argument1, argument3);
	}
	draw_primitive_end();



}
