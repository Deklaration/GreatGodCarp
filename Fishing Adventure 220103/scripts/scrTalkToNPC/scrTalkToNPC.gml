function scrTalkToNPC(){

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