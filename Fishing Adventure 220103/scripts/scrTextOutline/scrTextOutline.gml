// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrTextOutline(_xvalue,_yvalue,_text,_w,_alpha){
						draw_text_ext_color(_xvalue+1,_yvalue,_text,50,_w,c_black,c_black,c_black,c_black,_alpha)
						draw_text_ext_color(_xvalue,_yvalue+1,_text,50,_w,c_black,c_black,c_black,c_black,_alpha)
						draw_text_ext_color(_xvalue,_yvalue-1,_text,50,_w,c_black,c_black,c_black,c_black,_alpha)
						draw_text_ext_color(_xvalue-1,_yvalue,_text,50,_w,c_black,c_black,c_black,c_black,_alpha)
						draw_text_ext_color(_xvalue,_yvalue,_text,50,_w,c_white,c_white,c_white,c_white,_alpha)
}