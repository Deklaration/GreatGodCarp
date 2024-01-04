if (live_call()) return live_result;
draw_sprite_ext(sNodding,choiceSpeedYes,222,yset,1,1,0,c_white,alpha)
draw_sprite_ext(sNoddingHud,choiceSpeedYes,222,yset,1,1,0,global.skincolorbeforefish,alpha)
draw_sprite_ext(sNoddingNose,choiceSpeedYes,222,yset,1,1,0,global.color[oProt.nosecolor],alpha)
draw_sprite_ext(sShaking,choiceSpeedNo,256,yset,1,1,0,c_white,alpha)
draw_sprite_ext(sShakingHud,choiceSpeedNo,256,yset,1,1,0,global.skincolorbeforefish,alpha)
draw_sprite_ext(sShakingNose,choiceSpeedNo,256,yset,1,1,0,global.color[oProt.nosecolor],alpha)


//bobbing_offset = 0;
bobbing_speed = 0.0025; // Adjust this for faster or slower bobbing
bobbing_amount = 5; // Adjust this for larger or smaller bobbing motion
bobbing_offset = sin(current_time * bobbing_speed) * bobbing_amount;
draw_sprite_ext(global.fisharray[tank.fish, 1], 1, 420, 240 + bobbing_offset, 4, 4, 0, c_white, fishalpha);