/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;

show_debug_message("FINNS")
if createtext = false
{
	if instance_exists(oText)
	{
		instance_destroy(oText)
	}
	oBaitShop.shopActive = false
	for (var i = 0; i < array_length(dialog); ++i) {
	    scrNewTextbox(dialog[i], 0)
	}
	oText.NPC = self
	createtext = true
	
}

if !instance_exists(oText)
{
		oBaitShop.shopActive = false
		oBaitShop.talking = false
		oBaitShop.createtext = false
		global.textbox = false
		oBaitShop.howMany = false
		oBaitShop.wannaBuy = false
		oBaitShop.y1 = 200
		oBaitShop.y2 = 352
		oBaitShop.activeSet = false
		oBaitShop.alpha = 0
		global.cutscene = false
		oBaitShop.antal = 1
	instance_destroy(self)
	global.talkedToSkurt +=1
}