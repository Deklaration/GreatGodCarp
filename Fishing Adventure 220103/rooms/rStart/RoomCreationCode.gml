instance_create_depth(-100,-100,0,oProt)
randomise()

scribble_anim_wave(1.2,100,0.1)
scribble_anim_rainbow(0.5,0.004)
scribble_anim_shake(1,0.5)
scribble_font_bake_shadow("fTextbox","fTextboxShadow",0,1,c_black,1,1,false)
scribble_font_set_default("fTextboxShadow")

//Language
global.language = "English"

//Färgarray
scrColor();

//Variabler som sparas mellan fiske och värld
global.xbeforefish = 430
global.ybeforefish = -230 * 1
global.directionbeforefish = sProt_South
global.nosebeforefish = sNose1_South
global.clothesbeforefish = sClothes1_South
global.skincolorbeforefish = global.color[choose(2,3,4,5,6,30,31)]
global.xscalebeforefish = 1
global.clothescolorbeforefish = choose(7,9,10,13,15,16,17,18)
global.nosecolorbeforefish = choose(0,8,29)
global.activebait = 0
global.notmoved = false
global.xmovedbetweenfishing = 0
global.ymovedbetweenfishing = 0
global.oprotfishingrandomysaved = 0
global.omarkrandomysaved = 0
global.oprotfishingrandomy = 0
global.omarkrandomy = 0
global.omarkimageindexsaved = 0
global.exitx = 0 
global.exity = 0
global.cantpause = false
global.time = 0

global.fighttimer = 0
global.fiskesida = noone
global.groundstanding = noone
global.lastroom = noone
global.paused = false

//Music
global.musicvolume = 100
global.mastervolume = 100
global.pitch = 1
instance_create_depth(0,0,0,oMusic)
oMusic.intensity = 0

//Time played
global.savedsecondsplayed = 00
global.savedminutesplayed = 00
global.savedhoursplayed = 00
global.secondsplayed = 00
global.minutesplayed = 00
global.hoursplayed = 00

//Vegetarian
global.vegan = false

//Vattendrag
global.waterType = "ocean"

//Pengar
global.gold = 0

//Cutscenes
global.cutscene = false
global.cutscene1 = false
global.cutscene2 = false
global.cutscene3 = false
global.cutscene4 = false
global.cutscene5 = false
global.cutscene6 = false
global.cutscene7 = false

global.cutscene1done = false
global.cutscene2done = false
global.cutscene3done = false
global.cutscene4done = false
global.cutscene5done = false
global.cutscene6done = false
global.cutscene7done = false

//Kläder
global.nosewest = sNose1_West
global.nosesouth = sNose1_South
global.nosesouthwest = sNose1_SouthWest
global.clotheswest = sClothes1_West
global.clothesnorth = sClothes1_North
global.clothesnorthwest = sClothes1_NorthWest
global.clothessouth = sClothes1_South
global.clothessouthwest = sClothes1_SouthWest

//Storyevents
global.gettinggear = false

#macro RESOLUTION_W  1920
#macro RESOLUTION_H 1080

//Control
global.key_a = ord("Z")
global.key_b = ord("X")
global.key_up = vk_up
global.key_down = vk_down
global.key_left = vk_left
global.key_right = vk_right
global.key_pause = vk_enter

scrFishArraySet()
scrRodArraySet()
scrBaitArraySet()

global.numberOfTourists = 0


//FISH INFORMATION
global.fishinfo = array_create(global.numberoffish+1,"Not found")


//Om fisken syns i Fishing Guide
global.fishcolor = array_create(global.numberoffish+1,c_black)

//Största fisken man fångat
global.fishsize = array_create(global.numberoffish+1,0)

//Hur många man fångat av varje fisk
global.fishhowmanycaught = array_create(global.numberoffish+1,0)

//Hur många poäng man har från akvariet 
global.totalFishScore = 0

//RODS
global.activerod = 0
global.roddur = 0
global.rodthrow = 0

//TUR
global.rareFishLuck = 1 //Höj för mer tur. Vid vissa ställen, vid speciella vatten, kan denna vara superhög. Ökas med decimaler, eftersom den gångras med 1000. så 1.1 innebär att fiskelyckan är på irandom_range(1,1100), där "> 950" ger en sällsynt fisk. Så MAX MAX under vanliga förhållanden borde vara 1.3 typ.  

/*
global.rod1 =
{
	throwpower : 1,
	durability : 20,
	speedpower : 1,
}


/*
global.roddur[0] = 0
global.roddur[1] = 20
global.roddur[2] = 40
global.roddur[3] = 70
global.roddur[4] = 120

global.rodthrow[0] = 0 
global.rodthrow[1] = 1 
global.rodthrow[2] = 1.2 
global.rodthrow[3] = 1.4 
global.rodthrow[4] = 1.6 
*/


instance_create_depth(0,0,0,oGame)
instance_create_depth(0,0,-1,oInventory)
instance_create_depth(0,0,-1,oBait)
instance_create_depth(0,0,-1,oRods)
instance_create_depth(0,0,-1,oTouristCreator)

//AquaVista
global.setFishInTank = false


surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H)
global.roomsave = rBeachside


//Om man inte har en sparfil så försöker inte spelet ladda en
var first_play = playerprefs_has("oProt.x");
if (!first_play) {
room_goto(rTitlescreen);;
}
else
{
scrLoad();
room_goto(rTitlescreen);
}