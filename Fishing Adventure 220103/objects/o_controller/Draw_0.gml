/// @description  Change properties

if (text = 1 and instance_exists(o_liquid_parent)) {
    var str;
    str = "FPS: " + string(round(fps)) + "\r\n";
    str += "Tension (Q/A): " + string_format(o_liquid_parent.dy_tension, 1, 5) + "\r\n";
    str += "Spread (W/S): " + string_format(o_liquid_parent.dy_spread, 1, 5) + "\r\n";
    str += "Dampening (E/D): " + string_format(o_liquid_parent.dy_dampening, 1, 5) + "\r\n";
    str += "Quality (R/F): " + string(o_liquid_parent.dy_colomns_count) + " springs\r\n";
    str += "Smoothing (T/G): " + string(o_liquid_parent.dy_smoothing) + " passes\r\n";
    str += "Auto-Waves (Y/H): " + string(o_liquid_parent.dy_wave) + "\r\n";
    str += "Auto-Waves Speed (U/J): " + string(o_liquid_parent.dy_speed) + "\r\n";
    str += "Click LMB to drop rocks or MMB to drop duckies\r\n";
    str += "Use RMB to draw water rectangle\r\n";
    str += "Press Shift to switch water/lava\r\n";
    str += "Press Ctrl to switch particles\r\n";
    str += "Press Space to Debug Mode\r\n";
    str += "Press Backspace to reset\r\n";
    str += "Press Enter to switch text drawing";
    
    draw_set_color(col[0]);
    draw_text(5, 5, str);
    
    with(o_liquid_parent) {
        switch(keyboard_key) {
            case (ord("Q")): {      
                dyliquid_set_tension(dy_tension / 0.99);
                break;
            }
            case (ord("A")): {
                dyliquid_set_tension(dy_tension * 0.99);
                break;
            }
            case (ord("W")): {
                dyliquid_set_spread(dy_spread - 0.005);
                break;
            }
            case (ord("S")): {
                dyliquid_set_spread(dy_spread + 0.005);
                break;
            }
            case (ord("E")): {
                dyliquid_set_dampening(dy_dampening / 0.99);
                break;
            }
            case (ord("D")): {
                dyliquid_set_dampening(dy_dampening * 0.99);
                break;
            }
            case (ord("R")): {
                dyliquid_set_quality(min(200, dy_colomns_count + 1), dy_smoothing);
                break;
            }
            case (ord("F")): {
                dyliquid_set_quality(max(10, dy_colomns_count - 1), dy_smoothing);
                break;
            }
            case (ord("Y")): {
                dyliquid_set_wave(dy_wave + 0.1);
                break;
            }
            case (ord("H")): {
                dyliquid_set_wave(dy_wave - 0.1);
                break;
            }
            case (ord("U")): {
                dyliquid_set_speed(dy_speed + 0.1);
                break;
            }
            case (ord("J")): {
                dyliquid_set_speed(dy_speed - 0.1);
                break;
            }
        }
        
        if (keyboard_check_released(ord("T"))) {
            dyliquid_set_quality(dy_colomns_count, min(16, dy_smoothing + 1));
        }
        
        if (keyboard_check_released(ord("G"))) {
            dyliquid_set_quality(dy_colomns_count, max(1, dy_smoothing - 1));
        }
    }
}

draw_set_colour(col[1]);
draw_set_alpha(0.5);
draw_rectangle(x1, y1, x2, y2, 0);
draw_set_alpha(1);
draw_rectangle(x1, y1, x2, y2, 1);

if (debug) {
    with(o_liquid_parent) {
        dyliquid_draw_debug();
    }
}