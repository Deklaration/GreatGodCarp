// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrTouristCreate(_state,_random){

scrGeneratorDialog()
x = x
y = y
if place_meeting(x,y,oWaterspot)
{
	_state = "swimming"
}
talking = false
createtext = false
mouthmove = sRunePortraitMouth
face = sRunePortrait
pitch = 0.7
subimageC = 0
dir = irandom(2)
coltimer = 150
fiske = true
xscale = choose(-1,1)
yscale = 1
activate = true
savex = x
flowchange = random_range(0.01,0.02)
down = false
walk = "down"
wa = 0
clothesxscale = xscale
startroom = room
wd = 4


state = _state

if state = "walking"
{
	if _random = true
	{
	randomclothes = irandom_range(1,5)
	randomears = irandom_range(1,5)
	randomeyes = 10//irandom_range(1,11)
	randomhair = irandom_range(1,15)
	randommouth = irandom_range(1,6)
	randomnose = irandom_range(1,7)
	randomshoes = irandom_range(1,3)
	randomclothescolor = irandom_range(0,25)
	randomhaircolor = irandom_range(0,25)
	randomshoescolor = irandom_range(0,25)
	randomskincolor  = choose(4,8,9,10,11)
	scrGenerator(randomclothes,randomears,randomeyes,randomhair,randommouth,randomnose,randomshoes,randomclothescolor,randomhaircolor,randomshoescolor,randomskincolor)
	}
		    walkingdir[0] = "down";
	        walkingdir[1] = "up";
	        walkingdir[2] = "left";
	        walkingdir[3] = "right";
	        walkingdir[4] = "";
			walkingani = [0, 0, 0, 0];

	image_speed = 0
}

if state = "swimming"
{

	randomears = irandom_range(1,5)
	randomeyes = 0
	randomhair = irandom_range(1,15)
	randommouth = irandom_range(1,6)
	randomnose = irandom_range(1,7)
	randomhaircolor = irandom_range(0,25)
	randomskincolor  = choose(4,8,9,10,11)
	scrGenerator(0,randomears,randomeyes,randomhair,randommouth,randomnose,0,randomskincolor,randomhaircolor,0,randomskincolor)
	
	sprite_index = sNPC_Swimming_base
	image_speed = 0.2
	original_y = y;  // Save the initial position
	bob_speed = 0.05; // Speed at which the object bobs
	bob_height = 1;  // Maximum distance object moves up or down
	bob_timer = 0;    // A timer to determine position in the bobbing motion
	dir = 1
}
if state = "sunbathing"
{
	randomclothes = irandom_range(1,5)
	randomears = irandom_range(1,5)
	randomeyes = 10//irandom_range(1,11)
	randomhair = irandom_range(1,15)
	randommouth = irandom_range(1,8)
	randomnose = irandom_range(1,9)
	randomshoes = irandom_range(1,3)
	randomclothescolor = irandom_range(0,25)
	randomhaircolor = irandom_range(0,25)
	randomshoescolor = irandom_range(0,25)
	randomskincolor  = choose(4,8,9,10,11)
	scrGenerator(randomclothes,randomears,randomeyes,randomhair,randommouth,randomnose,randomshoes,randomclothescolor,randomhaircolor,randomshoescolor,randomskincolor)
	sprite_index = sTouristSunbathing
	image_speed = 0.1
}

}



function scrTouristBeginStep()
{
	if instance_exists(oProt)
	{	
		if place_meeting(x+5,y,oProt)	|| 
		place_meeting(x-5,y,oProt)		|| 
		place_meeting(x,y+5,oProt)		|| 
		place_meeting(x,y-5,oProt)
		{
			if keyboard_check(vk_anykey) && !instance_exists(oText)
			{
				coltimer -=1
			}
			else
			{
				coltimer = 150
			}



			if coltimer < 30 && coltimer > 0
			{
				if coltimer > 25
				{
				savex = x
				}
				x = x + random_range(-1,1)
			}

			if coltimer <0
			{
				x = savex
				mask_index = sNothing
			}
		}
	}
}


