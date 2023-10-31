if (live_call()) return live_result;
depth =-y;
//show_debug_message(string("howMany: ") + string(howMany))
//show_debug_message(string("createtext:  ") + string(createtext))
//show_debug_message(string("text:  ") + string(text))
//show_debug_message(string("createshopchoice: ") + string(createshopchoice))
//show_debug_message(string("createdHowMany:  ") + string(createdHowMany))
//show_debug_message(string("talking:  ") + string(talking))
//show_debug_message(string("yes: ") + string(yes))
//show_debug_message(string("cutscene: ") + string(global.cutscene))
//show_debug_message(string("textbox: ") + string(global.textbox))

if global.paused = false && global.textbox = false && global.cutscene = false// && global.daugava_set > 4 //Pratar med
{

if (place_meeting(x-1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = -1)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		//image_xscale =-1
		//image_index = 2
		talking = true
		global.textbox = true
		alpha = 0
	}
}




if (place_meeting(x+1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = 1)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		//image_xscale =1
		//image_index = 2
		talking = true
		global.textbox = true
		alpha = 0
	}
	
}

if (place_meeting(x,y-1,oProt) && oProt.sprite_index = sProt_South)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		//image_xscale =1
		//image_index = 1
		talking = true
		global.textbox = true
		alpha = 0
	}
	
}


if (place_meeting(x,y+1,oProt) && oProt.sprite_index = sProt_North)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		//image_xscale =1
		//image_index = 0
		talking = true
		global.textbox = true
		alpha = 0
	}
}
}


if talking = true
{
	global.cutscene = true
	timer -=1
}

if timer < 0
{
	shopActive = true
}

if shopActive = true
{

	if talking = true && createtext = false && howMany = false
	{
		scrNewTextbox(dialog[0],0)
		global.talkedtoShop = true
		createtext = true
		oProt.image_index = 0
	}


	if talking = true && instance_exists(oText)
	{
		oText.NPC = self
	}

	if keyboard_check_pressed(global.key_a) && talking = true && howMany = false// && instance_exists(oShop) && !instance_exists(oShopChoice)
	{
		//Sälja
		if side = "left" && text = false && oInventory.inventory[place] > -1
		{
		dialog[1] = string_upper(global.fishNames[oInventory.inventory[place]]) + "! I CAN PAY YOU " + string(inventorygold) + " FISHDOLLARS FOR THAT. WANNA SELL?"
		instance_destroy(oText)
		scrNewTextbox(dialog[1],0)
		instance_create_depth(x,y,0,oYesNo,{otherObject : id})
		text = true
		}
	
		//Köpa
		if side = "right" && text = false && inventory[placej] > -1
		{
		dialog[2] = string_upper(global.fishNames[inventory[placej]]) + "! THAT ONE COSTS " + string(inventorygold) + " FISHDOLLARS. WANNA BUY?"
		instance_destroy(oText)
		scrNewTextbox(dialog[2],0)
		instance_create_depth(x,y,0,oYesNo,{otherObject : id})
		text = true
		}
	}
	
	
	// Logic for confirming or declining a purchase/sale
	if yes = true
	{
		yes = -1
		howMany = true
		antal = 1
		createdHowMany = false
	}
	if yes = false
	{
		yes = -1
		if instance_exists(oText)
		{
		instance_destroy(oText)
		}
		scrNewTextbox(dialog[30],0)
		createtext = false
		text = false
		createdHowMany = false
	}
	
	
	
	
	 // Logic for handling the quantity of items to buy/sell
	if howMany = true && createdHowMany = false
	{
		instance_destroy(oText)
		scrNewTextbox(dialog[irandom_range(31,50)],0)
		createdHowMany = true
	}
	
	
	
	if howMany = true && keyboard_check_pressed(global.key_a) && side = "right" //Köpa
	{
		if global.gold >= inventorygold * antal
		{
			instance_destroy(oText)
			scrNewTextbox(dialog[irandom_range(9,18)],0)
			for (var i = 0; i < antal; ++i) {
			    scrInventoryAdd(oInventory,inventory[placej])
				global.gold -= inventorygold
			}
			howMany = false
			createtext = false
			text = false
			createdHowMany = false
		}
		else
		{
			expensive = true
		}
	}
	
	if howMany = true && keyboard_check_pressed(global.key_a) && side = "left" //Sälja
	{
		instance_destroy(oText)
		scrNewTextbox(dialog[irandom_range(19,29)],0)
		
		for (var i = 0; i < antal; ++i) {
		    scrInventoryRemove(oInventory,oInventory.inventory[place])
			global.gold += inventorygold
			show_debug_message(oInventory.inventory[place])
		}
		createtext = false
		howMany = false
		text = false
		createdHowMany = false
	}

 // Logic for handling "expensive" and "full bag" conditions
	if expensive = true && talking = true
	{
		howMany = false
		instance_destroy(oText)
		scrNewTextbox(dialog[irandom_range(51,56)],0)
		expensive = false
		createtext = false
		text = false
		createdHowMany = false
	}


	if bagfull = true && talking = true 
	{
		instance_destroy(oText)
		scrNewTextbox(dialog[3],0)
		bagfull = false
		createtext = false
		text = false
		createdHowMany = false
	}
	
	if shopfull = true && talking = true 
	{
		instance_destroy(oText)
		scrNewTextbox(dialog[4],0)
		//instance_destroy(oShop)
		shopfull = false
		createtext = false
		text = false
		createdHowMany = false
	}


}