//scrDrawSet(fTitle,c_black,fa_center)
//draw_text(room_width / 2,room_height / 10,"GREAT GOD CARP")
//scrDrawSet(fTitle,c_white,fa_center)
//draw_text(room_width / 2,room_height / 10 - 1,"GREAT GOD CARP")
if (live_call()) return live_result;



if settings = true
{
	draw_sprite_ext(sLogo,0,room_width / 2,room_height / 2 - 55,0.15,0.15,0,c_white,1)
}
if settings = false && starttext != "Press " + string(oGame.keyboard[global.key_a]) + " to start"
{
	draw_sprite_ext(sLogo,0,room_width / 2,room_height / 2 - 40,0.18,0.18,0,c_white,1)
}
if starttext = "Press " + string(oGame.keyboard[global.key_a]) + " to start" 
{
	draw_sprite_ext(sLogo,0,room_width / 2,room_height / 2 - 20,0.2,0.2,0,c_white,1)
}

scrDrawSet(fStandard,c_white,fa_center)
draw_text_ext_color(room_width/2,room_height - (room_height / 10) ,starttext,20,1000,c_white,c_white,c_white,c_white,blinkingtext)


if starttext = ""
{
	if settings = false
	{
	if choice = 1
	{
		draw_text_ext_color(room_width/2,room_height  - (room_height / 3.2),menu[0],20,1000,c_red,c_red,c_red,c_red,1)
	}
	else
	{
		draw_text_ext_color(room_width/2,room_height - (room_height / 3.2),menu[0],20,1000,c_white,c_white,c_white,c_white,1)
	}
		
		if choice = 2
	{
		draw_text_ext_color(room_width/2,room_height - (room_height / 4.2),menu[1],20,1000,c_red,c_red,c_red,c_red,1)
	}
	else
	{
		draw_text_ext_color(room_width/2,room_height - (room_height / 4.2),menu[1],20,1000,c_white,c_white,c_white,c_white,1)
	}
		
		if choice = 3
	{
		draw_text_ext_color(room_width/2,room_height - (room_height / 6),menu[2],20,1000,c_red,c_red,c_red,c_red,1)
	}
	else
	{
		draw_text_ext_color(room_width/2,room_height - (room_height / 6),menu[2],20,1000,c_white,c_white,c_white,c_white,1)
	}
	}
	
	if settings = true
	{
	if choice = 1
	{
		draw_text_ext_color(room_width/2,room_height  - (room_height / 3.2) - 30,menu[0],20,1000,c_red,c_red,c_red,c_red,1)
	}
	else
	{
		draw_text_ext_color(room_width/2,room_height - (room_height / 3.2) - 30,menu[0],20,1000,c_white,c_white,c_white,c_white,1)
	}
		
		if choice = 2
	{
		draw_text_ext_color(room_width/2,room_height - (room_height / 4.2) - 30,menu[1],20,1000,c_red,c_red,c_red,c_red,1)
	}
	else
	{
		draw_text_ext_color(room_width/2,room_height - (room_height / 4.2) - 30,menu[1],20,1000,c_white,c_white,c_white,c_white,1)
	}
		
		if choice = 3
	{
		draw_text_ext_color(room_width/2,room_height - (room_height / 6) - 30,menu[2],20,1000,c_red,c_red,c_red,c_red,1)
	}
	else
	{
		draw_text_ext_color(room_width/2,room_height - (room_height / 6) - 30,menu[2],20,1000,c_white,c_white,c_white,c_white,1)
	}
		if choice = 4
	{
		draw_text_ext_color(room_width/2,room_height - (room_height / 6),menu[3],20,1000,c_red,c_red,c_red,c_red,1)
	}
	else
	{
		draw_text_ext_color(room_width/2,room_height - (room_height / 6),menu[3],20,1000,c_white,c_white,c_white,c_white,1)
	}
	}
	
}

