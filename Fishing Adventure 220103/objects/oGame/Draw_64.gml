
if newroom = true
{
	scrDrawSet(fTextboxLarge,c_white,fa_right)
	scrTextOutline(475,35,roomarray[room],300,roomalpha,c_white,c_black)
	newroomtimer -=d(1)
	
	if newroomtimer < 50
	{
		roomalpha -=0.02
	}
	if newroomtimer < 0 
	{
		newroomtimer = 200
		newroom = false
		roomalpha = 1
	}
}


/// @description Rita ut GUI
if room != rTitlescreen
{

draw_sprite(sSlot,0,450,7)
draw_sprite(sSlot,0,420,7)
draw_sprite(sRodsIcon,global.activerod,432,19)
draw_sprite(sBaitIcon,global.activebait,462,19)
scrDrawSet(fTextbox,c_black,fa_right)
scrTextOutline(412,9,"£: " + string(global.gold),100,1,c_black,c_white)

}


if instance_exists(oBaitShop)
{
	if oBaitShop.shopActive = true
	{
		scrNineSliceBoxStretched(sTextbox,15,oBaitShop.y1,465,oBaitShop.y2,1)
	}
}
if instance_exists(oShopkeeper)
{
	if oShopkeeper.shopActive = true
	{
		scrNineSliceBoxStretched(sTextbox,25,oShopkeeper.y1,213,oShopkeeper.y2,1)
		scrNineSliceBoxStretched(sTextbox,267,oShopkeeper.y1,455,oShopkeeper.y2,1)
	}
}