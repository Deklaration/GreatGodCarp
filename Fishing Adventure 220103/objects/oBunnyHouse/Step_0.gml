if global.placedBunnyHouse = true
{
	image_alpha = 1
}
else
{
	image_alpha = 0
}

if global.valnadMovedIn = true
{
	image_speed = 0.10
	cutsceneTimer -=d(1)
}

if image_index = 4
{
	still = true
}

if still = true
{
	image_speed = 0
		timer -=d(1)
		if timer <0
		{
		if image_index = 4 && stop = false
		{
			image_index = 5
			stop = true
		}
		if image_index = 5 && stop = false
		{
			image_index = 4
			stop = true
		}
		timer = room_speed
		}
stop = false
}
if global.valnadMovedIn = true
{
    if (global.paused || global.cutscene || global.textbox || oProt.disable || instance_exists(oText)) {
        return;
    }

    // If no text is displayed and the player character is nearby
    var prot_talk_key = keyboard_check_pressed(global.key_a);
    var near_player = false;
    var face_dir = 0;

    if (place_meeting(x-1, y, oProt) && oProt.sprite_index == sProt_West && oProt.xscale == -1) {
        near_player = true;
        face_dir = 1;
    } else if (place_meeting(x+1, y, oProt) && oProt.sprite_index == sProt_West && oProt.xscale == 1) {
        near_player = true;
        face_dir = 2;
    } else if (place_meeting(x, y-1, oProt) && oProt.sprite_index == sProt_South) {
        near_player = true;
        face_dir = 3;
    } else if (place_meeting(x, y+1, oProt) && oProt.sprite_index == sProt_North) {
        near_player = true;
        face_dir = 4;
    }

    if (near_player && prot_talk_key) {
        oProt.image_index = 0;

        talking = true;
        global.textbox = true;

        // Create text instances based on dialog
        if (!createtext) {
            for (var i = 0; i < array_length(dialog); ++i) {
                scrNewTextbox(dialog[i], 0);
            }
            createtext = true;
        }
    }

    // Handle existing dialog
    if (talking && instance_exists(oText)) {
        oText.NPC = self;
    }

    // Clean up after dialog
    if (!instance_exists(oText) && !instance_exists(oTextQueued)) {
        talking = false;
        createtext = false;
    }
	
if yes = true && choice = 1
{
	scrYesNoStart()
	dialog[0] = "[fTextboxHugeShadow][slant][jitter]SMAAAAAAAAAACK!!!"     
	dialog[1] = "[fScaryShadow]What a weird choice. See you later, fishy baiter!"
	choice = 0
	scrYesNoEnd()
}

if yes = false && choice = 1
{
	scrYesNoStart()
dialog[0] = "[fScaryShadow]No? Then... what about..."     
dialog[1] = "[fScaryShadow][scale,1.25]TEN FISHDOLLARS?! [YesNo]"	
	scrYesNoEnd()
	choice = 2
}

if yes = true && choice = 2
{
	scrYesNoStart()
	dialog[0] = "[fScaryShadow]Here you go! See you later, fishy baiter!" 
	choice = 0
	global.gold += 10
	scrYesNoEnd()
}

if yes = false && choice = 2
{
	scrYesNoStart()
dialog[0] = "[fScaryShadow]Huh... How about..."     
dialog[1] = "[fScaryShadow][scale,1.5][wave]A BRAND NEW FISHING ROD?!"     
dialog[2] = "[scale,0.75]i don't have anything else to offer, please take it...[YesNo]"
	scrYesNoEnd()
	choice = 3
}

if yes = true && choice = 3
{
scrNewDialog()
dialog[0] = "[fScaryShadow][GETTINGGEAR]GREAT CHOICE!" + scrGearInDialog("A CREEPY ROD",oRods,enumRods.ThisIsAHam,sRodsIcon,4,1,1,false)     
dialog[1] = "[fScaryShadow]See you later, fishy baiter..." 
scrYesNoEnd()
choice = 0
}

if yes = false && choice = 3
{
scrNewDialog()
dialog[0] = "[fScaryShadow]Oh… Well… Okay then. But I'm keeping the house!"     
dialog[1] = "[fScaryShadow]See you later, fishy baiter..." 
scrYesNoEnd()
choice = 0
}


if choice = 0
{
scrNewDialog()
dialog[0] = "[fScaryShadow]Hey, I really appreciate the house but you got to give me some privacy here."     
dialog[1] = "[fScaryShadow]...What's that? You want to get into the forest, but there's a log in the way?"     
dialog[2] = "[fScaryShadow]Have you tried, like... stepping over it?"  
	if talking = true
	{
		global.youCanJustWalkOverIt = true
	}

}


}