if (live_call()) return live_result;
//draw_self()
depth = -y +10

draw_sprite(sCavePaintings,0,x-60,y-40)//400,450)
draw_sprite(sCavePaintings,1,x,y-40)//460,450)
draw_sprite(sCavePaintings,2,x+60,y-40)//520,450)


if cutscene = true
{

	if instance_exists(oText)
	{
		var painting1 = string_pos("PAINTING1", oText.textmessage);
		var painting2 = string_pos("PAINTING2", oText.textmessage);
		var painting3 = string_pos("PAINTING3", oText.textmessage);
		var done = string_pos("DONE", oText.textmessage);
		if (painting1 > 0)
		{depth = -1500
			draw_sprite_ext(sCavePaintings,0,oCamera.x,oCamera.y-20,8,8,0,c_white,1)
		}
		if (painting2 > 0)
		{depth = -1500
			draw_sprite_ext(sCavePaintings,1,oCamera.x,oCamera.y-20,8,8,0,c_white,1)
		}
		if (painting3 > 0)
		{depth = -1500
			global.searchTheCave = true
			draw_sprite_ext(sCavePaintings,2,oCamera.x,oCamera.y-20,8,8,0,c_white,1)
		}
		if (done > 0)
		{
			global.cutscene = false
			cutscene = false
			global.searchTheCave = true
		}
	}

}
//else
//{
//	depth = -y
//}