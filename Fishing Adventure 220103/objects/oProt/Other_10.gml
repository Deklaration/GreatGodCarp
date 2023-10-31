if disable = false
{
/// @description Update Sprite Index
//if (live_call()) return live_result;
if skipping = false
{
if(dpad_dir != no_direction) && global.midTransition = false
{
  image_speed = 0.5;
  xscale=1;
  switch(round_n(dpad_dir,45))
  {
    case 180: xscale = 1; sprite_index = sProt_West; nose = global.nosewest; clothes = global.clotheswest; break; 
    case 225: xscale = 1; sprite_index = sProt_SouthWest; nose = global.nosesouthwest; clothes = global.clothessouthwest; break;
    case 135: xscale = 1; sprite_index = sProt_NorthEast; nose = sNothing; clothes = global.clothesnorthwest; break;
    case 360: 
    case 0:   xscale = -1; sprite_index = sProt_West;  nose = global.nosewest; clothes = global.clotheswest; break; 
    case 315: xscale = -1; sprite_index = sProt_SouthWest;  nose = global.nosesouthwest; clothes = global.clothessouthwest; break;
    case 45:  xscale = -1; sprite_index = sProt_NorthEast;  nose = sNothing; clothes = global.clothesnorthwest; break;
    case 90:  xscale = 1; sprite_index = sProt_North;  nose = sNothing; clothes = global.clothesnorth; break;
    case 270: xscale = 1; sprite_index = sProt_South; nose = global.nosesouth; clothes = global.clothessouth; break;
  }
}
else
{  

	  image_speed = 0;
	  image_index = 0; //or whatever frame has both feet on the ground.
}
}
////////////////////////


if skipping = true
{

if(dpad_dir != no_direction) && global.midTransition = false
{
  image_speed = 0.5;
  xscale=1;
  switch(round_n(save_dir,45))
  {
    case 180: xscale = 1; sprite_index = sProt_West; nose = global.nosewest; clothes = global.clotheswest; break; 
    case 225: xscale = 1; sprite_index = sProt_SouthWest; nose = global.nosesouthwest; clothes = global.clothessouthwest; break;
    case 135: xscale = 1; sprite_index = sProt_NorthEast; nose = sNothing; clothes = global.clothesnorthwest; break;
    case 360: 
    case 0:   xscale = -1; sprite_index = sProt_West;  nose = global.nosewest; clothes = global.clotheswest; break; 
    case 315: xscale = -1; sprite_index = sProt_SouthWest;  nose = global.nosesouthwest; clothes = global.clothessouthwest; break;
    case 45:  xscale = -1; sprite_index = sProt_NorthEast;  nose = sNothing; clothes = global.clothesnorthwest;; break;
    case 90:  xscale = 1; sprite_index = sProt_North;  nose = sNothing; clothes = global.clothesnorth; break;
    case 270: xscale = 1; sprite_index = sProt_South; nose = global.nosesouth; clothes = global.clothessouth; break;
  }
}
else
{  

	  image_speed = 0;
	  image_index = 0; //or whatever frame has both feet on the ground.
}
}

}