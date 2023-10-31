scrDrawSet(fTitle,c_black,fa_center)

if i = 1
{
scrInventoryAdd(oKeyInventory,item)
instance_destroy(self)	
global.cutscene = false

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
if item = enumItem.Bark
{	
	instance_destroy(parent)
	scrGettingGearDrawGUI("REALLY NICE BARK!",sItemsIcon,3,scale+0)
}

//draw_text(x,y+10,parent)