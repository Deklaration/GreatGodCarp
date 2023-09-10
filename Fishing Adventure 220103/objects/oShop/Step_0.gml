///@description Placepicker - inget mer


		x = 54
		y = 50
		
		if y1 > y1target
		{
		y1 -=20
		}
		else
		{
			alpha +=0.1
		}
		if y2 > y2target
		{
		y2 -=20
		}

if !instance_exists(oShopChoice)
{
		
		if keyboard_check_pressed(global.key_right) && side = "left" && placepicker = 0
		{
			if place !=5 && place !=11 && place !=17 && place !=23 && placepicker = 0
			{
			place+=1
			placepicker = 1
			}
			if place = 5 && placepicker = 0
			{
				side = "right"
				placej = 0
				place =-1
				placepicker = 1
			}
			if place = 11 && placepicker = 0
			{
				side = "right"
				placej = 6
				place =-1
				placepicker = 1
			}
			if place = 17 && placepicker = 0
			{
				side = "right"
				placej = 12
				place =-1
				placepicker = 1
			}
			if place = 23 && placepicker = 0
			{
				side = "right"
				placej = 18
				place =-1
				placepicker = 1
			}
		}
		
		
		if keyboard_check_pressed(global.key_right) && side = "right" && placepicker = 0
		{
			if placej !=5 && placej !=11 && placej !=17 && placej !=23 && placepicker = 0
			{
			placej+=1
			placepicker = 1
			}
			if placej = 5 && placepicker = 0
			{
				side = "left"
				place = 0
				placej =-1
				placepicker = 1
			}
			if placej = 11 && placepicker = 0
			{
				side = "left"
				place = 6
				placej =-1
				placepicker = 1
			}
			if placej = 17 && placepicker = 0
			{
				side = "left"
				place = 12
				placej =-1
				placepicker = 1
			}
			if placej = 23 && placepicker = 0
			{
				side = "left"
				place = 18
				placej =-1
				placepicker = 1
			}

		}
		
		if keyboard_check_pressed(global.key_left) && side = "left" && placepicker = 0
		{
			if place !=0 && place !=6 && place !=12 && place !=18 && placepicker = 0
			{
			place-=1
			placepicker = 1
			}
			if place = 0 && placepicker = 0
			{
				side = "right"
				placej = 5
				place =-1
				placepicker = 1
			}
			if place = 6 && placepicker = 0
			{
				side = "right"
				placej = 11
				place =-1
				placepicker = 1
			}
			if place = 12 && placepicker = 0
			{
				side = "right"
				placej = 17
				place =-1
				placepicker = 1
			}
			if place = 18 && placepicker = 0
			{
				side = "right"
				placej = 23
				place =-1
				placepicker = 1
			}
		}
		
		
		if keyboard_check_pressed(global.key_left) && side = "right" && placepicker = 0
		{
			if placej !=0 && placej !=6 && placej !=12 && placej !=18 && placepicker = 0
			{
			placej-=1
			placepicker = 1
			}
			if placej = 0 && placepicker = 0
			{
				side = "left"
				place = 5
				placej =-1
				placepicker = 1
			}
			if placej = 6 && placepicker = 0
			{
				side = "left"
				place = 11
				placej =-1
				placepicker = 1
			}
			if placej = 12 && placepicker = 0
			{
				side = "left"
				place = 17
				placej =-1
				placepicker = 1
			}
			if placej = 18 && placepicker = 0
			{
				side = "left"
				place = 23
				placej =-1
				placepicker = 1
			}
		}
		
		
		if keyboard_check_pressed(global.key_down) && placepicker = 0
		{
			if side = "left" && place < 18 && placepicker = 0
			{
			place+=6
			placepicker = 1
			}
			if side = "left" && place > 17 && placepicker = 0
			{
			place -= 18
			placepicker = 1
			}
			if side = "right" && placej < 18 && placepicker = 0
			{
			placej+=6
			placepicker = 1
			}
			if side = "right" && placej > 17 && placepicker = 0
			{
			placej -= 18
			placepicker = 1
			}
			
		}
		
		if keyboard_check_pressed(global.key_up) && placepicker = 0
		{
			if side = "left" && place > 5 && placepicker = 0
			{
			place-=6
			placepicker = 1
			}
			if side = "left" && place < 6 && placepicker = 0
			{
			place += 18
			placepicker = 1
			}
			if side = "right" && placej > 5 && placepicker = 0
			{
			placej-=6
			placepicker = 1
			}
			if side = "right" && placej < 6 && placepicker = 0
			{
			placej += 18
			placepicker = 1
			}
			
		}
		

		placepicker = 0
		
}

if keyboard_check(vk_shift)
{
global.gold +=1	
}

		if keyboard_check_pressed(global.key_b)
		{

			scrInventoryJump()			

			ds_list_destroy(list)
			oShopkeeper.text = false
			oShopkeeper.talking = false
			oShopkeeper.createtext = false
			oShopkeeper.create = false
			instance_destroy(oText)
			instance_destroy(id)
			global.cutscene = false
		}