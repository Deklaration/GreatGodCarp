if (live_call()) return live_result;
//show_debug_message("exists")
if active = true
{
if keyboard_check_pressed(global.key_left)
	{
	yes = true
	}
if keyboard_check_pressed(global.key_right)
	{
	yes = false
	}
if keyboard_check_pressed(global.key_a) 
	{
	if yes = false
	{
		tank.talking = false
		tank.createtext = false
		instance_destroy(oTankYesNo)
		instance_destroy(oTextSign)
		oGame.textboxtimer = true
	}
	
	if yes = true
			{
				instance_create_depth(random_range(tank.x-10,tank.x+10),random_range(tank.y-4,tank.y+4),tank.depth-1,oFishInTank,{tank : tank})
				scrInventoryRemove(oInventory,tank.fish)
				global.fishInTank[tank.fish] +=1
				global.totalFishScore += global.fisharray[tank.fish,11]
				tank.talking = false
				tank.createtext = false
				global.placedFirstFishInTank = true
				
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
		
		
		
		
		
	//otherObject.yes = yes
	instance_destroy(self)
	global.cutscene = false
	global.key_b = b_button
	}
}	
if keyboard_check_pressed(global.key_a)
{
yset = ytarget;
alpha = 1;
}
	if yset > ytarget
	{
		yset -=2
		alpha +=0.3
	}
	else
	{
		active = true
	}