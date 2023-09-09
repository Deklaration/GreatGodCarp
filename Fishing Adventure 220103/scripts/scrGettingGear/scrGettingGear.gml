// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scrGettingGear(_text,_object,_sprite,_imageindex,_scale,_howmany){
gettinggear = true
if showGear = true
{
//show_debug_message(string("imagespeed") + string(imagespeed))
if typist.get_state(1)
{
	//show_debug_message(sprite_get_name(_sprite))
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
	    scrInventoryAdd(_object,_imageindex)
	}
	
}

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



function scrGettingGearDrawGUI(_text,_sprite,_spriteindex,_scale){


	draw_sprite_ext(sRotatingStar,imagespeed,camera_get_view_width(oCamera.cam) / 2,camera_get_view_height(oCamera.cam) / 2,scale/2,scale/2,0,c_white,alpha/2)
	draw_sprite_ext(_sprite,_spriteindex,camera_get_view_width(oCamera.cam) / 2,camera_get_view_height(oCamera.cam) / 2,_scale,_scale,rot,c_white,alpha)
	scrTextOutline(camera_get_view_width(oCamera.cam) / 2,toptexty,"YOU GOT",1000,alpha,global.color[19],global.color[25])
	scrTextOutline(camera_get_view_width(oCamera.cam) / 2,bottomtexty,_text,1000,alpha,global.color[19],global.color[25])
	
}
/*
	draw_text_ext_color(camera_get_view_width(oCamera.cam) / 2,toptexty-1,"YOU GOT",1000,1000,c_white,c_white,c_white,c_white,alpha)
	draw_text_ext_color(camera_get_view_width(oCamera.cam) / 2,bottomtexty-1,_text,1000,1000,c_white,c_white,c_white,c_white,alpha)
	draw_text_ext_color(camera_get_view_width(oCamera.cam) / 2,toptexty+1,"YOU GOT",1000,1000,c_white,c_white,c_white,c_white,alpha)
	draw_text_ext_color(camera_get_view_width(oCamera.cam) / 2,bottomtexty+1,_text,1000,1000,c_white,c_white,c_white,c_white,alpha)
	draw_text_ext_color(camera_get_view_width(oCamera.cam) / 2 +1,toptexty,"YOU GOT",1000,1000,c_white,c_white,c_white,c_white,alpha)
	draw_text_ext_color(camera_get_view_width(oCamera.cam) / 2 +1,bottomtexty,_text,1000,1000,c_white,c_white,c_white,c_white,alpha)
	draw_text_ext_color(camera_get_view_width(oCamera.cam) / 2 -1,toptexty,"YOU GOT",1000,1000,c_white,c_white,c_white,c_white,alpha)
	draw_text_ext_color(camera_get_view_width(oCamera.cam) / 2 -1,bottomtexty,_text,1000,1000,c_white,c_white,c_white,c_white,alpha)
	draw_text_ext_color(camera_get_view_width(oCamera.cam) / 2,toptexty,"YOU GOT",1000,1000,c_black,c_black,c_black,c_black,alpha)
	draw_text_ext_color(camera_get_view_width(oCamera.cam) / 2,bottomtexty,_text,1000,1000,c_black,c_black,c_black,c_black,alpha)


}