with (oRope) {

if alpha <1 && dontdraw = false
{
draw_line_width_color(oBete.x+1,oBete.y,oProtFishing.fishingpolex,oProtFishing.fishingpoley,1,c_white,c_white)
}
if alpha >= 1
{
	dontdraw = true
}

/// Draw line with knots
// draw lines
for ( var i = 1; i <= knotNum; i++ )
{
    var scale = point_distance(knotX[i], knotY[i], knotX[i-1], knotY[i-1])/lineSpriteWidth;  
    var rot = point_direction(knotX[i], knotY[i], knotX[i-1], knotY[i-1]);
    
    draw_sprite_ext(sLine, 0, knotX[i], knotY[i], scale, 1, rot, -1, alpha );
}

// draw knots
if ( drawKnots )
    for ( var i = 1; i <= knotNum; i++ )
    {
       draw_sprite_ext( sDot, 1, knotX[i], knotY[i],1,1,0,1,alpha );
    }
//draw_sprite( sDot, 0, knotX[0], knotY[0] ); // root knot

}

