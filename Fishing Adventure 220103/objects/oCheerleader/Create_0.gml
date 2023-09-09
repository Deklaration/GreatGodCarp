image_alpha = 1
image_speed = 0.1
talking = false
createtext = false
mouth = sRunePortraitMouth
face = sRunePortrait
pitch = 0.7
image_xscale = 1
image_yscale = 1

if instance_exists(oMrDaugava)
{
	if x > oMrDaugava.x
	{
		image_xscale = -1
	}
}

dialog[0] = "F - I - S - H!! GO FISH! GO FISH!"