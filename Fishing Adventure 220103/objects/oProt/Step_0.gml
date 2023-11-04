if (live_call()) return live_result;
h +=1

//show_debug_message(x)
if disable = false
{
	
//following system
// Check if the player has moved
if (x != prev_x || y != prev_y)
{
    // Shift the array by one to make room for the new position
    for (var i = record_count - 1; i > 0; i--)
    {
        pos_x[i] = pos_x[i - 1];
        pos_y[i] = pos_y[i - 1];
    }
    
    // Store the new position
    pos_x[0] = x;
    pos_y[0] = y;
    
    // Store current position for next step's comparison
    prev_x = x;
    prev_y = y;
}




//show_debug_message(global.lastroom)
//Kan inte röra sig om någon pratar
if global.textbox = false && global.paused = false && global.cutscene = false && global.midTransition = false
{
//show_debug_message("RÖR SIG " + string(h))
/// @description Movement
var _dpad_h = gamepad_button_check(0,gp_padr) - gamepad_button_check(0,gp_padl);
var _dpad_v = gamepad_button_check(0,gp_padd) - gamepad_button_check(0,gp_padu);
var _dpad_dist = point_distance(0,0,_dpad_h,_dpad_v);

var _arrows_h = keyboard_check(global.key_right) - keyboard_check(global.key_left); 
var _arrows_v = keyboard_check(global.key_down) - keyboard_check(global.key_up); 
var _arrows_dist = point_distance(0,0,_arrows_h,_arrows_v);

//Check analog stick
var _axis_h = gamepad_axis_value(0,gp_axislh);
var _axis_v = gamepad_axis_value(0,gp_axislv);
var _axis_dist = point_distance(0,0,_axis_h,_axis_v);


if !keyboard_check(global.key_down) && 
!keyboard_check(global.key_right) && 
!keyboard_check(global.key_left) && 
!keyboard_check(global.key_up)
{
self.y = round(self.y)
self.x = round(self.x)
}


movement_percent = 0;
input_h = 0;
input_v = 0;

if(_arrows_dist > 0)
{
  movement_percent = 1;
  control_mode = mode_keyboard;
  input_h = _arrows_h;
  input_v = _arrows_v;
}
else if(_dpad_dist > 0)
{
  movement_percent = 1;
  control_mode = mode_dpad;
  input_h = _dpad_h;
  input_v = _dpad_v;
}
else if(_axis_dist > analog_deadzone)
{
  movement_percent = min(_axis_dist,1);
  control_mode = mode_analog;
  input_h = _axis_h;
  input_v = _axis_v;
}


//Skipping. 

//////////////

if keyboard_check_pressed(vk_shift) && global.guineapig = false
{
	if save_sprite = 0
	{
	save_dir = dpad_dir;
	save_sprite = sprite_index
	}
	
	if save_sprite = sProt_North
	{
		sprite_index = sProt_North_Skip
	}
	if save_sprite = sProt_NorthEast
	{
		sprite_index = sProt_NorthEast_Skip
	}
	if save_sprite = sProt_South
	{
		sprite_index = sProt_South_Skip
	}
	if save_sprite = sProt_SouthWest
	{
		sprite_index = sProt_SouthWest_Skip
	}
	if save_sprite = sProt_West
	{
		sprite_index = sProt_West_Skip
	}
	skipping = true
	max_speed = 3
}




if skippingtimer < 0
{
	max_speed = 1.75
	sprite_index = save_sprite
	save_sprite = 0
	skipping = false
	skippingtimer = start_skippingtimer
}


//////////////////////


var _hspd = velocity[0];
var _vspd = velocity[1];


if(input_h != 0)
  var _break = 0;

_hspd = sign(input_h) != sign(_hspd) 
        ? approach(_hspd,0,fric) 
        : _hspd;
_hspd += accel * input_h;

_vspd = sign(input_v) != sign(_vspd) 
        ? approach(_vspd,0,fric) 
        : _vspd;
_vspd += accel * input_v;


velocity = vec2(_hspd,_vspd);
velocity = vec2_truncate(velocity,max_speed);
dpad_dir = vec2_length(velocity) > 0 
           ? vec2_dir(velocity) 
           : no_direction;

event_user(ev_set_sprite);

if skipping = true
{
	dpad_dir = save_dir
	velocity = vec2(_hspd,_vspd)
}

if(scrMoveCol(dpad_dir,vec2_length(velocity),oWall))
{
  if(place_meeting(x+velocity[0],y,oWall)) velocity[0] = 0;
  if(place_meeting(x,y+velocity[1],oWall)) velocity[1] = 0;
}

}

}

if keyboard_check(vk_alt)
{
	show = true
}
if show = true
{
	show_debug_message(global.ybeforefish)
}

if global.cutscene = true
{
	velocity[0] = 0
	velocity[1] = 0
}