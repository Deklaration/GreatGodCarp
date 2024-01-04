
function scrCutscene1(){
/// @description Cutscene #1. Man faller ned från skyn

	if global.paused = false
	{
	
		if y >= 530
		{
		scrScreenshake(6,10)
		sprite_set_offset(sProt_South,16,40)
		sprite_set_offset(nose,16,40)
		sprite_set_offset(clothes,16,40)
		audio_play_sound(soHit,1,false)
		image_angle = 0
		global.cutscene = false
		global.cutscene1done = true
		global.cutscene1 = false
		oMusic.intensity = 1
		instance_create_depth(self.x,self.y+10-20,-419,oSmoke)
		mask_index = sProt_hitbox
		}
		
		
		else
		
		
		
		{
		sprite_set_offset(sProt_South,16,20)
		sprite_set_offset(nose,16,20)
		sprite_set_offset(clothes,16,20)
		global.cutscene = true
		self.depth = -1000
		dropdown -=0.005
		audio_sound_pitch(soTalking,dropdown)
	//	audio_play_sound(soTalking,1,false)
		image_angle+=50
		mask_index = noone
		y+=5
		}

	}
}