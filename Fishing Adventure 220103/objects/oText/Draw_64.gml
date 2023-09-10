
/// @description Rita textruta
if x1 <220
{
scrNineSliceBoxStretched(sTextbox,x1,y1,x2,y2,background)
scrDrawSet(fTextbox,c_black,fa_left)
draw_set_valign(fa_top)


scribble("[c_white]"+textmessage).wrap(300,300).draw(x1+textplace,y1+9,typist)

if !instance_exists(oGeneratorFaceIndex) && showFace = true
{
draw_sprite_ext(faceindex,0,x1+15,y1+15,facescale,1,0,c_white,1)
draw_sprite_ext(mouthindex,mouthmovement,x1+15,y1+15,facescale,1,0,c_white,1)
}
}





//Få saker
var pos = string_pos("[gettinggear]", textmessage);
var startPosText = string_pos("#", textmessage);
var endPosText = string_pos("*", textmessage);
var startPosObject = string_pos("{", textmessage);
var endPosObject = string_pos("}", textmessage);
var startPosSprite = string_pos("£", textmessage);
var endPosSprite = string_pos("$", textmessage);
var startPosIndex = string_pos("½", textmessage);
var endPosIndex = string_pos("€", textmessage);
var startPosScale = string_pos("=", textmessage);
var endPosScale = string_pos("~", textmessage);
var startPosHowMany = string_pos("+", textmessage);
var endPosHowMany = string_pos("_", textmessage);
if (endPosText != 0) { var countText = endPosText - startPosText + 1;}
if (endPosObject != 0) { var countObject = endPosObject - startPosObject + 1;}
if (endPosSprite != 0) { var countSprite = endPosSprite - startPosSprite + 1;}
if (endPosIndex != 0) { var countIndex = endPosIndex - startPosIndex + 1;}
if (endPosScale != 0) { var countScale = endPosScale - startPosScale + 1;}
if (endPosScale != 0) { var countHowMany = endPosHowMany - startPosHowMany + 1;}
if (pos > 0) && gotgear = false{

	//show_debug_message(string("\"") + string_copy(textmessage,startPosText+1,countText-2) + string("\""))
	//show_debug_message(string_copy(textmessage,startPosObject+1,countObject-2))
	//show_debug_message(asset_get_index(string_copy(textmessage,startPosSprite+1,countSprite-2)))
	//show_debug_message(string_copy(textmessage,startPosIndex+1,countIndex-2))
	//show_debug_message(string_copy(textmessage,startPosScale+1,countScale-2))
	
	
	scrGettingGear(string_copy(textmessage,startPosText+1,countText-2),
	asset_get_index(string_copy(textmessage,startPosObject+1,countObject-2)),
	asset_get_index(string_copy(textmessage,startPosSprite+1,countSprite-2)),
	real(string_copy(textmessage,startPosIndex+1,countIndex-2)),
	real(string_copy(textmessage,startPosScale+1,countScale-2)),
	real(string_copy(textmessage,startPosHowMany+1,countHowMany-2)))}
	
	
	
	
	
	
	
	var fishingguidepos = string_pos("[FISHINGGUIDE]", textmessage);
if (fishingguidepos > 0) && gotgear = false
{
gettinggear = true
	if showGear = true
	{
	imagespeed +=1
	if imagespeed >= 22
	{
		imagespeed = 0
	}
	if  scale < 6 
	{
	 scale += 0.07
		if  scale > 3.5
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
	if  alpha < 0.1
	{
		 alpha2 = 0
		 alpha = 2
		 scale = 0
		 toptexty = -30
		 bottomtexty = 300
		 gotgear = true
		global.gotFishGuide = true
	}

	if  bottomtexty > 220 &&  scale > 1
	{
	 toptexty +=4
	 bottomtexty -=4
	}

		scrDrawSet(fTitle,c_black,fa_center)
		draw_sprite_ext(sRotatingStar, imagespeed,camera_get_view_width(oCamera.cam) / 2,camera_get_view_height(oCamera.cam) / 2, scale/2, scale/2,0,c_white, alpha/2)
		draw_sprite_ext(sFishingGuideIcon,0,camera_get_view_width(oCamera.cam) / 2,camera_get_view_height(oCamera.cam) / 2, scale/3, scale/3, rot,c_white, alpha)
		scrTextOutline(camera_get_view_width(oCamera.cam) / 2, toptexty,"YOU GOT",1000, alpha,global.color[19],global.color[25])
		scrTextOutline(camera_get_view_width(oCamera.cam) / 2, bottomtexty,"A FISHING GUIDE",1000, alpha,global.color[19],global.color[25])	

	}
}