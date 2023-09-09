//show_debug_message(string(global.fisharray[fish,4]))
//show_debug_message(scrInventorySearch(oInventory,fish))
if (live_call()) return live_result;

timer -=1

if timer < 0
{
	global.setFishInTank = true
}

if place_meeting(x,y+20,oProt) && keyboard_check_pressed(global.key_a) && oProt.sprite_index = sProt_North && global.textbox = false && global.paused = false && !instance_exists(oFishGuide)
	{
		if scrInventorySearch(oInventory,fish-1) !=-1 //&& scrInventorySearch(oInventory,fish) !=0
		{	
				if place_meeting(x,y+20,oProt) && keyboard_check_pressed(global.key_a) && oProt.sprite_index = sProt_North
				{
					talking = true
					global.textbox = true
					oProt.image_index = 0
				}
	
				if talking = true && createtext = false
				{
					scrNewTextboxSign(string("Place a ") + string(global.fisharray[fish,4]) + string(" in the tank?"),0)
					instance_create_depth(x,y,-1,oTankChoice,{tank : id})
					createtext = true
				}

				if !instance_exists(oText) && talking = true 
				{
					talking = false
					createtext = false
				}
		}
	}
	
	
	
	//Guidar en pil rätt, om man har en fisk
if scrInventorySearch(oInventory,fish-1) !=-1 && global.showAquaVistaLight = true && stop = false && global.fishInTank[fish] = 0
		{	
			for (var i = 0; i < array_length(oAquaVistaController.tankGuide); ++i)
			{
			    if (oAquaVistaController.tankGuide[i] == id)
			    {
					stop = true
			    }
			}
			if stop = false
			{
				for (var i = 0; i < array_length(oAquaVistaController.tankGuide); ++i)
					{
					   if (oAquaVistaController.tankGuide[i] == -1)
					    {
						array_delete(oAquaVistaController.tankGuide,i,1)
						}
					}
				array_push(oAquaVistaController.tankGuide,id)
				stop = true
			}
		}