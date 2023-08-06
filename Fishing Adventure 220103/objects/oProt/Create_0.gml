

if room = rStart || room = rTitlescreen || room = rFiske
{
	disable = true
}
else
{
	disable = false
}

/// @description
#macro ev_set_sprite 0
#macro mode_keyboard 0
#macro mode_dpad 1
#macro mode_analog 2
skipping = false

if disable = false
{

oCamera.follow = self

image_speed = 0 

analog_deadzone = .25;
movement_percent = 0;

max_speed = 1.75;
xscale = 1;
input_h = 0;
input_v = 0;

//Fotsteg
left = -5
right = +5

//Momentum Physics
dpad_dir = no_direction;
velocity = vec2_zero();
fric = 0.2;
accel = 0.2;

//Skipping
start_skippingtimer = 25
skippingtimer = start_skippingtimer;
skipping = false;
save_sprite = 0;
save_dir = 0;
/*
//Colors
skincolora[0] = make_color_rgb(45,34,30)
skincolora[1] = make_color_rgb(60,46,40)
skincolora[2] = make_color_rgb(75,57,50)
skincolora[3] = make_color_rgb(90,69,60)
skincolora[4] = make_color_rgb(105,80,70)
skincolora[5] = make_color_rgb(120,92,80)
skincolora[6] = make_color_rgb(135,103,90)
skincolora[7] = make_color_rgb(150,114,100)
skincolora[8] = make_color_rgb(165,126,110)
skincolora[9] = make_color_rgb(180,138,120)
skincolora[10] = make_color_rgb(195,149,130)
skincolora[11] = make_color_rgb(210,161,140)
skincolora[12] = make_color_rgb(225,172,150)
skincolora[13] = make_color_rgb(240,184,160)
skincolora[14] = make_color_rgb(255,195,170)
skincolora[15] = make_color_rgb(255,206,180)
*/
skincolor = global.color[irandom_range(4,11)]// skincolora[irandom_range(0,15)]

mask_index = sProt_hitbox

//Utsmyckningar
nose = sNose1_South
clothes = sClothes1_South

//Färger
randomize()
clothescolor = irandom_range(0,22)
nosecolor = irandom_range(0,22)

//Cutscenevariabler
dropdown = 2
spin = 0
spinning = 0


}//disable