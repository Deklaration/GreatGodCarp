if (live_call()) return live_result;

if keyboard_check(vk_space)
{
	uniqueMoveCount = 10
}


if isTransitioning = false
{
if oProt.x<5
{
	move = true
	dir = "left"
}
if oProt.x>room_width-5
{
	move = true
	dir = "right"
}
if oProt.y<5
{
	move = true
	dir = "up"
}
if oProt.y>room_height-5
{
	move = true
	dir = "down"
	if moveCount = 0
	{
		move = false
		global.xbeforefish = global.exitx
		global.ybeforefish = global.exity
		global.directionbeforefish = sProt_North
		scrLastRoom()
	}
}
}

show_debug_message(dir)
show_debug_message(moveCount)


        if (!isTransitioning) && move = true {
			global.cutscene = true
            moveCount += 1;
            isTransitioning = true;
			oProt.image_speed = 0
			oProt.image_index = 0
            // Start the fade out
            fadingOut = true;
            fadeAlpha = 0;
			move = false
        }




// Handle the fade out process
if (fadingOut) {
    fadeAlpha += transitionSpeed;
    if (fadeAlpha >= 1.5) {
        // Fully faded to black, now reposition the player
        fadeAlpha = 1;
        fadingOut = false;

        // Reposition the player
		
		if dir = "left"
		{
			array_push(movement,dir)
			   oProt.x = room_width - 25
			   	if prevdir != dir
			   {
				   prevdir = dir
				   uniqueMoveCount +=1
			   }
			   else
			   {
					uniqueMoveCount = 0   
			   }
		}
		if dir = "right"
		{
			array_push(movement,dir)
			   oProt.x =  25
			   	if prevdir != dir
			   {
				   prevdir = dir
				   uniqueMoveCount +=1
			   }
			   else
			   {
					uniqueMoveCount = 0   
			   }
		}
		if dir = "up"
		{
			array_push(movement,dir)
			   oProt.y = room_height - 25
			   	if prevdir != dir
			   {
				   prevdir = dir
				   uniqueMoveCount +=1
			   }
			   else
			   {
					uniqueMoveCount = 0   
			   }
		}
		if dir = "down"
		{
			array_push(movement,dir)
			   oProt.y = 25
			   	if prevdir != dir
			   {
				   prevdir = dir
				   uniqueMoveCount +=1
			   }
			   else
			   {
					uniqueMoveCount = 0   
			   }
		}
		
		
		


        // Start fading in
        fadingIn = true;
        
        // If the player has moved 10 times, go to the new room
        if (uniqueMoveCount >= 10) && dir = "up" {
			clearing = true
			global.directionbeforefish = sProt_North
			global.lastroom = rDarkAlley
			global.exitx = 704
			global.exity = 1210
			global.cutscene = false
			scrTransitionsStart(rClearing,sqFadeOut,sqFadeIn)

        }
		dir = noone
    }
}
show_debug_message(uniqueMoveCount)
// Handle the fade in process
if (fadingIn) && clearing = false {
    fadeAlpha -= transitionSpeed;
	global.cutscene = false
    if (fadeAlpha <= 0) {
        // Finished fading in from black
        fadeAlpha = 0;
        fadingIn = false;
        isTransitioning = false;
        // Reset directions after transition
        xdir = 0;
        ydir = 0;
		
    }
}

if room != rForestMaze
{
	instance_destroy(id)
}