if scrInventorySearch(oInventory,fish-1) !=-1 && global.showAquaVistaLight = true
		{	
			draw_circle_color(x,y,5,global.color[9],global.color[10],false)
		}

draw_self()
draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,0.5)
