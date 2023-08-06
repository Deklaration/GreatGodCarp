/// @description  Init rope
gravX = 0;
gravY = 3000//2300;
ropeLen = 5//500;
knotNum = 15//12;
drawKnots = false;
lineSpriteWidth = 1//28-4; // this 4 is here because i have X origin moved a little
alpha = 0
dontdraw = false
fiskdrar = false

/* more iterations means better precision 
   and stronger connections between knots but it's slower to compute
*/
constraintsIterations = 5; 

// build initial state of rope
knotDist =  ropeLen/knotNum;
for ( var i = 0; i <= knotNum; i++ )
{
    // position of knot
    knotX[i] = x+random_range(-1, 1);
    knotY[i] = y+(knotDist*i*0.25);
    // previous position
    knotXprev[i] = knotX[i];
    knotYprev[i] = knotY[i];
}
