global.findCoalAndDriftwood = false
global.gotSign = true
startX = 100
startY = 100
handX = 100
handY = 100
linex[0] = -50
liney[0] = -50
linexall[0] = -50
lineyall[0] = -50
cam_x = camera_get_view_x(oCamera.cam);
cam_y = camera_get_view_y(oCamera.cam);
driftwood_surface = surface_create(480,270)//sprite_get_width(sDriftwood), sprite_get_height(sDriftwood));
show_debug_message("LIVE FROM DRAW")
global.cutscene = true
signSpeed = 0
unique_positions_count = 0;
real_handX = handX + cam_x;
real_handY = handY + cam_y;

poly_x = [270,284,284,304,304,396,396,430,430,473,473,521,521,585,585,669,669,697,697,704,704,697,697,676,676,599,599,528,528,354,354,319,319,291,291,277,277,270,270];
poly_y = [356,356,349,349,341,341,349,349,356,356,363,363,370,370,363,363,356,356,363,363,440,440,454,454,461,461,467,467,475,475,468,468,461,461,454,454,447,447,356];
for (var i = 0; i < array_length(poly_x); ++i) {
    poly_x[i] -= 247;
    poly_y[i] -= 270;
}

//poly_x = [270,284,284,304,304,396,396,430,430,473,473,521,521,585,585,669,669,697,697,704,704,697,697,676,676,599,599,528,528,354,354,319,319,291,291,277,277,270,270];
//poly_y = [356,356,349,349,341,341,349,349,356,356,363,363,370,370,363,363,356,356,363,363,440,440,454,454,461,461,467,467,475,475,468,468,461,461,454,454,447,447,356];
