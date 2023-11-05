if (live_call()) return live_result;
depth = -y

scrTalkToObject()

if talking = true && global.gotAnchor = false && global.gotKey = true
{
	scrInventoryRemove(oKeyInventory,enumItem.Key)
	instance_create_depth(x,y,0,oGettingItems,{item : enumItem.Anchor,parent : noone})
	global.gotAnchor = true
}


if global.gotAnchor = true
	{
		image_index = 1
		mask_index = sNothing
	}
	talking = false