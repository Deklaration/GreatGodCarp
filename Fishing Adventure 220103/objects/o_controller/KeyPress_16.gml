type = !type;

with (o_liquid_parent) {
    other.xx1 = dy_x[0];
    other.yy1 = dy_y[0];
    other.xx2 = dy_x[1];
    other.yy2 = dy_y[1];
    instance_destroy();
}

if (type = 0) {
    with(instance_create_layer(xx1, yy1, "Instances", o_water)) {
        dyliquid_set_bounds(other.xx1, other.yy1, other.xx2, other.yy2);
    }
} else {
    with(instance_create_layer(xx1, yy1, "Instances", o_lava)) {
        dyliquid_set_bounds(other.xx1, other.yy1, other.xx2, other.yy2);
    }
}