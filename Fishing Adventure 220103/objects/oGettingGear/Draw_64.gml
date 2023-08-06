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
	scrInventoryAdd(oBait,1)
//	scrRodsAdd(oRods,1)
//	scrBaitAdd(oBait,1)
global.activerod = "It's a stick"
global.activebait = "Safety pin"
	instance_destroy(self)
}