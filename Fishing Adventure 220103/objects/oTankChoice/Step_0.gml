
if y1 > y1target
{
	y1 -=5
}
else
{
	alpha +=0.1
}
	
	if keyboard_check_pressed(global.key_b)
	{
		oGame.textboxtimer = true
		tank.talking = false
		tank.createtext = false
		instance_destroy(oTextSign)
		instance_destroy(id)	
	}

	if keyboard_check_pressed(global.key_a)
	{
			if nocolor = c_green
			{
				tank.talking = false
				tank.createtext = false
				instance_destroy(oTankChoice)
				instance_destroy(oTextSign)
				oGame.textboxtimer = true
			}
			if yescolor = c_green
			{
				instance_create_depth(random_range(tank.x-10,tank.x+10),random_range(tank.y-4,tank.y+4),tank.depth-1,oFishInTank,{tank : tank})
				scrInventoryRemove(oInventory,tank.fish-1)
				global.fishInTank[tank.fish] +=1
				global.totalFishScore += global.fisharray[tank.fish,11]
				tank.talking = false
				tank.createtext = false
				
				for (var i = 0; i < array_length(oAquaVistaController.tankGuide); ++i)
					{
					   if (oAquaVistaController.tankGuide[i] == tank.id)
					    {
						array_delete(oAquaVistaController.tankGuide,i,1)
						}
					}
				
				instance_destroy(oTankChoice)
				instance_destroy(oTextSign)
				oGame.textboxtimer = true
			}
	}
	
	if keyboard_check_pressed(global.key_left)
		{
			nocolor = c_white
			yescolor = c_green
		}
	if keyboard_check_pressed(global.key_right)
		{
			nocolor = c_green
			yescolor = c_white
		}

	
