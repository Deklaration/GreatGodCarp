// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrWallPusher(){

// Assuming the character object is named 'oCharacter'

// Check if the character is colliding with oWall
if (place_meeting(x, y, oWall)) {
    var closest_dist = -1;
    var closest_edge_x = x;
    var closest_edge_y = y;

    // Check for the closest edge on the four directions
    for (var dir = 0; dir < 360; dir += 90) {
        var edge_x = x;
        var edge_y = y;
        while (place_meeting(edge_x, edge_y, oWall) && !place_meeting(edge_x, edge_y, oScreenmove_parent) && edge_x >= 0 && edge_x <= room_width && edge_y >= 0 && edge_y <= room_height) {
            edge_x += lengthdir_x(1, dir);
            edge_y += lengthdir_y(1, dir);
        }

        // Ensure edge coordinates are within room boundaries and not overlapping with Screenmove
        if (!place_meeting(edge_x, edge_y, oScreenmove_parent)) {
            edge_x = clamp(edge_x, 0, room_width);
            edge_y = clamp(edge_y, 0, room_height);

            var dist = point_distance(x, y, edge_x, edge_y);
            if (closest_dist == -1 || dist < closest_dist) {
                closest_dist = dist;
                closest_edge_x = edge_x;
                closest_edge_y = edge_y;
            }
        }
    }

    // Move character to the closest edge within room boundaries and not overlapping with Screenmove
    if (!place_meeting(closest_edge_x, closest_edge_y, oScreenmove_parent)) {
        x = clamp(closest_edge_x, 0, room_width);
        y = clamp(closest_edge_y, 0, room_height);
    }
}

}