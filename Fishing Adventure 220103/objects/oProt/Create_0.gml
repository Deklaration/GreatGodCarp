depth = 0
h=0
show = false
if room = rStart || room = rTitlescreen || room = rFiske
{
	disable = true
}
else
{
	disable = false
}

// Create arrays to hold positions - Following system
record_count = 94;
pos_x = array_create(record_count, x);
pos_y = array_create(record_count, y);
prev_x = x;
prev_y = y;


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

*/
skincolor = global.color[irandom_range(4,11)]// skincolora[irandom_range(0,15)]
show_debug_message(skincolor)
mask_index = sProt_hitbox


//Utsmyckningar
nose = sNose1_South
clothes = sClothes1_South

//Färger
randomize()
clothescolor = choose(7,9,10,13,15,16,17,18)
nosecolor =  choose(0,8,29)

//Cutscenevariabler
dropdown = 2
spin = 0
spinning = 0


}//disable