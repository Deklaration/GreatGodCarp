
function scrStartFishing(){

if global.gettinggear = true //Bara borta tills jag är nöjd med fisket
{
if global.paused = false
{
global.xbeforefish = self.x
global.ybeforefish = self.y
if (global.xmovedbetweenfishing = global.xbeforefish) && (global.ymovedbetweenfishing = global.ybeforefish)
{
	global.notmoved = true
}	
else
{
	global.notmoved = false
}
global.xmovedbetweenfishing = self.x	
global.ymovedbetweenfishing = self.y
global.directionbeforefish = sprite_index
global.xscalebeforefish = xscale
global.lastroom = room
global.nosebeforefish = nose
global.clothesbeforefish = clothes
global.nosecolorbeforefish = nosecolor
global.clothescolorbeforefish = clothescolor
scrTransitionsStart(rFiske,sqFadeOut,sqFadeIn)

}
}
}