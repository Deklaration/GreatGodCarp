/// @description Sätt upp kameran

cam = view_camera[0]; //Viewporten jag använder
follow = oNothing//oProt
view_width_half = camera_get_view_width(cam) / 2;
view_height_half = camera_get_view_height(cam) / 2;
xTo = xstart;
yTo = ystart;
followprot = false

shakelenght = 0;
shakemagnitude = 0;
shakeremain = 0