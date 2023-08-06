angle = image_angle
global.angle = angle / 15
if spin = true && stop = false
{
	image_angle += 7
time -=1
}

if time < 0
{
	stopready = true

}


if image_angle > 359
{
	image_angle = 0 
}

if draw = false
{
	instance_destroy(self)
	instance_destroy(oArrow)
}

if keyboard_check_pressed(global.key_a)
{
	

if stopready = true
{

	stop = true
 draw = false
}
}