function scrTouristStep(){
	depth = -y
	
	scrTalkToTourist()
if !instance_exists(oText) && !global.paused
{
	
	if state = "walking" //Touristen är uppe och går, slumpmässigt rör sig omkring
	{

	    if walk == ""
	    {
	        self.y = round(self.y);
	        self.x = round(self.x);
	    }

	    walkingdirectionchange = irandom(200);

	    if distance_to_object(oDoor) < 30
	    {
	        mask_index = sNothing;
	    }

	    if speed == 0
	    {
	        switch(dir)
	        {
	            case 5:
	            case 6:
	                dir = 2;
	                break;
	            case 3:
	                dir = 0;
	                break;
	            case 4:
	                dir = 1;
	                break;
	        }
		walkingani = [0, 0, 0, 0];
	    }

	    if walkingdirectionchange == 200
	    {
	        wd = irandom(4);
	    }
    
	    if walkingdirectionchange < 3
	    {
	        wa = 0;
	        wd = 4;
	    }

	    walk = walkingdir[wd];

	    switch(walk)
	    {
	        case "down":
	            if place_meeting(x, y+10, oWall) || place_meeting(x, y+10, oNPC) || place_meeting(x, y+10, oProt)
	            {
	                wd = 4;
	            }
	            xscale = 1;
	            y += 0.3;
	            walkingani = [0, 3, 0, 3];
	            break;
            
	        case "left":
	            if place_meeting(x-10, y, oWall) || place_meeting(x-10, y, oNPC) || place_meeting(x-10, y, oProt)
	            {
	                wd = 4;
	            }
	            xscale = -1;
	            clothesxscale = -1;
	            x -= 0.3;
	            walkingani = [2, 5, 2, 6];
	            break;
            
	        case "up":
	            if place_meeting(x, y-10, oWall) || place_meeting(x, y-10, oNPC) || place_meeting(x, y-10, oProt)
	            {
	                wd = 4;
	            }
	            y -= 0.3;
	            xscale = 1;
	            walkingani = [1, 4, 1, 4];
	            break;
            
	        case "right":
	            if place_meeting(x+10, y, oWall) || place_meeting(x+10, y, oNPC) || place_meeting(x+10, y, oProt)
	            {
	                wd = 4;
	            }
	            x += 0.3;
	            clothesxscale = 1;
	            xscale = 1;
	            walkingani = [2, 5, 2, 6];
	            break;
	    }

	    // Animation Logic
	    if wa < 4
	    {
	        wa += 0.05;
	    }
	    else if wa == 4
	    {
	        wa = 0;
	    }
	    dir = walkingani[wa];

	    if wa > 3
	    {
	        clothesxscale = -1;
	    }
	    else
	    {
	        clothesxscale = 1;
	    }
	}
	
	if state = "swimming"
	{
		bob_timer += bob_speed;
		y = original_y + sin(bob_timer) * bob_height;
	}
	
}

	
}

function get_color(index) {
    return global.color[index mod array_length(global.color)];
}

function scrTouristDraw(){
	if state = "walking"
	{
		scrTouristDrawWalking()
	}
	if state = "swimming"
	{
		scrTouristDrawSwimming()
	}
}

function scrTouristDrawWalking(){


	draw_sprite_ext(sNPC_Shoes_Base,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(shoessprite,dir,x,y,xscale,1,0,global.color[shoescolor mod array_length(global.color)],1)
	draw_sprite_ext(sNPC_Clothes_Base,dir,x,y,clothesxscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(sNPC_Head_Base,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	
	draw_sprite_ext(clothessprite,dir,x,y,clothesxscale,1,0,global.color[clothescolor mod array_length(global.color)],1)
	draw_sprite_ext(mouthsprite,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(nosesprite,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(earssprite,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)

	if hairsprite != sNPC_Hair01
	{
	draw_sprite_ext(eyessprite,dir,x,y,xscale,1,0,c_white,1)
	draw_sprite_ext(hairsprite,dir,x,y,xscale,1,0,global.color[haircolor mod array_length(global.color)],1)
	}
	else
	{
	draw_sprite_ext(hairsprite,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(eyessprite,dir,x,y,xscale,1,0,c_white,1)
	}	
}

function scrTouristDrawSwimming(){

	draw_sprite_ext(sNPC_Swimming_base,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(mouthsprite,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(nosesprite,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(earssprite,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(hairsprite,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(eyessprite,dir,x,y,xscale,1,0,c_green,1)


}
