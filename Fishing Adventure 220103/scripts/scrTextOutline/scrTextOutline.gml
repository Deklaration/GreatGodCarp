// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrTextOutline(_xvalue,_yvalue,_text,_w,_alpha,_outcolor,_incolor){
						draw_text_ext_color(_xvalue+1,_yvalue,_text,50,_w,_outcolor,_outcolor,_outcolor,_outcolor,_alpha)
						draw_text_ext_color(_xvalue,_yvalue+1,_text,50,_w,_outcolor,_outcolor,_outcolor,_outcolor,_alpha)
						draw_text_ext_color(_xvalue,_yvalue-1,_text,50,_w,_outcolor,_outcolor,_outcolor,_outcolor,_alpha)
						draw_text_ext_color(_xvalue-1,_yvalue,_text,50,_w,_outcolor,_outcolor,_outcolor,_outcolor,_alpha)
						draw_text_ext_color(_xvalue,_yvalue,_text,50,_w,_incolor,_incolor,_incolor,_incolor,_alpha)
}