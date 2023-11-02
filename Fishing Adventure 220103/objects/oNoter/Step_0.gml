// Update the wave offset
wave_offset += 0.1;

// Calculate the wavy movement
var wave = amplitude * sin(wave_offset * frequency);

// Update position
x += speed * cos(degtorad(direction)) + wave * cos(degtorad(direction + 90));
y += speed * sin(degtorad(direction)) + wave * sin(degtorad(direction + 90));


depth = oProt.depth -1


if instance_exists(oOphelia)
{
	if oOphelia.doneSinging = true
	{
		instance_destroy(self)
	}
}