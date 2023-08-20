//if (live_call()) return live_result;

if instance_exists(oFishGuide)
	{
		
		if oFishGuide.sida = -1 && oFishGuide.menuchoice = 0 
		{
			for (var i = 0; i < INVENTORY_SLOTS; i += 1)
			{
				var xx = x+ (i mod rowLenght) * 28 + 2
				var yy = y + (i div rowLenght) * 28 + 2
				
				
				
				if place != i
					{
						draw_sprite_ext(sSlot,0,xx,yy,1,1,0,c_white,oFishGuide.alpha)
					}
				if place = i
					{
						draw_sprite_ext(sSlot,1,xx,yy,1,1,0,c_white,oFishGuide.alpha)
						
						if keyboard_check_pressed(global.key_a) && inventory[place] !=-1 && canpick = true
						{
							discard = true
							canpick = false
						}
					}
				
				if (inventory[i] != -1)
					{
						if place = i
						{

							scrInventoryNameDesc(oInventory)
							scrDrawSet(fTextboxLarge,c_black,fa_center)	
							name = scrStringWrap(inventoryname,130,"\n",true)
							draw_text_color(oFishGuide.x+70,oFishGuide.y+78,string(global.fisharray[inventory[i]+1,4]),c_black,c_black,c_black,c_black,oFishGuide.alpha)
							scrDrawSet(fTextbox,c_black,fa_center)		
							draw_text_color(oFishGuide.x+70,oFishGuide.y+175,string(scrStringWrap(global.fisharray[inventory[i]+1,6],130,"\n",true)) + string("\nWorth ") + string(global.fisharray[inventory[i]+1,3]) + string(" gold."),c_black,c_black,c_black,c_black,oFishGuide.alpha)
							
							//Ritar stor sprite på höger sida
							if global.vegan = false
							{
								sprite_set_offset(global.fisharray[inventory[i]+1,1],sprite_get_width(global.fisharray[inventory[i]+1,1]) / 2,sprite_get_height(global.fisharray[inventory[i]+1,1]) /2)
								draw_sprite_ext(global.fisharray[inventory[i]+1,1],0,oFishGuide.x+70,oFishGuide.y+135,4,4,0,c_white,oFishGuide.alpha)		
								sprite_set_offset(global.fisharray[inventory[i]+1,1],global.fisharray[inventory[i]+1,7],global.fisharray[inventory[i]+1,8])
							}
							else
							{
								sprite_set_offset(global.fisharray[inventory[i]+1,2],sprite_get_width(global.fisharray[inventory[i]+1,2]) / 2,sprite_get_height(global.fisharray[inventory[i]+1,2]) /2)
								draw_sprite_ext(global.fisharray[inventory[i]+1,2],0,oFishGuide.x+70,oFishGuide.y+135,4,4,0,c_white,oFishGuide.alpha)		
								sprite_set_offset(global.fisharray[inventory[i]+1,1],global.fisharray[inventory[i]+1,9],global.fisharray[inventory[i]+1,10])	
							}
						}
					}	
				
				if (inventory[i] != -1)
				{
					//Ritar liten sprite på vänster sida
					if global.vegan = false
					{
						sprite_set_offset(global.fisharray[inventory[i]+1,1],sprite_get_width(global.fisharray[inventory[i]+1,1]) / 2,sprite_get_height(global.fisharray[inventory[i]+1,1]) /2)
						draw_sprite_ext(global.fisharray[inventory[i]+1,1],0,xx+12,yy+12,1,1,0,c_white,oFishGuide.alpha)
						sprite_set_offset(global.fisharray[inventory[i]+1,1],global.fisharray[inventory[i]+1,7],global.fisharray[inventory[i]+1,8])
					}
					else
					{
						sprite_set_offset(global.fisharray[inventory[i]+1,2],sprite_get_width(global.fisharray[inventory[i]+1,2]) / 2,sprite_get_height(global.fisharray[inventory[i]+1,2]) /2)
						draw_sprite_ext(global.fisharray[inventory[i]+1,2],0,xx+12,yy+12,1,1,0,c_white,oFishGuide.alpha)
						sprite_set_offset(global.fisharray[inventory[i]+1,2],global.fisharray[inventory[i]+1,9],global.fisharray[inventory[i]+1,10])	
					}
						scrDrawSet(fTextboxSmall,c_black,fa_right)
						draw_text_ext_color(xx+23,yy+15,ds_list_find_value(list,inventory[i]),50,50,c_black,c_black,c_black,c_black,oFishGuide.alpha)
						draw_text_ext_color(xx+24,yy+14,ds_list_find_value(list,inventory[i]),50,50,c_black,c_black,c_black,c_black,oFishGuide.alpha)
						draw_text_ext_color(xx+22,yy+14,ds_list_find_value(list,inventory[i]),50,50,c_black,c_black,c_black,c_black,oFishGuide.alpha)
						draw_text_ext_color(xx+23,yy+13,ds_list_find_value(list,inventory[i]),50,50,c_black,c_black,c_black,c_black,oFishGuide.alpha)
						draw_text_ext_color(xx+23,yy+14,ds_list_find_value(list,inventory[i]),50,50,c_white,c_white,c_white,c_white,oFishGuide.alpha)
				}
			}
		canpick = true
		
			if discard = true //HÄR KAN MAN SLÄNGA BORT FISKARNA OKEJ VAD BRA MEN DET ÄR JU BÄTTRE ATT SÄLJA DEM ALLTSÅ...
			{
				if textx < 0.95
				{
				textxbigger = true
				}
				if textx > 1.05
				{
				textxbigger = false
				}
				
				if textxbigger = true
				{
				textx += random(0.004)
				}
				else
				{
				textx -= random(0.004)
				}
				
				scrDrawSet(fTextbox,c_black,fa_center)
				//draw_text_transformed(oFishGuide.x+70,oFishGuide.y+92,"Release this guy?",textx,texty,0)
				scrTextOutline(oFishGuide.x+70,oFishGuide.y+92,"Release this guy?",400,oFishGuide.alpha,c_white,c_black)
				scrDrawSet(fTextbox,c_black,fa_center)
				scrTextOutline(oFishGuide.x+35,oFishGuide.y+105,"Yes",30,oFishGuide.alpha,c_white,c_black)
				scrTextOutline(oFishGuide.x+70,oFishGuide.y+105,"No",30,oFishGuide.alpha,c_white,c_black)
				scrTextOutline(oFishGuide.x+105,oFishGuide.y+105,"All",30,oFishGuide.alpha,c_white,c_black)


				if stop_a_button = false
				{
					keyboard_clear(global.key_a)
					stop_a_button = true
				}
				
				if discardchoice = 1
				{
					scrTextOutline(oFishGuide.x+35,oFishGuide.y+105,"Yes",30,oFishGuide.alpha,c_white,c_green)
				}
				
				if discardchoice = 0
				{
					scrTextOutline(oFishGuide.x+70,oFishGuide.y+105,"No",30,oFishGuide.alpha,c_white,c_green)
				}
				
				if discardchoice = -1
				{
					scrTextOutline(oFishGuide.x+105,oFishGuide.y+105,"All",30,oFishGuide.alpha,c_white,c_green)
				}
				

				if keyboard_check_pressed(global.key_right) && canpick = true
				{
					if discardchoice > -1
					{
						discardchoice -=1
					}
					else
					{
						discardchoice = 1
					}
				}
				
				
				if keyboard_check_pressed(global.key_left) && canpick = true
				{
					if discardchoice < 1
					{
						discardchoice += 1
					}
					else
					{
						discardchoice = -1
					}
				}
				
				
				if keyboard_check_pressed(global.key_a) && canpick = true
				{
					if discardchoice = 0 //NO
					{
						discard = false
						canpick = false
						stop_a_button = false
					}
					if discardchoice = 1 //YES
					{
						scrInventoryRemove(oInventory,inventory[place])
						discardchoice = false
						stop_a_button = false
						yescolor = c_red
						nocolor = c_green
						discard = false
						canpick = false
					}
					if discardchoice = -1 //ALL
					{
						repeat(ds_list_find_value(list,inventory[place]))
						{
						scrInventoryRemove(oInventory,inventory[place])
						}
						discardchoice = false
						stop_a_button = false
						yescolor = c_red
						nocolor = c_green
						discard = false
						canpick = false
					}	
				}
			}
		
		}
		else
		{
		canpick = false
		}
	}