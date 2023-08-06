/// @description dyliquid_set_speed(speed)
/// @param speed
function dyliquid_set_speed(argument0) {

	/*
	Sets the auto-wave speed.
	*/

	dy_speed = clamp(argument0, -32, 32);


}
