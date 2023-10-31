randomize();
display_set_gui_size(view_wport[oCamera.cam], view_hport[oCamera.cam]);
instance_create_depth(x,y,0,oNothing)
x = 0 
y = 0

global.paused = false;
global.textspeed = 0.9
global.textbox = false
textboxtimer = false
textboxtimercountdown = 5
currenttown = ""
l = 0

///QUESTS
oGame.quest[0] = "Fill AquaVista with fish"
//oGame.quest[1] = "Spread joy"
//oGame.quest[2] = "Fill AquaVista with fish"
bunnyHouseTimer = 60*5

//CUTSCENES
if global.cutscene1done = false
{
	global.cutscene1 = true
}

second = 60

//LANGUAGES
language[0] = "English"
language[1] = "Svenska"
language[2] = "Chinese"
language[3] = "Russian"
language[4] = "Norsk"
language[5] = "German"

//SHOW CORRECT ACTIVE IMAGE
rodimage = 0
baitimage = 0

//Room text
newroom = false
newroomtimer = 200
roomalpha = 1
roomarray[rBeachside] = "Beachside"
roomarray[rSouthWest] = "Southwestern"
roomarray[rEastBeach] = "East beach"
roomarray[rTownCenter] = "Puddle Town"
roomarray[rWestWood] = "West wood"
roomarray[rGreatLake] = "Great lake"
roomarray[rDarkAlley] = "Alley"
roomarray[rNorthside] = "North Side"
roomarray[rNorthEast] = "North East"
roomarray[rAquaVista] = "AquaVista"
roomarray[rCoastalCuriosities] = "Coastal Curiosities"
roomarray[rAquaVistaTopFloor] = "2nd floor"
roomarray[rCavern] = "Gull Grotto"
roomarray[rInmostCavern] = "Hidden burial"
roomarray[rFiske] = " "

//KEY CODES
scrKeyboard()