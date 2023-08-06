time +=10
if !instance_exists(oPull)
{
	instance_destroy(self)
}
else
{
	if instance_exists(oBete)
	{
		x = sine_wave(time / 1000, oBete.fiskid.baitmovespeed, oBete.fiskid.baitmovedistance, oPull.x)
	}
//x = sine_wave(current_time * oBete.fiskid.fighttimer, 2, 30,oPull.x)
y = oPull.y
//oPull.x + 
}

if hit = true
{
	
	hit = false
}
