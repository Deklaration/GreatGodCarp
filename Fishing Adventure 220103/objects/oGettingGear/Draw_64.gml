scrDrawSet(fTitle,c_black,fa_center)
if i = 0
{
scrGettingGearDrawGUI("A FISHING ROD!",sRodsIcon,1,scale+0)
}

if i = 1
{
scrGettingGearDrawGUI("SOME BAIT!",sBaitIcon,1,scale+0.5)
}

if i = 2
{
scrGettingGearDrawGUI("A FISHING GUIDE!",sFishingGuideIcon,0,scale/3.5)
}

if i = 3
{
	global.cutscene = false
	scrInventoryAdd(oRods,1)
	
	for (var b = 0; b < 10; ++b) {
	    scrInventoryAdd(oBait,1)
	}

global.activerod = 1//"It's a stick"
global.activebait = 1// "Safety pin"
	instance_destroy(self)
}

if i = "coal"
{
	scrGettingGearDrawGUI("SOME COAL!",sItemsIcon,4,scale+0)
}