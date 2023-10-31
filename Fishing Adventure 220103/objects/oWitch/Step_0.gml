depth =-y;
if global.paused = false && global.textbox = false{

if (place_meeting(x-1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = -1)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		image_xscale =-1
		image_index = 2
		talking = true
		global.textbox = true
	}
}




if (place_meeting(x+1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = 1)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		image_xscale =1
		image_index = 2
		talking = true
		global.textbox = true
	}
	
}

if (place_meeting(x,y-1,oProt) && oProt.sprite_index = sProt_South)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		image_xscale =1
		image_index = 1
		talking = true
		global.textbox = true
	}
	
}


if (place_meeting(x,y+1,oProt) && oProt.sprite_index = sProt_North)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		image_xscale =1
		image_index = 0
		talking = true
		global.textbox = true
	}
}
}



if global.gotMurkMunchRecipe = true && global.unlockedMurkMunch = false && talking = true && createtext = false
{
array_delete(dialog,0,array_length(dialog))
dialog[0] = "Leave me alone..."
}

if talking = true && createtext = false && global.bringWhisklash = true && scrStackSearch(oInventory,enumFish.Whisklash) >= 3
{
	array_delete(dialog,0,array_length(dialog))
	dialog[0] = "That... [wave]that smell[/wave]!" 
	dialog[1] = "Oh, it's just you." 
	dialog[2] = "Ever heard of a shower?"
	dialog[3] = "So, do you have the whisklashes I need?[YesNo]"

}

if talking = true && global.bringWhisklash = true && yes !=-1 && global.gotMurkMunchRecipe = false
{
if yes = false
		{
			show_debug_message("hit")
			array_delete(dialog,0,array_length(dialog))
			dialog[0] = "Oh. Bring them here whenever you can."
			for (var i = 0; i < array_length(dialog); ++i) {
			  scrNewTextbox(dialog[i], 0)}
			  yes = -1
		}
	
if yes = true
		{
			array_delete(dialog,0,array_length(dialog))
			dialog[0] = "Wonderful! These will be great pets. I've always wanted a few whisklashes of my own. They are like underwater cats!"
			dialog[1] = "Wait... [fTextboxHugeShadow]These are [shake]dead[/shake]![fTextboxShadow]"
			dialog[2] = "[shake]Oh nononononononononononnoononononono\nnononononononononononononononononono\nnononononononononononononononononono\nnononononononononononononononononono[/shake]"
			dialog[3] = "Why didn't you put them in a bag of water or something..."
			dialog[4] = "This is [wobble]terrible[/wobble]..."
			dialog[5] = "Take the recipe and go. Leave me alone![RECIPE][MURK MUNCH RECIPE!]"// 
			dialog[6] = "Go on then, get out of here!"
			for (var i = 0; i < array_length(dialog); ++i) {
			  scrNewTextbox(dialog[i], 0)}
			  repeat(3)
			  {scrInventoryRemove(oInventory,enumFish.Whisklash)}
			  yes = -1
			  global.gotMurkMunchRecipe = true
		}
createtext = true
}

if talking = true && createtext = false
{
	for (var i = 0; i < array_length(dialog); ++i) {
	    scrNewTextbox(dialog[i], 0)
	}

	createtext = true
	global.bringWhisklash = true
}

if talking = true && instance_exists(oText)
{
	oText.NPC = self
}

if !instance_exists(oText)
{
	talking = false
	createtext = false
	//show_debug_message("DEADHALLÅ")
}

//show_debug_message(string("talking:  ") + string(talking))
//show_debug_message(string("yes: ") + string(yes))
//show_debug_message(string("cutscene: ") + string(global.cutscene))
//show_debug_message(string("textbox: ") + string(global.textbox))