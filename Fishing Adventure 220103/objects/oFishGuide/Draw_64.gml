if (live_call()) return live_result;

draw_self()


if sida = -1 || sida = 0
{
//FÖRSTA SIDAN. KARTA OCH UPPDRAG

scrDrawSet(fTextbox,c_black,fa_center)
draw_text_ext_color(self.x+70, self.y+80,"QUESTS",100,10000,c_black,c_black,c_black,c_black,alpha)

draw_sprite_ext(sMap,0,self.x + mapx,self.y + mapy,1,1,0,c_white,alpha)
draw_sprite_ext(sTownSpot,blink[0],self.x+30 + mapx, self.y+95 + mapy,1,1,0,c_white,alpha) //Nordmaling
draw_sprite_ext(sTownSpot,blink[1],self.x+35 + mapx, self.y+79 + mapy,1,1,0,c_white,alpha) //Umeå
draw_sprite_ext(sTownSpot,blink[2],self.x+14 + mapx, self.y+72 + mapy,1,1,0,c_white,alpha) //Östersund
draw_sprite_ext(sTownSpot,blink[3],self.x+25 + mapx, self.y+47 + mapy,1,1,0,c_white,alpha) //Arvidsjaur
draw_sprite_ext(sTownSpot,blink[4],self.x+63 + mapx, self.y+36 + mapy,1,1,0,c_white,alpha) //Luleå
draw_sprite_ext(sTownSpot,blink[5],self.x+46 + mapx, self.y+65 + mapy,1,1,0,c_white,alpha) //Skellefteå
draw_sprite_ext(sTownSpot,blink[6],self.x+46 + mapx, self.y+6 + mapy,1,1,0,c_white,alpha) //Kiruna


scrDrawSet(fTextboxSmall,c_black,fa_left)

draw_text_ext_color(self.x-75, self.y+80,string(oGame.currenttown),20,150,c_black,c_black,c_black,c_black,alpha)
draw_text_ext_color(self.x-60, self.y+130,"Inventory",20,150,inventorycolor,inventorycolor,inventorycolor,inventorycolor,alpha)
draw_text_ext_color(self.x-60, self.y+150,"Gear",20,150,gearcolor,gearcolor,gearcolor,gearcolor,alpha)
draw_text_ext_color(self.x-60, self.y+170,"Options",20,150,optionscolor,optionscolor,optionscolor,optionscolor,alpha)
draw_text_ext_color(self.x-60, self.y+190,"Save",20,150,savecolor,savecolor,savecolor,savecolor,alpha)


// In Draw Event
for (var i = 0; i < min(max_visible_quests, array_length(oGame.quest) - scroll_offset); ++i) {
    var quest_index = i + scroll_offset;
    var y_pos = self.y + 110 + (i * 20);
    
    var color = (quest_index == selected_quest_index) ? c_green : c_black;
    
    draw_text_ext_color(
        self.x + 10, y_pos,
        string(oGame.quest[quest_index]), 
        20, 130, 
        color, color, color, color, 
        alpha
    );
}

if array_length(oGame.quest) > max_visible_quests
{
	var scroll_percent;
if (array_length(oGame.quest) <= max_visible_quests) {
    scroll_percent = 0; // if all quests fit on the screen, the handle is at the top
} else {
    scroll_percent = scroll_offset / (array_length(oGame.quest) - max_visible_quests);
}

// In oGame Draw Event
var bar_height = 130; // the total height of the scrollbar
var bar_width = 1; // the width of the scrollbar
var bar_x = self.x + 133; // X position of the scrollbar
var bar_y = self.y + 110; // starting Y position of the scrollbar

// Draw the background of the scrollbar
draw_rectangle_color(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, global.color[11],global.color[11],global.color[11],global.color[11], false);

// Calculate the height of the scroll handle based on the number of quests
var handle_height = bar_height * (max_visible_quests / array_length(oGame.quest));
if (handle_height > bar_height) handle_height = bar_height; // ensure it doesn't exceed the total bar_height

// Calculate the Y position of the handle based on the current scroll_offset
var handle_y = bar_y + (bar_height - sprite_get_height(sHandle)) * scroll_percent;

if (array_length(oGame.quest) <= max_visible_quests) handle_y = bar_y; // ensure it starts at the top if there are fewer or equal quests to max_visible_quests

// Draw the sprite as the handle
draw_sprite(sHandle, 0, bar_x +1, handle_y + sprite_get_height(sHandle) / 2);

}


//for (var i = 0; i < array_length(oGame.quest); ++i) {
//    draw_text_ext_color(self.x+10, self.y+110 + (i*20),string(oGame.quest[i]),20,150,c_black,c_black,c_black,c_black,alpha)
//}
 

/*
if handy > self.y+115
{
	handy -=3
	starthandx = handx
}
if handy <= self.y+115 && handx < self.x+200
{
	draw_text(50,19,handx)
	draw_line_width(starthandx,self.y+115,handx,handy,3)
	handx +=3
}
draw_sprite(sHand,0,handx,handy)
*/
}

