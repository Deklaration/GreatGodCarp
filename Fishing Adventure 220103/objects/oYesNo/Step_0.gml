if (live_call()) return live_result;
if active = true
{
if keyboard_check_pressed(global.key_left)
	{
	yes = true
	}
if keyboard_check_pressed(global.key_right)
	{
	yes = false
	}
if keyboard_check_pressed(global.key_a) 
	{
	otherObject.yes = yes
	instance_destroy(self)
	global.cutscene = false
	global.key_b = b_button
	}
}	
if keyboard_check_pressed(global.key_a)
{
yset = ytarget;
alpha = 1;
}
	if yset > ytarget
	{
		yset -=2
		alpha +=0.3
	}
	else
	{
		active = true
	}
	
show_debug_message(object_get_name(otherObject))