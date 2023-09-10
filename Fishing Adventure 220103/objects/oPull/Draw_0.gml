
draw_self()

if instance_exists(oBete)
{
var ft = oBete.fiskid.fighttimer
var pt = oBete.fiskid.pullawaytimer
}

if (pt/ft * 100) > 70
{
	color = global.color[11]
}
if (pt/ft * 100) > 85
{
	color = global.color[8]
}

draw_sprite_ext(sProcessBox,0,x+20,y+10,-(pt/ft * 100) * 0.4,1,0,color,1)
draw_sprite(sProcessBar,0,x,y+10)

if global.fishbait = false
{
	instance_destroy(self)
}