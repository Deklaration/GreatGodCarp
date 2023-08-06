/// @description Rita textruta
if x1 <220
{
scrNineSliceBoxStretched(sTextbox,x1,y1,x2,y2,background)
//draw_sprite_stretched(sTextbox,background,x1,y1,x2,y2)
scrDrawSet(fTextbox,c_black,fa_left)
draw_set_valign(fa_top)

//show_debug_message("x1: " + string(x1) + " x2: " + string(x2))

var _print = string_copy(text,1,textProgress) //message

draw_text(x1 + textplace, y1+9, _print)
draw_set_color(c_white)
draw_text(x1 + textplace, y1+8, _print)
if !instance_exists(oGeneratorFaceIndex)
{
draw_sprite_ext(faceindex,0,x1+15,y1+15,facescale,1,0,c_white,1)
draw_sprite_ext(mouthindex,mouthmovement,x1+15,y1+15,facescale,1,0,c_white,1)
}
}