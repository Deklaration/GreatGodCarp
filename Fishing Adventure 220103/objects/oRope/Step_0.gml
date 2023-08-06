/// @description  Satisfy Constraints

if oBete.water = true
{
	alpha =1
}

repeat constraintsIterations
{
    // Springs - connections between 2 knots
    for ( var i = 0; i < knotNum; i++ )
    {
        var diff = point_distance(knotX[i], knotY[i], knotX[i+1], knotY[i+1]);
        var diffD  = point_direction(knotX[i], knotY[i], knotX[i+1], knotY[i+1]);
        
        diff *= knotDist*knotDist/(diff*diff+knotDist*knotDist)-0.5;
        knotX[i] -= lengthdir_x(diff, diffD);
        knotX[i+1] += lengthdir_x(diff, diffD); 
        knotY[i] -= lengthdir_y(diff, diffD);
        knotY[i+1] += lengthdir_y(diff, diffD);   
    }    

    // pin root knot to screen
    knotX[0] = oProtFishing.fishingpolex;
    knotY[0] = oProtFishing.fishingpoley;
     

    // move last knot to mouse
    knotX[knotNum] = oBete.x+1// mouse_x;
    knotY[knotNum] = oBete.y//mouse_y;
    knotXprev[knotNum] = oBete.x+1 //mouse_x;
    knotYprev[knotNum] = oBete.y //mouse_y;

	
	if global.fishbait = true
	{
		knotNum = 1
	}
	if global.fishbait = false && global.fishcaught = false && fiskdrar = false
	{
		knotNum = 15
	}
	

	//if fiskdrar = true
	//{
	//knotY[1] = clamp(knotY[1],knotY[0],knotY[2])
	//knotX[1] = clamp(knotX[1],knotX[0],knotX[2])
	//}
	


    // collision
    // if current knot position meets collider then move it back to previous position
  /*  for ( var i = 0; i <= knotNum; i++ )
    {        
        var velX = knotX[i]-knotXprev[i];
        var velY = knotY[i]-knotYprev[i];
        if ( position_meeting(knotX[i]+velX, knotY[i], oWater) )
            knotX[i] = knotXprev[i];
        if ( position_meeting(knotX[i], knotY[i]+velY, oWater) )
            knotY[i] = knotYprev[i];
    }
*/
}
	//show_debug_message(knotY[1])
	show_debug_message(knotNum)
	//show_debug_message(knotX[1])