if sida > 0 //FISHDEX
{
//scrFishdex(sida)

//////////////////////
////////////////////////
//////////////////////
/////////////////////
var _sida = sida

scrDrawSet(fFishdex,c_black,fa_center)
draw_text_ext_color(self.x-70, self.y+80,"Fishdex",100,10000,c_black,c_black,c_black,c_black,alpha)

scrDrawSet(fFishdexSmall,c_black,fa_left)
//scrDrawSet(fTextboxSmall,c_black,fa_left)

//draw_text(100,100,sida)

if _sida = 1
{
page = _sida
}
else
{
	page = (_sida * 6) - 5
}

for (var i = 0; i < 6; ++i) { 

	if i < 3//+page //vänstersida. Lägg in if statements här om det är första sidan i fishdex eller typ sida 2
	{
		var xx = 0 
		var yy = 0
	}
	
	
	if i > 2//+page // högersida
	{
		var xx = 70
		var yy = 150
	}
	
	//draw_text(100,110+(i*10),i+page)
	

	
var rarityIndex;
switch(global.fisharray[i,11])
{
    case "":
        rarityIndex = 0;
        break;
    case 1:
        rarityIndex = 0;
        break;
    case 5:
        rarityIndex = 1;
        break;
    case 10:
        rarityIndex = 2;
        break;
    case 50:
        rarityIndex = 3;
        break;
    case 500:
        rarityIndex = 4;
        break;
    default:
        rarityIndex = 0;
        break;
}
	
	
	
	if i+page <= global.numberoffish 
	{
	
	if global.vegan = false
	{
	draw_sprite_ext(global.fisharray[i+page,1],0,self.x-70 + sprite_get_width(global.fisharray[i+page,1])/2 + (xx * 2),self.y+110 + (50 * (i)) -yy,1,1,0,global.fishcolor[i+page],alpha)
	}
	
	else
	
	{
	draw_sprite_ext(global.fisharray[i+page,2],0,self.x-70 + sprite_get_width(global.fisharray[i+page,2])/2 + (xx * 2),self.y+110 + (50 * (i)) -yy,1,1,0,global.fishcolor[i+page],alpha)
	}
	
	if global.fishcolor[i+page] = c_white
	{
	draw_sprite_ext(sRarity,rarityIndex,self.x-134 + (xx * 2),self.y+123 + (50 * (i)) - yy,1,1,0,c_white,alpha)
	}
	
	draw_text_ext_color(self.x-130 + (xx * 2), self.y+118 + (50 * (i)) - yy,string(fishinfotype[i+page]),10,10000,c_black,c_black,c_black,c_black,alpha)
	}

if sida = 9
{
	draw_sprite_ext(sGreatGodCarp_fishdex,0,self.x + 18 + sprite_get_width(sGreatGodCarp_fishdex)/2, self.y+155,1,1,0,c_black,alpha)
	draw_text_ext_color(self.x+18, self.y+190,"Not found",10,10000,c_black,c_black,c_black,c_black,alpha)
}

}

////////////////////
////////////////////
///////////////////
/////////////////////
/////////////////////
///////////////////

}

//Inventory
if sida = -2 && menuchoice = 0
{
	scrDrawSet(fTextbox,c_black,fa_center)
	draw_text_ext_color(self.x-70, self.y+80,"Inventory",100,10000,c_black,c_black,c_black,c_black,alpha)
}

//Gear
if sida = -2 && menuchoice = 1
{
	scrDrawSet(fTextbox,c_black,fa_center)
	draw_text_ext_color(self.x-70, self.y+80,"Rods",100,10000,c_black,c_black,c_black,c_black,alpha)
	draw_text_ext_color(self.x-70, self.y+164,"Bait",100,10000,c_black,c_black,c_black,c_black,alpha)
}

