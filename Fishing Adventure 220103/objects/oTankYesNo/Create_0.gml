yescolor = c_white
nocolor = c_green
talkcolor = c_white
val = 1
alpha = 0 
depth = oTextSign.depth +1
fishx = camera_get_view_width(oCamera.cam) + 400
fishalpha = -2 
bobbing_offset = 0;
bobbing_speed = 0.1; // Adjust this for faster or slower bobbing
bobbing_amount = 5; // Adjust this for larger or smaller bobbing motion


x1 = (camera_get_view_width(oCamera.cam) / 2) - 40
x2 = (camera_get_view_width(oCamera.cam) / 2) + 40
y1 = camera_get_view_height(oCamera.cam) - 45//70
y2 = camera_get_view_height(oCamera.cam) - 45//70

y1target = camera_get_view_height(oCamera.cam) - 95

yes = false
global.cutscene = true
depth = -10000
choiceSpeedNo = 0
choiceSpeedYes = 0
alpha = 0
ytarget = 247
active = false
yset = 300
b_button = global.key_b
global.key_b = noone

