draw_self()
if singing = true && doneSinging = false
{
global.cutscene = true
oProt.image_alpha = 0
oProt.disable = true
singingSpeed +=0.05

draw_sprite_ext(sProtSinging,singingSpeed,oProt.x,oProt.y,1,1,0,global.skincolorbeforefish,1)
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

}
}

