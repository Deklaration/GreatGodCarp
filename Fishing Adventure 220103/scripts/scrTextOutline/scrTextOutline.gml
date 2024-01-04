function scrTextOutline(_xvalue, _yvalue, _text, _w, _alpha, _outcolor, _incolor) {
    // Default values for optional arguments
    var _xscale = 1;
    var _yscale = 1;
    var _angle = 0; // Default angle

    // Check if _xscale and _yscale are provided
    if (argument_count > 7) {
        _xscale = argument[7];
    }
    if (argument_count > 8) {
        _yscale = argument[8];
    }
    //if (argument_count > 8) {
    //    _angle = argument[8]; // Set angle if provided
    //}

    draw_text_ext_transformed_color(_xvalue+1, _yvalue, _text, 50, _w, _xscale, _yscale, 0, _outcolor, _outcolor, _outcolor, _outcolor, _alpha);
    draw_text_ext_transformed_color(_xvalue, _yvalue+1, _text, 50, _w, _xscale, _yscale, 0, _outcolor, _outcolor, _outcolor, _outcolor, _alpha);
    draw_text_ext_transformed_color(_xvalue, _yvalue-1, _text, 50, _w, _xscale, _yscale, 0, _outcolor, _outcolor, _outcolor, _outcolor, _alpha);
    draw_text_ext_transformed_color(_xvalue-1, _yvalue, _text, 50, _w, _xscale, _yscale, 0, _outcolor, _outcolor, _outcolor, _outcolor, _alpha);
    draw_text_ext_transformed_color(_xvalue, _yvalue, _text, 50, _w, _xscale, _yscale, 0, _incolor, _incolor, _incolor, _incolor, _alpha);

	//show_debug_message(_xscale)
}
