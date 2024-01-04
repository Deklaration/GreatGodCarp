if !instance_exists(oPull)
{
	instance_destroy(id)
}
else
{
	if instance_exists(oBete)
	{
		x = sine_wave(current_time / 1000, oBete.baitpower, 18,oPull.x) //Den här ska förändras baserat på fisken
	}
y = oPull.y
}
