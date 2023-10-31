
if (live_call()) return live_result;

if shopActive = true
{


//scrNineSliceBoxStretched(sTextbox,25,y1,213,y2,1)
//scrNineSliceBoxStretched(sTextbox,267,y1,455,y2,1)


		scribble("My stuff").align(fa_center,fa_middle).blend(c_white,alpha).starting_format("fFishdexShadow",global.color[19]).draw(118,52)
		scribble("Shopkeepers stuff").align(fa_center,fa_middle).blend(c_white,alpha).starting_format("fFishdexShadow",global.color[19]).draw(358,52)

		
		//YOUR STUFF
		
		for (var i = 0; i < INVENTORY_SLOTS; i += 1)
			{
				var xx = 37 + (i mod rowLenght) * 28 
				var yy = 64 + (i div rowLenght) * 28
				
				
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
						sprite_set_offset(global.fisharray[oInventory.inventory[i],1],sprite_get_width(global.fisharray[oInventory.inventory[i],1]) / 2,sprite_get_height(global.fisharray[oInventory.inventory[i],1]) /2)
						draw_sprite_ext(global.fisharray[oInventory.inventory[i],1],0,xx+12,yy+12,1,1,0,c_white,alpha)
						sprite_set_offset(global.fisharray[oInventory.inventory[i],1],global.fisharray[oInventory.inventory[i],7],global.fisharray[oInventory.inventory[i],8])
					
					}
					else
					{
						sprite_set_offset(global.fisharray[oInventory.inventory[i],2],sprite_get_width(global.fisharray[oInventory.inventory[i],2]) / 2,sprite_get_height(global.fisharray[oInventory.inventory[i],2]) /2)
						draw_sprite_ext(global.fisharray[oInventory.inventory[i],2],0,xx+12,yy+12,1,1,0,c_white,alpha)
						sprite_set_offset(global.fisharray[oInventory.inventory[i],2],global.fisharray[oInventory.inventory[i],9],global.fisharray[oInventory.inventory[i],10])	
					
						//draw_sprite_ext(sVeganIcon,oInventory.inventory[i],xx,yy,1,1,0,c_white,alpha)
					}
						scrDrawSet(fTextboxSmall,c_black,fa_right)
						scrTextOutline(xx+23,yy+15,oInventory.stacks[i],50,alpha,c_black,c_white)
				}

			}
			
			
		//SHOPKEEPERS STUFF
			
		for (var j = 0; j < INVENTORY_SLOTS; j += 1)
			{
				var xx = 79 + (j mod rowLenght) * 28
				var yy = 64 + (j div rowLenght) * 28
				
				
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
						sprite_set_offset(global.fisharray[inventory[j],1],sprite_get_width(global.fisharray[inventory[j],1]) / 2,sprite_get_height(global.fisharray[inventory[j],1]) /2)
						draw_sprite_ext(global.fisharray[inventory[j],1],0,xx+200+12,yy+12,1,1,0,c_white,alpha)
						sprite_set_offset(global.fisharray[inventory[j],1],global.fisharray[inventory[j],7],global.fisharray[inventory[j],8])
						
					}
					else
					{
						sprite_set_offset(global.fisharray[inventory[j],2],sprite_get_width(global.fisharray[inventory[j],2]) / 2,sprite_get_height(global.fisharray[inventory[j],2]) /2)
						draw_sprite_ext(global.fisharray[inventory[j],2],0,xx+200+12,yy+12,1,1,0,c_white,alpha)
						sprite_set_offset(global.fisharray[inventory[j],2],global.fisharray[inventory[j],9],global.fisharray[inventory[j],10])
					}
						scrDrawSet(fTextboxSmall,c_black,fa_right)
						//scrTextOutline(xx+223,yy+15,global.fisharray[inventory[j],3],50,alpha,c_black,c_white)
				}
				
			}
		
		
		//HOW MANY?
		
		if howMany = true// && wannaBuy = false
			{
					draw_sprite_ext(sTinyArrow,0,222,238+leftArrowYPos,-1,1,0,c_white,alpha)
					draw_sprite_ext(sTinyArrow,1,222,238+leftArrowYPos,-1,1,0,global.color[leftColor],alpha)
					draw_sprite_ext(sTinyArrow,0,256,238+rightArrowYPos,1,1,0,c_white,alpha)
					draw_sprite_ext(sTinyArrow,1,256,238+rightArrowYPos,1,1,0,global.color[rightColor],alpha)
					scribble(string(antal)).wrap(300,300).align(fa_center,fa_middle).starting_format("fFishdexShadow",global.color[19]).draw(240,239)
			}
		
}