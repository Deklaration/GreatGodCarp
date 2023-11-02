draw_self()
if (live_call()) return live_result;
if singing = true && doneSinging = false
{

if nottimer <0
{
instance_create_depth(oProt.x+5, oProt.y-25, 0,oNoter)
nottimer = 10
}
nottimer -=1
global.cutscene = true
oProt.image_alpha = 0
oProt.disable = true
singingSpeed +=0.05
layer_enable_fx("EffectLayer", true)
//layer_set_fx("EffectLayer", oCaveController.effect);
draw_sprite_ext(sProtSinging,singingSpeed,oProt.x,oProt.y,1,1,0,global.skincolorbeforefish,1)
draw_self()
if audio = false
{
	audio_play_sound(soLuna,1,false)
	audio = true
}
if !audio_is_playing(soLuna)
{
	doneSinging = true
			global.cutscene = false
			oProt.image_alpha = 1
			oProt.disable = false

			    layer_enable_fx("EffectLayer", false);


}
}

