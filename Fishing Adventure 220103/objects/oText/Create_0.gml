oMusic.intensity = 3
talkingSound[0] = soTalking


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
mouthindex_sad = 0
mouthmovement = 0
faceindex = 0
faceindex_angry = 0
textplace = 0
talkingtimer = 5
text = ""
generated = false
tw = 0
done = false
gettinggear = false
gotgear = false

lerpProgress = 0
textProgress = 0


sw = 0




//Getting gear
scale = 0;
rot = 0;
alpha = 2;
alpha2 = 0; 
imagespeed = 0;
toptexty = -30;
bottomtexty = 300;
