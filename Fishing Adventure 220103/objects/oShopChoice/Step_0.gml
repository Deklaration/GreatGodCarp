
if y1 > y1target
{
	y1 -=5
}
else
{
	alpha +=0.1
}

if val = 0 
{
	if oShop.question = 1
	{
	buycolor = c_green
	}

	if oShop.placej !=-1
	{
	if ds_list_find_value(oShop.list,oShop.inventory[oShop.placej]) = 1 
	{
		oShop.many = "1"
		oShop.howmany = true
	}
	}
	
	if oShop.place !=-1
	{
	if ds_list_find_value(oInventory.list,oInventory.inventory[oShop.place]) = 1 
	{
		oShop.many = "1"
		oShop.howmany = true
	}
	}		



	if keyboard_check_pressed(global.key_a) && oShop.howmany = false
	{
		oShop.question = 2
		oShop.howmany = true
		oShop.many = "1"
		sellcolor = c_green
		buycolor = c_white
		keyboard_clear(global.key_a)
	}
	
	if oShop.howmany = true
	{
		if keyboard_check_pressed(global.key_left)
		{
			sellcolor = c_white
			buycolor = c_green
			oShop.many = "All"
		}
		if keyboard_check_pressed(global.key_right)
		{
			sellcolor = c_green
			buycolor = c_white
			oShop.many = "1"
		}
	}
	
	
	
	
	
	
	//show_debug_message(oShop.inventorygold)

	if keyboard_check_pressed(global.key_a) && oShop.howmany = true
	{


		//KÖPA 
		if oShop.side = "right"
		{
			if oShop.many = "1"	
			{	
				if global.gold >= oShop.inventorygold
				{
					for (var i = 0; i<24; i++) 
					{
			
						  if oInventory.inventory[i] = -1
						  {
							global.gold -= oShop.inventorygold
							scrInventoryAdd(oInventory,oShop.inventory[oShop.placej])				
							scrInventoryRemove(oShop,oShop.inventory[oShop.placej])
							oShopkeeper.bagfull = false
							oShop.question = 1
							oShop.howmany = false
							oShop.many = "0"
							break
						  }
						 else
							{
							oShopkeeper.bagfull = true
							oShop.question = 1
							oShop.howmany = false
							oShop.many = "0"
							}
					}
				}	
				else
				{
				oShopkeeper.expensive = true
				oShop.question = 1
				oShop.howmany = false
				oShop.many = "0"
				}
			}
			if oShop.many = "All" 
			{
				//var howmanyisall = ds_list_find_value(oInventory.list,oInventory.inventory[oShop.placej])
				//show_debug_message(string("how many? ") + string(howmanyisall))

				var howmanyisall = 0
				for (var i = 0; i<24; i++) 
				{
			
				  if oInventory.inventory[i] = -1
				  {	
					  
						repeat(ds_list_find_value(oShop.list,oShop.inventory[oShop.placej]))
						{
							howmanyisall +=1
						}
						
						if global.gold >= oShop.inventorygold * howmanyisall
						{
							repeat(howmanyisall)
							{
							scrInventoryAdd(oInventory,oShop.inventory[oShop.placej])
							scrInventoryRemove(oShop,oShop.inventory[oShop.placej])
							global.gold -= oShop.inventorygold
							}
						}
						else
						{
						oShopkeeper.expensive = true
						oShop.question = 1
						oShop.howmany = false
						oShop.many = "0"
						}
						
						
						oShopkeeper.bagfull = false
						oShop.question = 1
						oShop.howmany = false
						oShop.many = "0"
						break
					}
					else
					{	
					oShopkeeper.bagfull = true
					oShop.howmany = false
					oShop.question = 1
					oShop.many = "0"
					}
				}

		}

			
		

			
		}
		
		
		
		
		
		
		
		
		////////////////SÄLJA
		
		if oShop.side = "left"
		{
			if oShop.many = "1"	
			{		
			for (var i = 0; i<24; i++) 
			{
			  if oShop.inventory[i] = -1
			  {
			global.gold += oShop.inventorygold
			scrInventoryAdd(oShop,oInventory.inventory[oShop.place])				
			scrInventoryRemove(oInventory,oInventory.inventory[oShop.place])	
			oShopkeeper.shopfull = false
			oShop.question = 1
			oShop.howmany = false
			oShop.many = "0"
			break
			}
			else
			{
				oShopkeeper.shopfull = true
				oShop.question = 1
				oShop.howmany = false
					oShop.many = "0"
			}
			}
			}
			
			if oShop.many = "All"	
			{		
			for (var i = 0; i<24; i++) 
			{
			  if oShop.inventory[i] = -1
			  {
				
				repeat(ds_list_find_value(oInventory.list,oInventory.inventory[oShop.place]))
				{
					scrInventoryAdd(oShop,oInventory.inventory[oShop.place])
					scrInventoryRemove(oInventory,oInventory.inventory[oShop.place])
					global.gold += oShop.inventorygold
				}
			oShopkeeper.shopfull = false
			oShop.question = 1
			oShop.howmany = false
					oShop.many = "0"
			break
			}
			else
			{
				oShopkeeper.shopfull = true
				oShop.question = 1
				oShop.howmany = false
				oShop.many = "0"
			}
			}
			}
			
		}
		
		oShopkeeper.text= false
		instance_destroy(oText)
		instance_destroy(id)
	}
	
}
else
{
	buycolor = c_white
}

if oShop.question = 1
{

if val = 1
{
	sellcolor = c_green

	if keyboard_check_pressed(global.key_a)
	{
		oShop.howmany = false
		oShopkeeper.text= false
		oShop.many = "0"
		instance_destroy(oText)
		global.textbox = false
		instance_destroy(id)
	}
	

}
else
{
	sellcolor = c_white
}

if val = 2
{
	talkcolor = c_green
}
else
{
	talkcolor = c_white
}

if keyboard_check_pressed(global.key_right)
{
	if val < 1
	{
		val+=1
	}
	else
	{
		val = 0
	}
}
if keyboard_check_pressed(global.key_left)
{
	if val > 0
	{
		val-=1
	}
	else
	{
		val = 1
	}
}
}
if keyboard_check_pressed(global.key_b)
{
	instance_destroy(id)
}
