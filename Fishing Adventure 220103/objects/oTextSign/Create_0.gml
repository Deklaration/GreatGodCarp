x1 = camera_get_view_width(oCamera.cam) / 2// RESOLUTION_W / 2
y1 = camera_get_view_height(oCamera.cam) - 75// RESOLUTION_H -200
x2 = camera_get_view_width(oCamera.cam) / 2//RESOLUTION_W / 2
y2 = camera_get_view_height(oCamera.cam)//RESOLUTION_H



x1Target = 25
x2Target = camera_get_view_width(oCamera.cam) - 25 //RESOLUTION_W -200
	
global.textbox = true
textplace = 0
talkingtimer = 5
text = ""
generated = false


lerpProgress = 0
textProgress = 0


sw = 0