//live()
//if (live_call()) return live_result;

scrNineSliceBoxStretched(sTextbox,x-10,y1,x+178,y2,0)
scrNineSliceBoxStretched(sTextbox,x-10+200,y1,x+178+200,y2,0)

		scrDrawSet(fTextboxLarge,c_black,fa_center)
		draw_text_color(x+84,y-20,"My stuff",c_black,c_black,c_black,c_black,alpha)
		draw_text_color(x+284,y-20,"Shopkeepers stuff",c_black,c_black,c_black,c_black,alpha)
		scrDrawSet(fTextboxLarge,c_white,fa_center)
		draw_text_color(x+84,y-21,"My stuff",c_white,c_white,c_white,c_white,alpha)
		draw_text_color(x+284,y-21,"Shopkeepers stuff",c_white,c_white,c_white,c_white,alpha)
		
		//YOUR STUFF
		
		for (var i = 0; i < INVENTORY_SLOTS; i += 1)
			{
				var xx = x+ (i mod rowLenght) * 28 + 2
				var yy = y + (i div rowLenght) * 28 + 2
				
				
				if place != i
					{
						draw_sprite_ext(sSlot,0,xx,yy,1,1,0,c_white,alpha)
					}
				if place = i
					{
						draw_sprite_ext(sSlot,1,xx,yy,1,1,0,c_white,alpha)
					}

				if (oInventory.inventory[i] != -1)
					{
						if place = i
						{
							
							scrInventoryNameDesc(oInventory)
						}
					}	
				
				if (oInventory.inventory[i] != -1)
				{
					if global.vegan = false
					{
						sprite_set_offset(global.fisharray[oInventory.inventory[i]+1,1],sprite_get_width(global.fisharray[oInventory.inventory[i]+1,1]) / 2,sprite_get_height(global.fisharray[oInventory.inventory[i]+1,1]) /2)
						draw_sprite_ext(global.fisharray[oInventory.inventory[i]+1,1],0,xx+12,yy+12,1,1,0,c_white,alpha)
						sprite_set_offset(global.fisharray[oInventory.inventory[i]+1,1],global.fisharray[oInventory.inventory[i]+1,7],global.fisharray[oInventory.inventory[i]+1,8])
					
					}
					else
					{
						sprite_set_offset(global.fisharray[oInventory.inventory[i]+1,2],sprite_get_width(global.fisharray[oInventory.inventory[i]+1,2]) / 2,sprite_get_height(global.fisharray[oInventory.inventory[i]+1,2]) /2)
						draw_sprite_ext(global.fisharray[oInventory.inventory[i]+1,2],0,xx+12,yy+12,1,1,0,c_white,alpha)
						sprite_set_offset(global.fisharray[oInventory.inventory[i]+1,2],global.fisharray[oInventory.inventory[i]+1,9],global.fisharray[oInventory.inventory[i]+1,10])	
					
						//draw_sprite_ext(sVeganIcon,oInventory.inventory[i],xx,yy,1,1,0,c_white,alpha)
					}
						scrDrawSet(fTextboxSmall,c_black,fa_right)
						scrTextOutline(xx+23,yy+15,ds_list_find_value(oInventory.list,oInventory.inventory[i]),50,alpha,c_black,c_white)
				}

			}
			
			
			//SHOPKEEPERS STUFF
			
			for (var j = 0; j < INVENTORY_SLOTS; j += 1)
			{
				var xx = x+ (j mod rowLenght) * 28 + 2
				var yy = y + (j div rowLenght) * 28 + 2
				
				
				if placej != j
					{
						draw_sprite_ext(sSlot,0,xx +200,yy,1,1,0,c_white,alpha)
					}
				if placej = j
					{
						draw_sprite_ext(sSlot,1,xx +200,yy,1,1,0,c_white,alpha)
					}
					
				if (inventory[j] != -1)
					{
						if placej = j
						{
							
							scrInventoryNameDescJ()
						}
					}	

				if (inventory[j] != -1)
				{
					if global.vegan = false
					{
						sprite_set_offset(global.fisharray[inventory[j]+1,1],sprite_get_width(global.fisharray[inventory[j]+1,1]) / 2,sprite_get_height(global.fisharray[inventory[j]+1,1]) /2)
						draw_sprite_ext(global.fisharray[inventory[j]+1,1],0,xx+200+12,yy+12,1,1,0,c_white,alpha)
						sprite_set_offset(global.fisharray[inventory[j]+1,1],global.fisharray[inventory[j]+1,7],global.fisharray[inventory[j]+1,8])
						
					}
					else
					{
						sprite_set_offset(global.fisharray[inventory[j]+1,2],sprite_get_width(global.fisharray[inventory[j]+1,2]) / 2,sprite_get_height(global.fisharray[inventory[j]+1,2]) /2)
						draw_sprite_ext(global.fisharray[inventory[j]+1,2],0,xx+200+12,yy+12,1,1,0,c_white,alpha)
						sprite_set_offset(global.fisharray[inventory[j]+1,2],global.fisharray[inventory[j]+1,9],global.fisharray[inventory[j]+1,10])
					}
						scrDrawSet(fTextboxSmall,c_black,fa_right)
						scrTextOutline(xx+223,yy+15,ds_list_find_value(list,inventory[j]),50,alpha,c_black,c_white)
				}
				
			}