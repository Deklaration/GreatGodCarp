if global.talkedtoShop = true
{
dialog[0] = "BUY OR SELL SOMETHING, WILL YA! WHAT DO YOU WANT?"
}
else
{
dialog[0] = "OOOH, YOU'RE THE NEW KID ON [rainbow][wave]PISC ISLAND[/wave][/rainbow]! I'VE OPENED MY SHOP FOR YOU, AND THE TOURISTS YOU'LL BRING HERE! \nWELCOME, WELCOME, WELCOME!"
}
if instance_exists(oShop) 
	{
	
	if oShop.howmany = true && instance_exists(oText)
	{	
		if oShop.side = "right"
		{
			
			if ds_list_find_value(oShop.list,oShop.inventory[oShop.placej]) > 1
			{
			
			if oShop.inventorygold = 1
			{
				oText.textmessage = "HOW MANY? ONE FOR JUST ONE FISHDOLLAR AND ALL OF THEM FOR " + string(oShop.inventorygold * ds_list_find_value(oShop.list,oShop.inventory[oShop.placej])) + "."
			}
			else
			{
				oText.textmessage = "HOW MANY? ONE FOR " +  + string(oShop.inventorygold) + " FISHDOLLARS AND ALL OF THEM FOR " + string(oShop.inventorygold * ds_list_find_value(oShop.list,oShop.inventory[oShop.placej])) + "."
			}
			}
			
		}
		else
		{
			
			if ds_list_find_value(oInventory.list,oInventory.inventory[oShop.place]) > 1
			{
			
			if oShop.inventorygold = 1
			{
			oText.textmessage = "HOW MANY? I WOULD PAY A SINGLE LITTLE FISHDOLLAR FOR ONE OF THEM AND " + string(oShop.inventorygold * ds_list_find_value(oInventory.list,oInventory.inventory[oShop.place])) + " FOR ALL OF THEM."
			}
			else
			{
			oText.textmessage = "HOW MANY? I WOULD PAY " + string(oShop.inventorygold) + " FISHDOLLARS FOR ONE OF THEM AND " + string(oShop.inventorygold * ds_list_find_value(oInventory.list,oInventory.inventory[oShop.place])) + " FOR ALL OF THEM."
			}
			}
		}
	}

	if oShop.question = 1 //Vill du köpa/sälja?
	{
		if oShop.inventorygold = 1
	{
		dialog[1] = "I CAN PAY YOU " + string(oShop.inventorygold) + " FISHDOLLAR FOR THAT. WANNA SELL?"
		dialog[2] = "THAT ONE COSTS " + string(oShop.inventorygold) + " FISHDOLLAR. WANNA BUY?"
	}

	if oShop.inventorygold > 1
	{
		dialog[1] = "I CAN PAY YOU " + string(oShop.inventorygold) + " FISHDOLLARS FOR THAT. WANNA SELL?"
		dialog[2] = "THAT ONE COSTS " + string(oShop.inventorygold) + " FISHDOLLARS. WANNA BUY?"
	}
	}

}
dialog[3] = "ONLY BUY WHAT YOU CAN CARRY!"
dialog[4] = "LET ME JUST CLEAN UP A BIT!"
dialog[5] = "I DON'T WANNA BUY THAT!"
dialog[6] = "THAT'S TOO EXPENSIVE FOR YOU! AHOY!"
dialog[7] = "delete"

if instance_exists(oText) && instance_exists(oShop)
{
	if oText.textmessage = "delete"
	{
		instance_destroy(oText)
		oShop.howmany = false
		ticket = 0 
	}
}
/*if instance_exists(oTextQueued) && instance_exists(oShop)
{
	if oTextQueued.textmessage = "delete"
	{
		instance_destroy(oTextQueued)
	}
}