depth =-y;

scrTalkToNPC()

var blink = irandom_range(1,100)
if blink > 98 {image_index = 1}
if blink < 15 {image_index = 0}

if talking = true
{
	if global.findTheLumberjack = false
	{
		array_push(oGame.quest,"Get an axe!")
		scrNewDialog()
		dialog[0] = "Found that axe yet?"
	}
	global.findTheLumberjack = true
}

if global.placedBunnyHouse = true && saidDoenstlookgood = false && global.valnadMovedIn = false 
{
	global.cutscene = true
	scrNewDialog()
	dialog[0] = "Oh, that's... huh."     
	dialog[1] = "Is it supposed to be a bunny house? Doesn't look to good now, does it?[VALNADMOVESIN]" 
	scrYesNoEnd()
	saidDoenstlookgood = true
}

if instance_exists(oText)
{
pos = string_pos("[VALNADMOVESIN]", oText.textmessage);
}
if (pos > 0) && global.valnadMovedIn = false && !instance_exists(oText)
{
	if !instance_exists(oValnadShadow)
	{
	instance_create_depth(x,y,0,oValnadShadow)
	}
}


if global.valnadMovedIn = true && oBunnyHouse.cutsceneTimer <0 && global.valnadLives = false
{
	createtext = false
	scrNewDialog()
	dialog[0] = "... Oh. That's not good either..."
	scrYesNoEnd()
	global.valnadLives = true
	global.cutscene = false
}