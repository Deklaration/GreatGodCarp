function scrPointInPolygon(px, py, poly_x, poly_y) {
    var inside = false;
    var j = array_length(poly_x) - 1;

    for (var i = 0; i < array_length(poly_x); i++) {
        var condition1 = (poly_y[i] > py) != (poly_y[j] > py);
        var condition2 = px < (poly_x[j] - poly_x[i]) * (py - poly_y[i]) / (poly_y[j] - poly_y[i]) + poly_x[i];
        
        show_debug_message("Checking: " + string(condition1) + ", " + string(condition2));
        
        if (condition1 && condition2) {
            inside = !inside;
            show_debug_message("Inside toggled: " + string(inside));
        }
        j = i;
    }

    return inside;
}

function convertRoomToView(poly_room_x, poly_room_y, cam_x, cam_y) {
    var poly_view_x = [];
    var poly_view_y = [];
    
    var count = array_length(poly_room_x);
    for (var i = 0; i < count; ++i) {
        poly_view_x[i] = poly_room_x[i] - cam_x;
        poly_view_y[i] = poly_room_y[i] - cam_y;
    }

    return array_create(2, 0);
}
