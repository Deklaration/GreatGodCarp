// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


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