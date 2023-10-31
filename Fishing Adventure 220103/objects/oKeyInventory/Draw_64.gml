if (live_call()) return live_result;

if instance_exists(oFishGuide)
	{	
		if oFishGuide.sida = 0 || oFishGuide.sida = -1 //&& oFishGuide.menuchoice = 0 
		{
			for (var i = 0; i < KEYINVENTORY_SLOTS; i += 1)
			{
				var xx = 118 + x + (i mod rowLenght) * 28
				var yy = 206 + oFishGuide.y + (i div rowLenght) * 22
				
				if (inventory[i] != -1)
				{
						draw_sprite_ext(sItemsIcon,inventory[i],xx+12,yy+12,1,1,0,c_white,oFishGuide.alpha)
				}
			}

		}

	}