if (live_call()) return live_result;
if y1 > y1target
{
	y1 -=5
}
else
{
	alpha +=0.1
}




/////////////////////////////////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////


if keyboard_check_pressed(global.key_b)
	{
		global.textbox = false
		instance_destroy(self)
		global.cutscene = false
		show_debug_message("hallådär")
	}

if howMany = false
{
	if keyboard_check_pressed(global.key_a)
	{
		if yes = true
		{
			howMany = true
			scrNewTextbox(oShopkeeper.dialog[8],1)
		}
		if yes = false
		{
			instance_destroy(self)
		}
	}
}


if howMany = true
{
			if keyboard_check_pressed(global.key_left)
			{
				antal -=1
			}
			
			if keyboard_check_pressed(global.key_right)
			{
				antal+=1
			}
			
			if keyboard_check(global.key_left) || keyboard_check(global.key_right)
			{
				timer -=1
			}
			
			if timer < 0
			{
				if keyboard_check(global.key_left)
				{
					antal -=1
				}
				
				if keyboard_check(global.key_right)
				{
						antal+=1
				}
				
			}
			
			if keyboard_check_released(global.key_left) || keyboard_check_released(global.key_right)
			{
				timer = 30
			}
			
			
			antal = clamp(antal,0,999)

	
	if keyboard_check_pressed(global.key_a) && wannaBuy = false
	{
	wannaBuy = true
	}

}

if wannaBuy = true
{
	if  oShop.inventorygold * antalSave > 0 //Man köper fler än 0 av någotr
	{
		
		if keyboard_check_pressed(global.key_a) 
		{
			if yes = true
				{
					if global.gold >= oShop.inventorygold * antalSave
					{
						//instance_destroy(oText)
						//scrNewTextbox(dialog[3],0)
			
						for (var i = 1; i < antalSave; ++i) {
						   scrInventoryAdd(oInventory,oShop.place)
						   global.gold -= oShop.inventorygold
						}
			
						wannaBuy = false
						created2 = false
						howMany = false
						antal = 1
					}
					
					else
					
					{
						//instance_destroy(oText)
						//scrNewTextbox(dialog[4],0)
						oShopkeeper.expensive = true
						wannaBuy = false
						howMany = false
						created2 = false
						antal = 1
					}
				}
				else
				{
				instance_destroy(self)
				wannaBuy = false
				howMany = false
				created2 = false
				antal = 1
				}
		}
	
	}
	else
	{
		//instance_destroy(oText)
		//scrNewTextbox(dialog[5],0) //DIALOG SKA VARA TYP "YOU WANT... ZERO OF IT???"
		wannaBuy = false
		howMany = false
		created2 = false
		antal = 1
	}
	
	
	if keyboard_check_pressed(global.key_b)
	{
		instance_destroy(self)
		wannaBuy = false
		created2 = false
		howMany = false
		antal = 1
	}
}
	
////////////////////////////////////////////////////
////////////////////////////////////////////////////
////////////////////////////////////////////////////
////////////////////////////////////////////////////
////////////////////////////////////////////////////
////////////////////////////////////////////////////
////////////////////////////////////////////////////
////////////////////////////////////////////////////





























/*
if val = 0 
{
	if oShop.question = 1
	{
	buycolor = c_green
	}

	if oShop.placej !=-1
	{
	//if ds_list_find_value(oShop.list,oShop.inventory[oShop.placej]) = 1 
	if oShop.inventory[oShop.placej] = 1 
	{
		oShop.many = "1"
		oShop.howmany = true
	}
	}
	
	if oShop.place !=-1
	{
	//if ds_list_find_value(oInventory.list,oInventory.inventory[oShop.place]) = 1 
	if oInventory.inventory[oShop.place] = 1 
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
					  
						//repeat(ds_list_find_value(oShop.list,oShop.inventory[oShop.placej]))
						repeat oShop.stacks[oShop.placej]
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
				
				//repeat(ds_list_find_value(oInventory.list,oInventory.inventory[oShop.place]))
				repeat oInventory.stacks[oShop.place]
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
