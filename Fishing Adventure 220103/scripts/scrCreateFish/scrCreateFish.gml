// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrCreateFish(){

var rare = irandom_range(1,1000 * global.rareFishLuck)
var createNumberTotal = irandom_range(2,8)
var createNumberRarity1 = irandom_range(4,createNumberTotal)
var createNumberRarity5 = irandom_range(1,3)
var createNumberRarity10 = irandom_range(1,2)
var createNumberRarity50 = irandom_range(0,1)
var createdFish = 0

if global.waterType = "ocean"
{

if rare > 950 && createNumberTotal > createdFish
{
	for (var i = 0; i < createNumberRarity50; i += 1)
	{
		instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishAbyssglow,oFishSoftsquish))	//Skapar fisk - Rarity 50	
		createdFish +=1
	}
}
if rare > 850 && createNumberTotal > createdFish
{
	for (var j = 0; j < createNumberRarity10; j += 1)
	{
		instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishPearlshimmer, oFishLumipuff, oFishInkfish))	//Skapar fisk - Rarity 10
		createdFish +=1
	}
}

if rare > 400 && createNumberTotal > createdFish
{
	for (var k = 0; k < createNumberRarity5; k += 1)
	{
		instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishCoralfin,oFishTidalflicker,oFishSurfdrifter,oFishSilverflicker))	//Skapar fisk - Rarity 5	
		createdFish +=1
	}
}

if createNumberTotal > createdFish
{
	for (var l = 0; l < createNumberRarity1; l += 1)
	{
		instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishWaveshimmer,oFishSaltysurge,oFishFinfury,oFishSeaspike,oFishSurgeknight,oFishStormdrifter))	//Skapar fisk - Rarity 1	
		createdFish +=1
	}
}

}



	if global.waterType = "lake"
	{
		for (var i = 0; i < irandom_range(1,14); i += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),i,global.lakeFish[irandom_range(0,array_length(global.lakeFish)-1)])	//Skapar fisk1
		}
	}
	if global.waterType = "forest"
	{
		for (var i = 0; i < irandom_range(1,18); i += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),i,global.forestFish[irandom_range(0,array_length(global.forestFish)-1)])	//Skapar fisk1
		}
	}

	
	if global.waterType = "river"
	{
		for (var i = 0; i < irandom_range(1,12); i += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),i,global.riverFish[irandom_range(0,array_length(global.riverFish)-1)])	//Skapar fisk1
		}
	}

	if rare = 500
	{
		instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,global.rareFish[irandom_range(0,array_length(global.rareFish)-1)])	//Skapar sällsynt fisk
	}


}