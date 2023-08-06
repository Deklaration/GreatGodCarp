//depth = oProt.depth +1
timer -=1

if timer < 0
{
	image_alpha -=0.05
}

if timer < -60
{
	instance_destroy(id)
}