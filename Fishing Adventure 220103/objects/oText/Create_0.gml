oMusic.intensity = 3

x1 = camera_get_view_width(oCamera.cam) / 2// RESOLUTION_W / 2
y1 = camera_get_view_height(oCamera.cam) - 75// RESOLUTION_H -200
x2 = camera_get_view_width(oCamera.cam) / 2//RESOLUTION_W / 2
y2 = camera_get_view_height(oCamera.cam)//RESOLUTION_H

typist = scribble_typist()
typist.in(1,1);


x1Target = 25
x2Target = camera_get_view_width(oCamera.cam) - 25 //RESOLUTION_W -200
	
global.textbox = true
facescale = 0
NPC = oNothing
mouthindex = NPC.mouthmove
mouthmovement = 0
faceindex = 0
textplace = 0
talkingtimer = 5
text = ""
generated = false
tw = 0
done = false

lerpProgress = 0
textProgress = 0


sw = 0