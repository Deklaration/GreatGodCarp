draw_sprite(sShopkeeper,shopkeeperspeed,x,y)
draw_self()

timer -=1
if timer <0
{
	shopkeeperspeed = irandom(1)
timer = 10
}
