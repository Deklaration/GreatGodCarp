/// @description Allt annat
if disable = false
{
	
//Man står still när det är pausat
if global.paused = true
{
	image_speed = 0 
}

//Kläderna roteras tillsammans med gubben
rotation = image_angle

//Pushed from wall
scrWallPusher()

//WORSHIP THE GROUND I'M STANDING ON
if place_meeting(x,y,oGrass) {
global.groundstanding = oGrass
}
if place_meeting(x,y,oSand) {
global.groundstanding = oSand
}
if place_meeting(x,y,oBridge) {
global.groundstanding = oBridge
}

//Lämnar fotspår
scrFootprint()



//IF MAN HAR EN FISKESPÖ OCH ETT BETE, ANNARS MÅSTE MAN EQUIPPA DET.

///Man börjar fiska om man är vänd mot vatten
if place_meeting(x-2,y,oWaterspot) && sprite_index = sProt_West && keyboard_check_pressed(global.key_a)
{
scrStartFishing()
}

if place_meeting(x+2,y,oWaterspot) && sprite_index = sProt_West && xscale = -1 && keyboard_check_pressed(global.key_a)
{
scrStartFishing()
}

if place_meeting(x,y-2,oWaterspot) && sprite_index = sProt_North && keyboard_check_pressed(global.key_a)
{
scrStartFishing()
}

if place_meeting(x,y+2,oWaterspot) && sprite_index = sProt_South && keyboard_check_pressed(global.key_a) && !place_meeting(x,y+4,oBoat)
{
scrStartFishing()
}


//Cutscenes
if global.cutscene1 = true
{
	scrCutscene1()
}

}