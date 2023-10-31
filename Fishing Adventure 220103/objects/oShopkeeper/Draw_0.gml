if (live_call()) return live_result;

//if global.daugava_set > 4
//{
draw_sprite(sShopkeeper,shopkeeperspeed,x,y)
//}
draw_self()

timer -=1
if timer <0
{
	shopkeeperspeed = irandom(1)
timer = 10
}


//if shopActive = true
//{	
//scrNineSliceBoxStretched(sTextbox,oCamera.x-220+5,oCamera.y-135+y1,oCamera.x-20-5,oCamera.y+y2 - 138+4,1)
//scrNineSliceBoxStretched(sTextbox,oCamera.x+20+5,oCamera.y-135+y1,oCamera.x+220-5,oCamera.y+y2 - 138+4,1)
//}