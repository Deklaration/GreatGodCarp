
/// @description Update Sprite Index
if(dpad_dir != no_direction)
{
  image_speed = 0.5;
  switch(round_n(dpad_dir,45))
  {
    case 180: sprite_index = sProt_West; break; 
    case 225: ; sprite_index = sProt_SouthWest; break;
    case 135: xscale = -1; sprite_index = sProt_NorthEast; break;
    case 360: 
    case 0:   sprite_index = sProt_East; break; 
    case 315: sprite_index = sProt_SouthEast; break;
    case 45:  sprite_index = sProt_NorthEast; break;
    case 90:  sprite_index = sProt_North; break;
    case 270: sprite_index = sProt_South; break;
  }
}
else
{  
  image_speed = 0;
  image_index = 0; //or whatever frame has both feet on the ground.
}

