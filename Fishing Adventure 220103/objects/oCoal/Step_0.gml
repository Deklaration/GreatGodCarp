
if global.findCoalAndDriftwood = true
{
	if place_meeting(x,y,oProt) && keyboard_check_pressed(global.key_a) && scrInventorySearch(oKeyInventory,enumItem.Coal) = -1
	{
		oProt.image_index = 0
		oProt.image_speed = 0
		instance_create_depth(x,y,0,oGettingItems,{item : enumItem.Coal,parent : id})
	
	
	
	if scrInventorySearch(oKeyInventory,enumItem.Driftwood) > -1
	{
		instance_create_depth(x,y,0,oDrawSign)
	}
	
	}
}


