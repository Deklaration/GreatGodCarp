if (live_call()) return live_result;

//image_speed = 0.05

//show_debug_message(points)
acceptable_range = 20
// Step Event
if (keyboard_check_pressed(global.key_a)) && goAgain < 0 {
    var distance = point_distance(oBB_dot.x, oBB_dot.y, oBB_circle.x, oBB_circle.y);
    var point = max(0, (oBB_circle.sprite_width/2 - distance)); // Assuming the origin is centered
    // You might want to normalize this score, possibly into a percentage
    // If distance is 0 (perfect center), this should give maximum points
	show_debug_message(distance)
	goAgain = 75
	//image_index = 1 - image_index
	cheer +=1
    // Add to global score
    points += point;
image_speed = 0.2
    // You might want to add some feedback for the player
    if (distance < 6) {
       show_debug_message("PERFECT")
	   sprite_index = sBB_prot_perfect
	   color = global.color[12]
	   text = "PERFECT!"
	   freeze = true
	   oBB_dot.moveSpeed +=2
	   //if audio = false
	   //{
		//   audio_play_sound(soOhHellYeah,1,false)
		// audio = true
	   //}
    } else if (distance < acceptable_range) {
		freeze = true
		sprite_index = sBB_prot_ok
		color = global.color[10]
		text = "OKAY!"
		oBB_dot.moveSpeed +=1
        show_debug_message("OKAY")
    } else {
		freeze = true
		text = "miss!"
		color = global.color[26]
		points -=2.5
		if oBB_dot.moveSpeed > 2.5
		{
		oBB_dot.moveSpeed -=2
		}
		sprite_index = sBB_prot_miss2
        show_debug_message("miss")
    }
}
goAgain-=d(1)

show_debug_message(oBB_dot.moveSpeed)
if freeze = true
{
	if oBB_boat.done = false
	{
	freezeTimer -=d(1)
	}
	
	if freezeTimer <0
	{
		image_speed = 0.05
		sprite_index = sBB_prot
		freeze = false
		freezeTimer = 60
		//audio = false
		text = ""
	}
}

show_debug_message(points)

if oBB_boat.done = true
{
	
image_index = sBB_prot_perfect
image_speed = 0.3
freeze = true
}