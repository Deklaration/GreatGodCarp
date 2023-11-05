scrDrawSet(fTitle,c_black,fa_center)

if i = 1
{
scrInventoryAdd(oKeyInventory,item)
instance_destroy(self)	
global.cutscene = false

}

if item = enumItem.Clothes
{	
	instance_destroy(parent)
	scrGettingGearDrawGUI("CLOTHES!",sItemsIcon,0,scale+0)
}

if item = enumItem.Shovel
{	
	instance_destroy(parent)
	scrGettingGearDrawGUI("A DECENT SHOVEL!",sItemsIcon,1,scale+0)
}

if item = enumItem.Bunnyhouse
{	
	instance_destroy(parent)
	scrGettingGearDrawGUI("A HOUSE FOR A BUNNY!",sItemsIcon,2,scale+0)
}


if item = enumItem.Bark
{	
	instance_destroy(parent)
	scrGettingGearDrawGUI("REALLY NICE BARK!",sItemsIcon,3,scale+0)
}


if item = enumItem.Coal
{	
	instance_destroy(parent)
	scrGettingGearDrawGUI("SOME COAL!",sItemsIcon,4,scale+0)
}
if item = enumItem.Driftwood
{	
	instance_destroy(parent)
	scrGettingGearDrawGUI("DRIFTWOOD! SO COOL!",sItemsIcon,5,scale+0)
}

if item = enumItem.Sail
{	
	instance_destroy(parent)
	scrGettingGearDrawGUI("A SAIL, WOW!",sItemsIcon,6,scale+0)
}

if item = enumItem.Tar
{	
	instance_destroy(parent)
	scrGettingGearDrawGUI("A BUCKET OF TAR!",sItemsIcon,7,scale+0)
}

if item = enumItem.Anchor
{	
	instance_destroy(parent)
	scrGettingGearDrawGUI("AN ANCHOR!",sItemsIcon,8,scale+0)
}

if item = enumItem.Key
{	
	instance_destroy(parent)
	scrGettingGearDrawGUI("A SMALL KEY!",sItemsIcon,9,scale+0)
}

if item = enumItem.Horse
{	
	instance_destroy(parent)
	scrGettingGearDrawGUI("A WOODEN HORSE!",sItemsIcon,10,scale+0)
}

//draw_text(x,y+10,parent)