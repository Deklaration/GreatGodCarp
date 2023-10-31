// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scrGettingGear(_text,_rootObject,_item,_sprite,_imageindex,_scale,_howmany){
gettinggear = true
if showGear = true
{

if typist.get_state(1)
{
imagespeed +=1
if imagespeed >= 22
{
	imagespeed = 0
}

if scale < 6 
{
scale += 0.07
if scale > 3.5
{
	alpha2 +=0.07
	scale += 0.2
}
rot += 40
}
else 
{
alpha2 -=0.01
rot = 0
alpha -=0.02
}

if alpha < 0.1
{
	alpha2 = 0
	alpha = 2
	scale = 0
	toptexty = -30
	bottomtexty = 300
	gotgear = true
	for (var b = 0; b < _howmany; ++b) {
	    scrInventoryAdd(_rootObject,_item)
	}
	
}
//show_message(_sprite)

if bottomtexty > 220 && scale > 1
{
toptexty +=4
bottomtexty -=4
}


	scrDrawSet(fTitle,c_black,fa_center)
	draw_sprite_ext(sRotatingStar,imagespeed,camera_get_view_width(oCamera.cam) / 2,camera_get_view_height(oCamera.cam) / 2,scale/2,scale/2,0,c_white,alpha/2)
	draw_sprite_ext(_sprite,_imageindex,camera_get_view_width(oCamera.cam) / 2,camera_get_view_height(oCamera.cam) / 2,scale,scale,rot,c_white,alpha)
	scrTextOutline(camera_get_view_width(oCamera.cam) / 2,toptexty,"YOU GOT",1000,alpha,global.color[19],global.color[25])
	scrTextOutline(camera_get_view_width(oCamera.cam) / 2,bottomtexty,_text,1000,alpha,global.color[19],global.color[25])
}	

}


}





function scrGettingGearCreate(){
scale = 0
rot = 0
alpha = 2
alpha2 = 0 
imagespeed = 0
i = 0 
toptexty = -30
bottomtexty = 300
global.cutscene = true

}


function scrGettingGearStep(){
	imagespeed +=1
if imagespeed >= 22
{
	imagespeed = 0
}

if scale < 6 
{
scale += 0.07
if scale > 3.5
{
	alpha2 +=0.07
	scale += 0.2
}
rot += 40
}
else 
{
alpha2 -=0.01
rot = 0
alpha -=0.02
}

if alpha = 0
{
	i+=1
	alpha2 = 0
	alpha = 2
	scale = 0
	toptexty = -30
	bottomtexty = 300
	gotgear = true
}

if bottomtexty > 220 && scale > 1
{
toptexty +=4
bottomtexty -=4
}
}

function scrGearInDialog(_text,_rootObject,_item,_sprite,_imageindex,_scale,_howMany,_fish){
	
//Text som ska visas, vilket inventory det är (oInventory, oRods, oBait eller någon butik)
//vilket item det är inkl enum (enumRods.itsastick, enumFish.inkfish)
//vilken skala det är i när den visas, hur många av föremålet man ska få
//om det är en fisk eller inte
	
var gearstring = string("[gettinggear][#") + string(_text) + string("*{")
+ string(_rootObject) + string("}£") + string(_item) + string("|½") 
+ string(_sprite) + string("^<") + string(_imageindex) + string(">¤") 
+ string(_scale) + string("€=") + string(_howMany) + string("~+") + string(_fish) + string("_")



return gearstring
}

function scrGettingGearDrawGUI(_text,_sprite,_spriteindex,_scale){


	draw_sprite_ext(sRotatingStar,imagespeed,camera_get_view_width(oCamera.cam) / 2,camera_get_view_height(oCamera.cam) / 2,scale/2,scale/2,0,c_white,alpha/2)
	draw_sprite_ext(_sprite,_spriteindex,camera_get_view_width(oCamera.cam) / 2,camera_get_view_height(oCamera.cam) / 2,_scale,_scale,rot,c_white,alpha)
	scrTextOutline(camera_get_view_width(oCamera.cam) / 2,toptexty,"YOU GOT",1000,alpha,global.color[19],global.color[25])
	scrTextOutline(camera_get_view_width(oCamera.cam) / 2,bottomtexty,_text,1000,alpha,global.color[19],global.color[25])
	
}
