draw_sprite_ext(sPullBar2,0,self.x,self.y,1,barprocess,0,color,1)
draw_self()

if process > goal 
{
	color=c_green
}
else
{
	color = c_red
}

if oBete.fiskid.fighttimer > 0 && color = c_red
{
	draw_text(oBete.fiskid.x+random_range(-50,50),oBete.fiskid.y+random_range(-50,50),"PULL!")
}

if oBete.fiskid.fighttimer > 0 && color = c_green
{
	draw_text(oBete.fiskid.x+random_range(-50,50),oBete.fiskid.y+random_range(-50,50),string(cheer[i]))
}


if global.fishbait = false
{
	instance_destroy(self)
}