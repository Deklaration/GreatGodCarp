if (mouse_check_button_pressed(mb_left)) {
    instance_create_layer(mouse_x, mouse_y, "Instances", o_rock);
}

if (mouse_check_button_pressed(mb_middle)) {
    instance_create_layer(mouse_x, mouse_y, "Instances", o_ducky);
}

if (mouse_check_button_pressed(mb_right)) {
    with(o_liquid_parent) instance_destroy();
    with(o_rock) instance_destroy();
    with(o_ducky) instance_destroy();
    x1 = mouse_x;
    y1 = mouse_y;
}

if (mouse_check_button(mb_right)) {
    x2 = mouse_x;
    y2 = mouse_y;
}

if (mouse_check_button_released(mb_right)) {
    if (type = 0) {
        with(instance_create_layer(min(x1, x2), min(y1, y2), "Instances", o_water)) {
            dyliquid_set_bounds(min(other.x1, other.x2), min(other.y1, other.y2), max(other.x1, other.x2), max(other.y1, other.y2));
        }
    } else {
        with(instance_create_layer(min(x1, x2), min(y1, y2), "Instances", o_lava)) {
            dyliquid_set_bounds(min(other.x1, other.x2), min(other.y1, other.y2), max(other.x1, other.x2), max(other.y1, other.y2));
        }
    }
    x1 = 0;
    y1 = 0;
    x2 = 0;
    y2 = 0;
}