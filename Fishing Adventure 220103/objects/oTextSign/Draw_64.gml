/// @description Rita textruta
if x1 <220
{
scrNineSliceBoxStretched(sTextbox,x1,y1,x2,y2,background)
scrDrawSet(fTextbox,c_black,fa_left)
draw_set_valign(fa_top)


var _print = string_copy(text,1,textProgress) //message

draw_text_scribble(x1 + textplace, y1+9, _print)
draw_set_color(c_white)
draw_text_scribble(x1 + textplace, y1+8, _print)

}