//Options
if sida = -2 && menuchoice = 2
{
	scrDrawSet(fTextbox,c_black,fa_center)
	draw_text_ext_color(self.x-70, self.y+80,"Options",100,10000,c_black,c_black,c_black,c_black,alpha)
	scrDrawSet(fTextbox,c_black,fa_left)
	
	
	if window_get_fullscreen()
	{
	draw_text_ext_color(self.x-120,self.y+100,"Full screen: ON",1000,1000,fullscreencolor,fullscreencolor,fullscreencolor,fullscreencolor,alpha)
	}
	else
	{
	draw_text_ext_color(self.x-120,self.y+100,"Full screen: OFF",1000,1000,fullscreencolor,fullscreencolor,fullscreencolor,fullscreencolor,alpha)
	}
	draw_text_ext_color(self.x-120,self.y+120,"Music volume: " + string(global.musicvolume),1000,1000,musicvolumecolor,musicvolumecolor,musicvolumecolor,musicvolumecolor,alpha)
	draw_text_ext_color(self.x-120,self.y+140,"Master volume: " + string(global.mastervolume),1000,1000,mastervolumecolor,mastervolumecolor,mastervolumecolor,mastervolumecolor,alpha)
	
	if global.vegan = true
	{
	draw_text_ext_color(self.x-120,self.y+160,"Vegan: ON",1000,1000,vegancolor,vegancolor,vegancolor,vegancolor,alpha)
	}
	else
	{
	draw_text_ext_color(self.x-120,self.y+160,"Vegan: OFF",1000,1000,vegancolor,vegancolor,vegancolor,vegancolor,alpha)
	}
	
	draw_text_ext_color(self.x-120,self.y+180,"Language: " + string(global.language),1000,1000,languagecolor,languagecolor,languagecolor,languagecolor,alpha)
	
	
	draw_text_ext_color(self.x-120,self.y+200,"Reset",1000,1000,reset1color,reset1color,reset1color,reset1color,alpha)
	scrDrawSet(fTextbox,c_black,fa_center)
	draw_text_ext_color(self.x+70,self.y+80,"Controls",1000,1000,c_black,c_black,c_black,c_black,alpha)
	scrDrawSet(fTextbox,c_black,fa_left)
	draw_text_ext_color(self.x+20,self.y+100,"Up: " + string(oGame.keyboard[global.key_up]),1000,1000,upcolor,upcolor,upcolor,upcolor,alpha)
	draw_text_ext_color(self.x+20,self.y+120,"Down: " + string(oGame.keyboard[global.key_down]),1000,1000,downcolor,downcolor,downcolor,downcolor,alpha)
	draw_text_ext_color(self.x+20,self.y+140,"Left: " + string(oGame.keyboard[global.key_left]),1000,1000,leftcolor,leftcolor,leftcolor,leftcolor,alpha)
	draw_text_ext_color(self.x+20,self.y+160,"Right: " + string(oGame.keyboard[global.key_right]),1000,1000,rightcolor,rightcolor,rightcolor,rightcolor,alpha)
	draw_text_ext_color(self.x+20,self.y+180,"Action: " + string(oGame.keyboard[global.key_a]),1000,1000,actioncolor,actioncolor,actioncolor,actioncolor,alpha)
	draw_text_ext_color(self.x+20,self.y+200,"Cancel: " + string(oGame.keyboard[global.key_b]),1000,1000,cancelcolor,cancelcolor,cancelcolor,cancelcolor,alpha)
	draw_text_ext_color(self.x+20,self.y+220,"Pause: " + string(oGame.keyboard[global.key_pause]),1000,1000,pausecolor,pausecolor,pausecolor,pausecolor,alpha)
	draw_text_ext_color(self.x+10,self.y+240,"Presets: " + string(keyboardpreset[kp]),1000,1000,reset2color,reset2color,reset2color,reset2color,alpha)
	
}

//Save
if sida = -2 && menuchoice = 3
{
	
	seconds = string_replace(string_format(global.secondsplayed, 2, 0), " ", "0")
	minutes = string_replace(string_format(global.minutesplayed, 2, 0), " ", "0")
	savedseconds = string_replace(string_format(global.savedsecondsplayed, 2, 0), " ", "0")
	savedminutes = string_replace(string_format(global.savedminutesplayed, 2, 0), " ", "0")
	


	scrDrawSet(fTextbox,c_black,fa_center)
	draw_text_ext_color(self.x-70, self.y+80,"Save",100,10000,c_black,c_black,c_black,c_black,alpha)
	scrDrawSet(fTextbox,c_black,fa_left)
	draw_text_ext_color(self.x-130, self.y+120,"Time played: " + string(global.hoursplayed) + ":" + string(minutes) + ":" + string(seconds),100,10000,c_black,c_black,c_black,c_black,alpha)
	draw_text_ext_color(self.x-130, self.y+150,"Time played in latest\n saved data: " + string(global.savedhoursplayed) + ":" + string(savedminutes) + ":" + string(savedseconds),20,10000,c_black,c_black,c_black,c_black,alpha)
	scrDrawSet(fTextbox,c_black,fa_center)
	if cantsave =  false
	{
	draw_text_ext_color(self.x-70, self.y+210,"Press " + string(oGame.keyboard[global.key_a]) + " to save",100,10000,c_black,c_black,c_black,c_black,alpha)
	}
	else
	{
	draw_text_ext_color(self.x-70, self.y+190,"Hands full! You\ncan't save while\nfishing, stupid.",20,10000,c_red,c_red,c_red,c_red,alpha)
	
	}
	draw_sprite_ext(sDrawing,drawing,self.x+70, self.y+160,1,1,0,c_white,alpha)
	
}