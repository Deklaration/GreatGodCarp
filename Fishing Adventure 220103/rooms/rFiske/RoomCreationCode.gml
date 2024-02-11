instance_create_depth(-100,-100,0,oProt)



instance_create_depth(10,10,0,o_particles,{state : "fish"})
//instance_create_depth(10,10,0,o_particles,{state : "ute"})
//instance_create_depth(10,10,0,o_particles,{state : "mitten"})
//instance_create_depth(10,10,0,o_particles,{state : "inne"})


global.angle = 0 
global.wheelspeed = 7
global.fishbait = false
global.fishcaught = false
global.fiskesida = "right"

global.textbox = false

if global.notmoved = false
{
	global.oprotfishingrandomy = random_range(60,120)
	global.omarkrandomy = random(30)
	
	if global.groundstanding == oSand
	{
	instance_create_depth(room_width -50, room_height - 170,0,oProtFishing)
	instance_create_depth(0,room_height,0,oMark)
	} 
	else
	{	
	instance_create_depth(room_width -50, global.oprotfishingrandomy,0,oProtFishing)
	instance_create_depth(0,room_height - global.omarkrandomy,0,oMark)
	}
}
if global.notmoved = true
{
	if global.groundstanding == oSand
	{
	instance_create_depth(room_width -50, room_height - 170,0,oProtFishing)
	instance_create_depth(0,room_height,0,oMark)
	} 
	else
	{	
	instance_create_depth(room_width -50, global.oprotfishingrandomysaved,0,oProtFishing)
	instance_create_depth(0,room_height - global.omarkrandomysaved,0,oMark)
	}
}



	for (var i=0; i<room_width+8; i += 16)
	{
		instance_create_depth(i,oProtFishing.y+56,0,oWaterCol)
	instance_create_depth(i,oProtFishing.y+52,0,oWater)	
		instance_create_depth(i,oMark.y,0,oMark2)
	}

	
oWater.tension = 0.02
oWater.dampening = 0
oWater.spread =  0
oWater.wave = 0
oWater.wavespeed = 0

	for (var j=0; j<room_width; j += 16)
	{
		instance_create_depth(oProtFishing.x + 6 + j,oProtFishing.y+50,0,oDock) //Skapa vad Prot står på. Ska anpassas efter yta.
	}

	instance_create_depth(0,0,0,oNothing) //Placeholderobjekt


//Test för att få in massa Whisklashes

//Skapa fiskarna!
scrCreateFish()
