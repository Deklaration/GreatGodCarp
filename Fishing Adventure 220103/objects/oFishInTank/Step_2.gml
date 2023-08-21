if x < xold
{
    image_xscale = -1;  // Facing left
}
else if x > xold
{
    image_xscale = 1;   // Facing right
}
show_debug_message(xold)
show_debug_message(x)