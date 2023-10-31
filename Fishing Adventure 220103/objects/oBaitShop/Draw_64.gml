if (live_call()) return live_result;

if shopActive = true
{
	


//scrNineSliceBoxStretched(sTextbox,15,y1,465,y2,1)
//scribble("this isn't showing up").draw(240,95)
//draw_text(240,110,"but this is")
//show_debug_message(oBait.stacks)
		if y1 > y1target
		{
		y1 -=20
		y2 -=20
		}
		else
		{
			alpha +=0.1
			alpha = clamp(alpha,0,1)
		}
		
		for (var i = 1; i < 13; i += 1)
			{


	

				var xx = -1 + (35.25 * i)
				var yy = 55
				
				if place != i
					{
						
						draw_sprite_ext(sSlot,0,xx,yy,1,1,0,c_white,alpha)
						draw_sprite_ext(sBaitIcon,i,xx+12,yy+12,1,1,0,c_white,alpha)
					}
				if place = i
					{
						draw_sprite_ext(sSlot,1,xx,yy,1,1,0,c_white,alpha)
						draw_sprite_ext(sBaitIcon,i,xx+12,yy+12,2,2,0,c_white,alpha)

						{ //Ritar silhuetter

// Define the total width and margins
var totalWidth = 450;
var leftMargin = 50;
var rightMargin = 25;
var rowHeight = 25; // Height between each row

// Number of sprites in the array
var numSprites = array_length(global.baitFishGroupsSprite[place]);

// Calculate the available width for the sprites
var availableWidth = totalWidth - (leftMargin + rightMargin);

// Calculate the spacing between each sprite
var gap = availableWidth / (numSprites - 1);

// Sway variables
var swayAmount = 8;
var swaySpeed = 0.0008;
var currentTime = current_time * swaySpeed;

// Offset for the middle row
var middleRowOffset = 20;

// Draw the sprites in multiple rows
for (var row = 0; row < 4; ++row) {
    for (var k = 0; k < numSprites; ++k) {
        // Calculate the x-coordinate for each sprite
        var xCoordinate = leftMargin + (k * gap);
        
        // Add offset if this is the middle row
        if (row == 1) || (row == 3) {
            xCoordinate += middleRowOffset;
        }
        
        // Add sway using the sin function
        var sway = sin(currentTime + row) * swayAmount;
        
        // Calculate the y-coordinate based on the row number
        var yCoordinate = 95 + (row * rowHeight);
        
        // Calculate the starting index of the fish for this row
        var fishIndex = (k + row) mod numSprites;
        
		var thisfishalpha = fishalpha
		
		var thisFishColor = global.fishcolor[getEnumFishIndexNumberFromObjectName(global.baitFishGroups[place, fishIndex])];  // Grab the color value for this fish
		
		if thisFishColor != 0
		{
			thisfishalpha = fishalpha * 3
		}
		var spriteDraw = global.baitFishGroupsSprite[place, fishIndex]

        draw_sprite_ext(spriteDraw, 0, xCoordinate + sway, yCoordinate, 1, 1, 0, thisFishColor, thisfishalpha);

    }
}



						}

						scribble(global.baitarray[i,0]).wrap(300,300).blend(c_white,alpha).align(fa_center,fa_middle).starting_format("fFishdexShadow",global.color[19]).draw(240,95)
						
						
						if global.baitarray[i,2] * antal > 1
						{
							scribble(string(global.baitarray[i,2] * antal) + " fishdollars").blend(c_white,alpha).wrap(300,300).align(fa_center,fa_middle).starting_format("fFishdexShadow",global.color[19]).draw(240,115)
						}
						else
						{
							scribble(string(global.baitarray[i,2] * antal) + " fishdollar").blend(c_white,alpha).wrap(300,300).align(fa_center,fa_middle).starting_format("fFishdexShadow",global.color[19]).draw(240,115)
						}
						
					
						
						var inventoryStack = scrStackSearch(oBait,place)
						if inventoryStack = -1
						{
							inventoryStack = 0
						}
						//show_debug_message(inventoryStack)
						
						scribble("In inventory: " + string(inventoryStack)).blend(c_white,alpha).wrap(300,300).align(fa_center,fa_top).starting_format("fFishdexShadow",global.color[19]).draw(240,128)
						scribble(global.baitarray[i,3]).wrap(300,300).blend(c_white,alpha).align(fa_center,fa_top).starting_format("fFishdexShadow",global.color[19]).draw(240,148)
					}
					


				if howMany = true && wannaBuy = false
				{
					dialog[2] = "Mmmm, that's " + string(global.baitarray[place,2] * antal) + " money! Let's buy, right?"
					draw_sprite_ext(sTinyArrow,0,222,238+leftArrowYPos,-1,1,0,c_white,alpha)
					draw_sprite_ext(sTinyArrow,1,222,238+leftArrowYPos,-1,1,0,global.color[leftColor],alpha)
					draw_sprite_ext(sTinyArrow,0,256,238+rightArrowYPos,1,1,0,c_white,alpha)
					draw_sprite_ext(sTinyArrow,1,256,238+rightArrowYPos,1,1,0,global.color[rightColor],alpha)
					scribble(string(antal)).wrap(300,300).blend(c_white,alpha).align(fa_center,fa_middle).starting_format("fFishdexShadow",global.color[19]).draw(240,239)
				}

				if wannaBuy = true
				{
					antal = antalSave
					if keyboard_check(global.key_left)
					{
					yes = true
					}
	
					if keyboard_check(global.key_right)
					{
					yes = false
					}
	

					draw_sprite(sNodding,choiceSpeedYes,222,247)
					draw_sprite_ext(sNoddingHud,choiceSpeedYes,222,247,1,1,0,global.skincolorbeforefish,1)
					draw_sprite_ext(sNoddingNose,choiceSpeedYes,222,247,1,1,0,global.color[oProt.nosecolor],1)
					draw_sprite(sShaking,choiceSpeedNo,256,247)
					draw_sprite_ext(sShakingHud,choiceSpeedNo,256,247,1,1,0,global.skincolorbeforefish,1)
					draw_sprite_ext(sShakingNose,choiceSpeedNo,256,247,1,1,0,global.color[oProt.nosecolor],1)

				}

			}
	
}

