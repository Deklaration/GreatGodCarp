
if newroom = true
{
	scrDrawSet(fTextboxLarge,c_white,fa_right)
	scrTextOutline(475,35,roomarray[room],100,roomalpha,c_white,c_black)
	//draw_text_ext_color(474,35,roomarray[room],100,100,c_white,c_white,c_white,c_white,roomalpha)
	//draw_text_ext_color(476,35,roomarray[room],100,100,c_white,c_white,c_white,c_white,roomalpha)
	//draw_text_ext_color(475,34,roomarray[room],100,100,c_white,c_white,c_white,c_white,roomalpha)
	//draw_text_ext_color(475,36,roomarray[room],100,100,c_white,c_white,c_white,c_white,roomalpha)
	//scrDrawSet(fTextboxLarge,c_black,fa_right)
	//draw_text_ext_color(475,35,roomarray[room],100,100,c_black,c_black,c_black,c_black,roomalpha)
	newroomtimer -=1
	
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