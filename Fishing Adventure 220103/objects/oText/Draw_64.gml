if (live_call()) return live_result;

/// @description Rita textruta
if x1 <220
{
scrNineSliceBoxStretched(sTextbox,x1,y1,x2,y2,background)
scrDrawSet(fTextbox,c_black,fa_left)
draw_set_valign(fa_top)


scribble("[c_white]"+textmessage).wrap(300,300).draw(x1+textplace,y1+9,typist)

if !instance_exists(oGeneratorFaceIndex)
{
draw_sprite_ext(faceindex,0,x1+15,y1+15,facescale,1,0,c_white,1)
draw_sprite_ext(mouthindex,mouthmovement,x1+15,y1+15,facescale,1,0,c_white,1)
}
}