if (live_call()) return live_result;

for (var i = 0; i < array_length(tankGuide); ++i)
{
	
    // Get the object instance from the array
    var target = tankGuide[i];

    // Skip if the object does not exist
    if (!instance_exists(target))
    {
        continue;
    }

    // Calculate the angle to point the arrow
    var angle = point_direction(oProt.x, oProt.y, target.x, target.y);

    // Calculate the position to draw the arrow around the main character
    var distance = 36; // Distance from the center of the main character to draw the arrow
    var arrow_x = lengthdir_x(distance, angle);
    var arrow_y = lengthdir_y(distance, angle);

	var dx = target.x - oProt.x;
    var dy = target.y - oProt.y;
    var distanceToTank = sqrt(dx * dx + dy * dy);
	
	var alpha = 1
	
	if (distanceToTank >= 100) 
{
    alpha = 1;
} 
else if (distanceToTank <= 50) 
{
    alpha = 0;
} 
else 
{
    // Linearly interpolate alpha value between minDistance and maxDistance
    alpha = (distanceToTank - 50) / (100 - 50);
}
	alpha = clamp(alpha,0,1);

    // Draw the arrow
    draw_sprite_ext(sTinyArrow, 1, oProt.x + arrow_x, oProt.y + arrow_y, 1, 1, angle, global.color[i], alpha);
    draw_sprite_ext(sTinyArrow, 0, oProt.x + arrow_x, oProt.y + arrow_y, 1, 1, angle, c_white, alpha);
	
}