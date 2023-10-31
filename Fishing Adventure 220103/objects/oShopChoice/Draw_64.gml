if (live_call()) return live_result;
scrDrawSet(fTextbox,c_black,fa_center)
//scrNineSliceBoxStretched(sTextbox,x1,y1,x2,y2,0)
//if oShop.question = 1
//{
//draw_text_color((camera_get_view_width(oCamera.cam) / 2) - 20,camera_get_view_height(oCamera.cam) - 85,"Yes!",c_black,c_black,c_black,c_black,alpha)
//draw_text_color((camera_get_view_width(oCamera.cam) / 2) + 20,camera_get_view_height(oCamera.cam) - 85,"No!",c_black,c_black,c_black,c_black,alpha)
//draw_text_color((camera_get_view_width(oCamera.cam) / 2) - 20,camera_get_view_height(oCamera.cam) - 86,"Yes!",buycolor,buycolor,buycolor,buycolor,alpha)
//draw_text_color((camera_get_view_width(oCamera.cam) / 2) + 20,camera_get_view_height(oCamera.cam) - 86,"No!",sellcolor,sellcolor,sellcolor,sellcolor,alpha)
//}
//if oShop.question = 2
//{
//draw_text_color((camera_get_view_width(oCamera.cam) / 2) - 20,camera_get_view_height(oCamera.cam) - 85,"All!",c_black,c_black,c_black,c_black,alpha)
//draw_text_color((camera_get_view_width(oCamera.cam) / 2) + 20,camera_get_view_height(oCamera.cam) - 85,"One!",c_black,c_black,c_black,c_black,alpha)
//draw_text_color((camera_get_view_width(oCamera.cam) / 2) - 20,camera_get_view_height(oCamera.cam) - 86,"All!",buycolor,buycolor,buycolor,buycolor,alpha)
//draw_text_color((camera_get_view_width(oCamera.cam) / 2) + 20,camera_get_view_height(oCamera.cam) - 86,"One!",sellcolor,sellcolor,sellcolor,sellcolor,alpha)
//}

if howMany = false
{
		antal = antalSave
		if keyboard_check(global.key_left)
			{
				yes = true
			}
	
		if keyboard_check(global.key_right)
			{
				yes = false
			}
if instance_exists(oText)
{
	depth = oText.depth-1
}
draw_sprite_ext(sNodding,choiceSpeedYes,222,238,1,1,0,c_white,alpha)
draw_sprite_ext(sShaking,choiceSpeedNo,256,238,1,1,0,c_white,alpha)
}

draw_text(10,10,howMany)

if howMany = true 
{
		//dialog[2] = "Mmmm, that's " + string(global.baitarray[place,2] * antal) + " money! Let's buy, right?"
		draw_sprite_ext(sTinyArrow,0,222,238+leftArrowYPos,-1,1,0,c_white,alpha)
		draw_sprite_ext(sTinyArrow,1,222,238+leftArrowYPos,-1,1,0,global.color[leftColor],alpha)
		draw_sprite_ext(sTinyArrow,0,256,238+rightArrowYPos,1,1,0,c_white,alpha)
		draw_sprite_ext(sTinyArrow,1,256,238+rightArrowYPos,1,1,0,global.color[rightColor],alpha)
		//scribble(string(antal)).wrap(300,300).align(fa_center,fa_middle).starting_format("fFishdexShadow",global.color[19]).draw(240,239)
}