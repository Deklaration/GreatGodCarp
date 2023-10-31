if (live_call()) return live_result;
antalSave = antal

if shopActive = true
{
	if side = "right" && inventory[placej] > 0
	{
		inventorygold = global.fisharray[inventory[placej],3]
	}
	if side = "left" && oInventory.inventory[place] > 0
	{
		inventorygold = global.fisharray[oInventory.inventory[place],3]
	}
}

if global.talkedtoShop = true
{
dialog[0] = "BUY OR SELL SOMETHING, WILL YA! WHAT DO YOU WANT?"
}
else
{
dialog[0] = "OOOH, YOU'RE THE NEW KID ON [rainbow][wave]PISC ISLAND[/wave][/rainbow]! I'VE OPENED MY SHOP FOR YOU, AND THE TOURISTS YOU'LL BRING HERE! \nWELCOME, WELCOME, WELCOME!"
}

	if howMany = true && instance_exists(oText)
	{	
		if side = "right" //Köpa
		{
			
			if inventory[placej] > 1
			{
			
			if inventorygold * antal = 1
			{			
				oText.textmessage = "HOW MANY? THAT WOULD BE JUST ONE TINY LITTLE FISHDOLLAR! CHEAP, CHEAP!"
			}
			if inventorygold * antal > 1
			{				
				oText.textmessage = "HOW MANY? THAT WOULD BE " + string(inventorygold * antal) + " COOL FISHDOLLARS."
			}
			if inventorygold * antal = 0 
			{				
				oText.textmessage = "HOW MANY? IT'S FREE IF YOU BUY NOTHING!!"
			}
			
			
			}
			
		}
		if side = "left" //Sälja
		{
			
			if oInventory.inventory[place] > 1
			{
			
				if inventorygold * antal = 1
				{
			
				oText.textmessage = "HOW MANY? I WOULD PAY A SINGLE LITTLE FISHDOLLAR FOR THAT ONE."
				}
				
				if inventorygold * antal > 1
				{
				oText.textmessage = "HOW MANY? I WOULD PAY " + string(inventorygold * antal) + " SHINY FISHDOLLARS FOR THOSE!"
				}
				
				if inventorygold * antal = 0
				{
				oText.textmessage = "I WOULD GLADLY GIVE YOU ZERO FISHDOLLARS FOR NONE OF THEM!"
				}
			}
		}
	}


///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////PLACEPICKER////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////


		placepickerx = 54
		placepickery = 50
if shopActive = true		
{
		if y1 > y1target
		{
		y1 -=20
		}
		else
		{
			alpha +=0.1
		}
		if y2 > y2target
		{
		y2 -=20
		}
		
		if y2 < y2target
		{
			y2 = y2target
		}
		if y1 < y1target
		{
			y1 = y1target
		}
}

