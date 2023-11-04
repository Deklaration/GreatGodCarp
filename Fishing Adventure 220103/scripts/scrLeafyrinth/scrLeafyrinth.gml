// MovePlayer script
function MovePlayerOLD(xdir, ydir) {
    if (xdir != 0 || ydir != 0) { // Ensure we're not going straight
        if (!isTransitioning) {
            moveCount += 1;
            isTransitioning = true;

            // Start the fade out
            fadingOut = true;
            fadeAlpha = 0;
        }
    }
}

function MovePlayer(){
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
}

show_debug_message(dir)


        if (!isTransitioning) && move = true {
			global.cutscene = true
            moveCount += 1;
            isTransitioning = true;

            // Start the fade out
            fadingOut = true;
            fadeAlpha = 0;
			move = false
        }

}
