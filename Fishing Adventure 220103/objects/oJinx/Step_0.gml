if (live_call()) return live_result;
depth =-y;

scrTalkToNPC()
if x != 745 && room = rDarkAlley
{
if distance_to_object(oProt) < 40
{
	if !audio_is_playing(soGhostSigh)
	{
		audio_play_sound(soGhostSigh,1,false,0.3,0,random_range(0.8,1.1))
	}
	image_alpha -=0.1
}
if image_alpha <0
{
	instance_destroy(self)
}
}
else if talking = true
{
	vanish = true
}

if vanish = true && talking = false
{
	if !audio_is_playing(soGhostSigh)
	{
		audio_play_sound(soGhostSigh,1,false,0.3,0,random_range(0.8,1.1))
	}
	image_alpha -=0.1

if image_alpha <0
{
	instance_destroy(self)
}
}

if room = rClearing
{
	dialog[0] = "You found it... Look at the stones."
	dialog[1] = "They must be the foundation stones of a house, though I could be wrong."
	dialog[2] = "Who lived here? Nobody can say."
	dialog[3] = "The names are somewhere in an archive that no one ever opens. The oral tradition is dead, and with it the memories."
	dialog[4] = "Record and forget."
	dialog[5] = "The cottage hums with voices, it's the center of the world. But the inhabitants die or move away, the record comes to an end."
	dialog[6] = "Abandoned for many years. And the cottage becomes a sphinx. At last, everything's gone except the anchor and stones."
	dialog[7] = "The anchor is not only chained to a tree, but to the present day. The key might still be somewhere around here."
	dialog[8] = "Just make sure that you know what you're taking."
}