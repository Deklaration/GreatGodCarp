function scrTalkToNPC() {
	

	
    // First, check if any dialog or cutscene is currently active
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
        //if (face_dir == 1) {
        //    image_xscale = -1;
        //} else {
        //   image_xscale = 1;
        //}

        if (face_dir == 3) {
            image_index = 1;
        } else if (face_dir == 4) {
            image_index = 0;
        } else {
            image_index = 2;
        }

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
        //oText.NPC = self;
    }

    // Clean up after dialog
    if (!instance_exists(oText) && !instance_exists(oTextQueued)) {
        talking = false;
        createtext = false;
    }
}




function scrTalkToNPC_OLD(){

if global.paused = false && global.cutscene = false && global.textbox = false && oProt.disable = false && !instance_exists(oText){



if (place_meeting(x-1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = -1)
{
	if keyboard_check_pressed(global.key_a)
	{
		show_debug_message("LEFT")
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
		show_debug_message("RIGHT")
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
		show_debug_message("UP")
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
		show_debug_message("DOWN")
		oProt.image_index = 0
		image_xscale =1
		image_index = 0
		talking = true
		global.textbox = true
	}
}
}

if talking = true && createtext = false
{

	for (var i = 0; i < array_length(dialog); ++i) {
	    scrNewTextbox(dialog[i], 0)
		//show_debug_message("LOOP1")
	}

	createtext = true
}

if talking = true && instance_exists(oText)
{
	oText.NPC = self
}

if !instance_exists(oText) && !instance_exists(oTextQueued)
{
	talking = false
	createtext = false
}



}







function scrTalkToGeneratedNPC(){

if global.paused = false && global.textbox = false {

if (place_meeting(x-1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = -1)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		talking = true
		if fiske = false
		{
			clothesxscale = -1
			xscale = -1
			dir = 2
		}
		global.textbox = true
	}
}




if (place_meeting(x+1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = 1)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		if fiske = false
		{
			clothesxscale = 1
			xscale = 1
			dir = 2
		}
		talking = true
		global.textbox = true
	}
	
}

if (place_meeting(x,y-1,oProt) && oProt.sprite_index = sProt_South)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
				if fiske = false
				{
					clothesxscale = 1
					xscale = 1
					dir = 1
				}
		talking = true
		global.textbox = true
	}
	
}


if (place_meeting(x,y+1,oProt) && oProt.sprite_index = sProt_North)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		talking = true
			if fiske = false
			{
				clothesxscale = 1
				xscale = 1
				dir = 0
			}
		global.textbox = true
	}
}
}
}

function scrNewDialog(){
	array_delete(dialog,0,array_length(dialog))
}

function scrTalkToTourist(){
if !global.paused && keyboard_check_pressed(global.key_a) 
{
    var isProtMeeting = false;
    var localDir = -1;

    if (place_meeting(x-1,y,oProt) && oProt.sprite_index == sProt_West && oProt.xscale == -1) 
    {
        isProtMeeting = true;
        clothesxscale = -1;
        xscale = -1;
        localDir = 2;
    }
    else if (place_meeting(x+1,y,oProt) && oProt.sprite_index == sProt_West && oProt.xscale == 1) 
    {
        isProtMeeting = true;
        clothesxscale = 1;
        xscale = 1;
        localDir = 2;
    }
    else if (place_meeting(x,y-1,oProt) && oProt.sprite_index == sProt_South) 
    {
        isProtMeeting = true;
        clothesxscale = 1;
        xscale = 1;
        localDir = 1;
    }
    else if (place_meeting(x,y+1,oProt) && oProt.sprite_index == sProt_North) 
    {
        isProtMeeting = true;
        clothesxscale = 1;
        xscale = 1;
        localDir = 0;
    }

    if (isProtMeeting) 
    {
        oProt.image_index = 0;
        talking = true;

        if (!fiske && localDir != -1) 
        {
            dir = localDir;
        }

        global.textbox = true;
    }
	dir = localDir
}

if talking = true && createtext = false
{
	dirchange = true
	scrNewTextbox(dialog[irandom_range(0,array_length(dialog)-1)], 0)
	createtext = true
}

if talking = true && instance_exists(oText)
{
	oText.NPC = id
	oText.generated = true
}

if !instance_exists(oText)
{
	talking = false
	createtext = false
}
	
}