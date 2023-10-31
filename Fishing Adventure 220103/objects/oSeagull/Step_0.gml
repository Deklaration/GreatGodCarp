if (live_call()) return live_result;
player_distance = 60; // Distance to fly away from oProt
flying_speed = 1.2;
depth =-y



// Check distance to player
if scrStackSearch(oInventory,enumFish.Weedsnout) < 6
{
    if (point_distance(x, y, oProt.x, oProt.y) < player_distance) {
        state = "fly_away";
        dir = point_direction(oProt.x, oProt.y, x, y);
    }
}
// Handle states
switch (state) {
    case "idle":
		startx = x
		starty = y
        sprite_index = sSeagullPeck;
        image_speed = 0;
        image_index = 0;
        
        // Randomly peck the ground
        if (peck_timer <= 0) {
            peck_timer = random_range(30, peck_interval);
			image_index = 1
            state = "peck";
        } else {
            peck_timer--;
        }
    break;
    
    case "peck":
        sprite_index = sSeagullPeck;	
        image_speed = 0.25;
        if (image_index == 0) {
            state = "idle";
        }
    break;
    
    
    case "fly":
        sprite_index = sSeagullFly;
        image_speed = 0.5;
		depth = -1000
        x += lengthdir_x(flying_speed * 1.2, dir);
        y += lengthdir_y(flying_speed * 1.2, dir);
    break;
    
    case "fly_away":
        sprite_index = sSeagullFlyAway;
        image_speed = 0.5;
        depth = -1000
        // Always fly upwards, but vary horizontally based on player position
        x += lengthdir_x(flying_speed * 1.6, dir);
        y += lengthdir_y(flying_speed * 1.6, 90); // 90 degrees is straight up
        
        // Flip sprite direction based on where the seagull is flying
        image_xscale = sign(oProt.x - x);
        
        // Check if far enough from the starting point
        if (point_distance(x, y, startx, starty) >= player_distance * 1.5) {
            state = "fly"; // Go back to normal flying
        }

   
    break;
}