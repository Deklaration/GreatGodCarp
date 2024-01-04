if (live_call()) return live_result;
draw_self()
depth = oBB_dot.depth-10
if freeze = true
{
	scrTextOutline(oBB_dot.x,oBB_dot.y-20,text,100,1,global.color[25],color,1,1)

}

if oBB_boat.done = true
{
	if xscale < 2
	{
		xscale +=d(0.04)
		yscale +=d(0.04)
	}
	else
	{
		goBackTimer -=d(1)
	}
	
	if audio = false
	{
		audio_play_sound(soYahoo,1,false)
		audio = true
	}
	
	if yPos < room_height/2+10
	{
	yPos +=2
	}
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fTitle)
	scrTextOutline(room_width/2,yPos,"GREAT JOB!",10000,1,global.color[19],global.color[25],2,2)
draw_set_halign(fa_left)
	draw_set_halign(fa_top)
	
	freeze = true
}

if goBackTimer <0
{
	alpha +=d(0.02)
	draw_set_alpha(alpha)
	draw_set_color(global.color[25])
	draw_rectangle(-1,-1,481,271,false)
	draw_set_alpha(1)
	
	if alpha > 2
	{
		room_goto(rGreatLake)
		global.boatBuilder = true
	}
	//scrTransitionsStart(rTownCenter,sqFadeOut,sqFadeIn)
}