
function scrPreset(){

		presettimer = 1
		
		if (keyboard_check_pressed(global.key_right) || keyboard_check_pressed(vk_right)) && kp = 5 && presettimer = 1
		{
			kp = 0
			
			if kp = 0
			{
				global.key_a = ord("Z")
				global.key_b = ord("X")
				global.key_up = vk_up	
				global.key_down = vk_down
				global.key_left = vk_left
				global.key_right = vk_right
				global.key_pause = vk_enter
			}
			
		presettimer = 0
			
		}
		
		if (keyboard_check_pressed(global.key_left) || keyboard_check_pressed(vk_left))  && kp = 0 && presettimer = 1
		{
			kp = 5
			global.key_a = ord("H")
			global.key_b = ord("I")
			global.key_up = ord("D")	
			global.key_down = ord("O")
			global.key_left = ord("L")
			global.key_right = ord("P")
			global.key_pause = ord("N")
			presettimer = 0
		}

		if (keyboard_check_pressed(global.key_right) || keyboard_check_pressed(vk_right)) && kp < 5 && presettimer = 1
		{
			kp +=1
			
			if kp = 0
			{
				global.key_a = ord("Z")
				global.key_b = ord("X")
				global.key_up = vk_up	
				global.key_down = vk_down
				global.key_left = vk_left
				global.key_right = vk_right
				global.key_pause = vk_enter
			}
			
			if kp = 1
			{
				global.key_a = ord("O")
				global.key_b = ord("P")
				global.key_up = ord("W")	
				global.key_down = ord("S")
				global.key_left = ord("A")
				global.key_right = ord("D")
				global.key_pause = vk_enter
			}
			
			if kp = 2
			{
				global.key_a = ord("R")
				global.key_b = ord("E")
				global.key_up = ord("L")	
				global.key_down = ord("O")
				global.key_left = ord("P")
				global.key_right = ord("I")
				global.key_pause = vk_tab
			}

			if kp = 3
			{
				global.key_a = gp_face1
				global.key_b = gp_face2
				global.key_up = gp_padu
				global.key_down = gp_padd
				global.key_left = gp_padl
				global.key_right = gp_padr
				global.key_pause = gp_start
			}
			
			if kp = 4
			{
				global.key_a = vk_f1
				global.key_b = vk_f2
				global.key_up = vk_f3
				global.key_down = vk_f4
				global.key_left = vk_f5
				global.key_right = vk_f6
				global.key_pause = vk_f7
			}
			
			if kp = 5
			{
				global.key_a = ord("H")
				global.key_b = ord("I")
				global.key_up = ord("D")	
				global.key_down = ord("O")
				global.key_left = ord("L")
				global.key_right = ord("P")
				global.key_pause = ord("N")
			}
			
		presettimer = 0
			
		}
		if (keyboard_check_pressed(global.key_left) || keyboard_check_pressed(vk_left))  && kp > 0 && presettimer = 1
		{
			kp -=1
			
			if kp = 0
			{
				global.key_a = ord("Z")
				global.key_b = ord("X")
				global.key_up = vk_up	
				global.key_down = vk_down
				global.key_left = vk_left
				global.key_right = vk_right
				global.key_pause = vk_enter
			}
			
			if kp = 1
			{
				global.key_a = ord("O")
				global.key_b = ord("P")
				global.key_up = ord("W")	
				global.key_down = ord("S")
				global.key_left = ord("A")
				global.key_right = ord("D")
				global.key_pause = vk_enter
			}
			
			if kp = 2
			{
				global.key_a = ord("R")
				global.key_b = ord("E")
				global.key_up = ord("L")	
				global.key_down = ord("O")
				global.key_left = ord("P")
				global.key_right = ord("I")
				global.key_pause = vk_tab
			}

			if kp = 3
			{
				global.key_a = gp_face1
				global.key_b = gp_face2
				global.key_up = gp_padu
				global.key_down = gp_padd
				global.key_left = gp_padl
				global.key_right = gp_padr
				global.key_pause = gp_start
			}
			
			if kp = 4
			{
				global.key_a = vk_f1
				global.key_b = vk_f2
				global.key_up = vk_f3
				global.key_down = vk_f4
				global.key_left = vk_f5
				global.key_right = vk_f6
				global.key_pause = vk_f7
			}
			
			if kp = 5
			{
				global.key_a = ord("H")
				global.key_b = ord("I")
				global.key_up = ord("D")	
				global.key_down = ord("O")
				global.key_left = ord("L")
				global.key_right = ord("P")
				global.key_pause = ord("N")
			}
			presettimer = 0
		}
		
	}

	