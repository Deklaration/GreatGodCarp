if global.paused = true
{
	hspeed = 0
	vspeed = 0
}

if global.fishcaught = true
{
	instance_destroy(oHitBete)
	instance_destroy(oRope)
	instance_destroy(self)
}