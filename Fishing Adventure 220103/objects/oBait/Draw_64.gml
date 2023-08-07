if instance_exists(oFishGuide)
{
		if oFishGuide.sida = -1 && oFishGuide.menuchoice = 1 
		{
			for (var i = 0; i < 12; i += 1)
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
					}
				if (inventory[i] != -1)
				{
					draw_sprite_ext(sBaitIcon,inventory[i],xx+12,yy+12,1,1,0,c_white,oFishGuide.alpha)
					if place = i
					{
						draw_sprite_ext(sSlot,1,xx,yy,1,1,0,c_white,oFishGuide.alpha)
						scrDrawSet(fStandard,c_black,fa_center)	
						name = scrStringWrap(global.baitarray[i+1,0],130,"\n",true)
						draw_text_color(oFishGuide.x+70,oFishGuide.y+75,name,c_black,c_black,c_black,c_black,oFishGuide.alpha)
						scrDrawSet(fTextbox,c_black,fa_center)	
							if global.activebait = i+1
							{
								draw_text_color(oFishGuide.x+70,oFishGuide.y+98,"Active",c_green,c_green,c_green,c_green,oFishGuide.alpha)
							}
							else
							{
								draw_text_color(oFishGuide.x+70,oFishGuide.y+98,"Press " + string(oGame.keyboard[global.key_a]) + " to activate",c_black,c_black,c_black,c_black,oFishGuide.alpha)
						
								if keyboard_check_pressed(global.key_a) && buttonreset = 0
								{
									global.activebait = i+1
									buttonreset = 1
								}
							}
						desc = scrStringWrap(global.baitarray[i+1,1],130,"\n",true)
						draw_text_color(oFishGuide.x+70,oFishGuide.y+185,desc,c_black,c_black,c_black,c_black,oFishGuide.alpha)
						draw_sprite_ext(sBaitIcon,inventory[i],oFishGuide.x+68,oFishGuide.y+145,4,4,0,c_white,oFishGuide.alpha)
					}
				}
			}
		buttonreset = 0
		}
}