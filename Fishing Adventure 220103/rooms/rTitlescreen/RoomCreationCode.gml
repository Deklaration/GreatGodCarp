instance_create_depth(-100,-100,0,oProt)
//audio_play_sound(soTitle,0,true);
instance_create_depth(0,0,0,oTitlescreen)

for (var i = 0; i < 10; ++i) {
	instance_create_depth(random(room_width),room_height+100,0,oTitleBubble)
}