if (live_call()) return live_result;
antalSave = antal
player_distance = 120

if (point_distance(x, y, oProt.x, oProt.y) < player_distance) {

	image_index = 1
	if (point_distance(x, y, oProt.x, oProt.y) < player_distance /2) 
	{
	image_index = 0
    }
}
else
{
	image_index = 2
}