if !instance_exists(oYesNo) && howMany = false && shopActive = true
{
		
		if keyboard_check_pressed(global.key_right) && side = "left" && placepicker = 0
		{
			if place !=5 && place !=11 && place !=17 && place !=23 && placepicker = 0
			{
			place+=1
			placepicker = 1
			}
			if place = 5 && placepicker = 0
			{
				side = "right"
				placej = 0
				place =-1
				placepicker = 1
			}
			if place = 11 && placepicker = 0
			{
				side = "right"
				placej = 6
				place =-1
				placepicker = 1
			}
			if place = 17 && placepicker = 0
			{
				side = "right"
				placej = 12
				place =-1
				placepicker = 1
			}
			if place = 23 && placepicker = 0
			{
				side = "right"
				placej = 18
				place =-1
				placepicker = 1
			}
		}
		
		
		if keyboard_check_pressed(global.key_right) && side = "right" && placepicker = 0
		{
			if placej !=5 && placej !=11 && placej !=17 && placej !=23 && placepicker = 0
			{
			placej+=1
			placepicker = 1
			}
			if placej = 5 && placepicker = 0
			{
				side = "left"
				place = 0
				placej =-1
				placepicker = 1
			}
			if placej = 11 && placepicker = 0
			{
				side = "left"
				place = 6
				placej =-1
				placepicker = 1
			}
			if placej = 17 && placepicker = 0
			{
				side = "left"
				place = 12
				placej =-1
				placepicker = 1
			}
			if placej = 23 && placepicker = 0
			{
				side = "left"
				place = 18
				placej =-1
				placepicker = 1
			}

		}
		
		if keyboard_check_pressed(global.key_left) && side = "left" && placepicker = 0
		{
			if place !=0 && place !=6 && place !=12 && place !=18 && placepicker = 0
			{
			place-=1
			placepicker = 1
			}
			if place = 0 && placepicker = 0
			{
				side = "right"
				placej = 5
				place =-1
				placepicker = 1
			}
			if place = 6 && placepicker = 0
			{
				side = "right"
				placej = 11
				place =-1
				placepicker = 1
			}
			if place = 12 && placepicker = 0
			{
				side = "right"
				placej = 17
				place =-1
				placepicker = 1
			}
			if place = 18 && placepicker = 0
			{
				side = "right"
				placej = 23
				place =-1
				placepicker = 1
			}
		}
		
		
		if keyboard_check_pressed(global.key_left) && side = "right" && placepicker = 0
		{
			if placej !=0 && placej !=6 && placej !=12 && placej !=18 && placepicker = 0
			{
			placej-=1
			placepicker = 1
			}
			if placej = 0 && placepicker = 0
			{
				side = "left"
				place = 5
				placej =-1
				placepicker = 1
			}
			if placej = 6 && placepicker = 0
			{
				side = "left"
				place = 11
				placej =-1
				placepicker = 1
			}
			if placej = 12 && placepicker = 0
			{
				side = "left"
				place = 17
				placej =-1
				placepicker = 1
			}
			if placej = 18 && placepicker = 0
			{
				side = "left"
				place = 23
				placej =-1
				placepicker = 1
			}
		}
		
		
		if keyboard_check_pressed(global.key_down) && placepicker = 0
		{
			if side = "left" && place < 18 && placepicker = 0
			{
			place+=6
			placepicker = 1
			}
			if side = "left" && place > 17 && placepicker = 0
			{
			place -= 18
			placepicker = 1
			}
			if side = "right" && placej < 18 && placepicker = 0
			{
			placej+=6
			placepicker = 1
			}
			if side = "right" && placej > 17 && placepicker = 0
			{
			placej -= 18
			placepicker = 1
			}
			
		}
		
		if keyboard_check_pressed(global.key_up) && placepicker = 0
		{
			if side = "left" && place > 5 && placepicker = 0
			{
			place-=6
			placepicker = 1
			}
			if side = "left" && place < 6 && placepicker = 0
			{
			place += 18
			placepicker = 1
			}
			if side = "right" && placej > 5 && placepicker = 0
			{
			placej-=6
			placepicker = 1
			}
			if side = "right" && placej < 6 && placepicker = 0
			{
			placej += 18
			placepicker = 1
			}
			
		}
		

		placepicker = 0
		
}

if howMany = true
{
			if keyboard_check_pressed(global.key_left)
			{
				antal -=1
				if instance_exists(oText)
				{
				oText.typist.in(100,0)
				}
			}
			if keyboard_check_pressed(global.key_right)
			{
				antal+=1
				if instance_exists(oText)
				{				
				oText.typist.in(100,0)
				}
			}
			if keyboard_check(global.key_left) || keyboard_check(global.key_right)
			{
				antalTimer -=1
			}
			if antalTimer < 0
			{
				if keyboard_check(global.key_left)
				{
					antal -=1
				}
				if keyboard_check(global.key_right)
				{
					antal+=1
				}
				if instance_exists(oText)
				{
				oText.typist.in(100,0)
				}
			}
			if keyboard_check_released(global.key_left) || keyboard_check_released(global.key_right)
			{
				antalTimer = 30
				
			}
			
			
			
}

if keyboard_check_pressed(global.key_b) && shopActive = true && howMany = false && text = false
{
	scrInventoryJump()			
	text = false
	talking = false
	createtext = false
	create = false
	instance_destroy(oText)
	instance_destroy(oTextQueued)
	instance_destroy(oTextSign)
	instance_destroy(oTextQueuedSign)
	howMany = false
	shopActive = false
	//instance_destroy(id)
	global.cutscene = false
	global.textbox = false
show_debug_message("1")
	
	
rowLenght = 6;
y1target = 36
y2target = 184
y1 = 200
y2 = 352
alpha = 0
createdHowMany = false
image_alpha = 1
talking = false
createtext = false
face = sShopkeeperPortrait
mouthmove = sShopkeeperMouth
create = false
text = false
bagfull = false
shopfull = false
createshopchoice = false
shopkeeperspeed = 0
timer = 10
antalTimer = 30
antal = 1
antalSave = antal
expensive = false
mask_index = sShopMaskIndex
shopActive = false
yes = -1
howMany = false
place = 0
placej = -1
side = "left"
i = 0
j = 0
placepicker = 0
placepickerx = 54
placepickery = 50
}

if keyboard_check_pressed(global.key_b) && text = true
{
	howMany = false
	if instance_exists(oText)
	{
		instance_destroy(oText)
	}
	if instance_exists(oYesNo)
	{
		instance_destroy(oYesNo)
	}
	createtext = false
	text = false
	createdHowMany = false
	show_debug_message("2")
}

if keyboard_check_pressed(global.key_b) && howMany = true
{
	howMany = false
	if instance_exists(oText)
	{
		instance_destroy(oText)
	}
	createtext = false
	text = false
	createdHowMany = false
	show_debug_message("3")
}

//show_debug_message(alpha)