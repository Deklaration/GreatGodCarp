depth =-y;

scrTalkToNPC()

if instance_exists(oText)
{
if talking = true && oText.textmessage = dialog[6] && keyboard_check_pressed(global.key_a) 
{
instance_destroy(oText)	
exit
}
}

if talking = true && createtext = false && !instance_exists(oShop)
{
	scrNewTextbox(dialog[0],0)
	createtext = true
}

if talking = true && instance_exists(oText) && !instance_exists(oShop)
{
	if oText.x2 = oText.x2Target
	{
		instance_create_depth(x,y,0,oShop)
	}

}

if talking = true && instance_exists(oText)
{
	oText.NPC = self
}

if keyboard_check_pressed(global.key_a) && talking = true && instance_exists(oShop)
{
	if oShop.side = "left" && text = false && oInventory.inventory[oShop.place] > -1
	{
	instance_destroy(oText)
	scrNewTextbox(dialog[1],0)
	scrNewTextbox(dialog[7],0) 
	instance_create_depth(x,y,0,oShopChoice)
	text = true
	}
	
	if oShop.side = "right" && text = false && oShop.inventory[oShop.placej] > -1
	{
	instance_destroy(oText)
	scrNewTextbox(dialog[2],0)
	scrNewTextbox(dialog[7],0) 
	instance_create_depth(x,y,0,oShopChoice)
	text = true
	}
}


if expensive = true && talking = true
{
	instance_destroy(oText)
	scrNewTextbox(dialog[6],0)
	expensive = false
}


if bagfull = true && talking = true 
{
	instance_destroy(oText)
	scrNewTextbox(dialog[3],0)
	bagfull = false
}
if shopfull = true && talking = true 
{
	instance_destroy(oText)
	scrNewTextbox(dialog[4],0)
	instance_destroy(oShop)
	shopfull = false
}

if keyboard_check_pressed(global.key_b) && talking = true
{
	instance_destroy(oText)
	instance_destroy(oTextQueued)
	oShop.howmany = false
	ticket = 0
	global.textbox = false
	text = false
	talking = false
	createtext = false
	create = false
	global.cutscene = false
}