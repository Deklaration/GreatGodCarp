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
	if rare > 950 && createNumberTotal > createdFish
	{
		for (var i = 0; i < createNumberRarity50; i += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,oFishDracofin)	//Skapar fisk - Rarity 50	
			createdFish +=1
		}
	}
	if rare > 850 && createNumberTotal > createdFish
	{
		for (var j = 0; j < createNumberRarity10; j += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishLakegem, oFishEchodepth))	//Skapar fisk - Rarity 10
			createdFish +=1
		}
	}

	if rare > 400 && createNumberTotal > createdFish
	{
		for (var k = 0; k < createNumberRarity5; k += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishLakelight,oFishReedripple,oFishBubblerise))	//Skapar fisk - Rarity 5	
			createdFish +=1
		}
	}

	if createNumberTotal > createdFish
	{
		for (var l = 0; l < createNumberRarity1; l += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishMuddweller,oFishWeedsnout,oFishWhisklash))	//Skapar fisk - Rarity 1	
			createdFish +=1
		}
	}
}

	
if global.waterType = "forest"
{

	if rare > 950 && createNumberTotal > createdFish
	{
		for (var i = 0; i < createNumberRarity50; i += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishDracofin,oFishFluffin))	//Skapar fisk - Rarity 50	
			createdFish +=1
		}
	}
	if rare > 850 && createNumberTotal > createdFish
	{
		for (var j = 0; j < createNumberRarity10; j += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishKelpshield, oFishRoottrickle, oFishOakscale))	//Skapar fisk - Rarity 10
			createdFish +=1
		}
	}

	if rare > 400 && createNumberTotal > createdFish
	{
		for (var k = 0; k < createNumberRarity5; k += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishTimbertrickle,oFishPinescale))	//Skapar fisk - Rarity 5	
			createdFish +=1
		}
	}

	if createNumberTotal > createdFish
	{
		for (var l = 0; l < createNumberRarity1; l += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishLeafscale,oFishBarkbiter,oFishFernflutter))	//Skapar fisk - Rarity 1	
			createdFish +=1
		}
	}
}

	
if global.waterType = "river"
{
	if rare > 950 && createNumberTotal > createdFish
	{
		for (var i = 0; i < createNumberRarity50; i += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,oFishQuillure)	//Skapar fisk - Rarity 50	
			createdFish +=1
		}
	}
	if rare > 850 && createNumberTotal > createdFish
	{
		for (var j = 0; j < createNumberRarity10; j += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishBrookflare, oFishCurrentswift, oFishSunsetgill))	//Skapar fisk - Rarity 10
			createdFish +=1
		}
	}

	if rare > 400 && createNumberTotal > createdFish
	{
		for (var k = 0; k < createNumberRarity5; k += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishRapidskimmer,oFishBouldermaw,oFishMossfin,oFishPebbletrout,oFishWhirlskimmer))	//Skapar fisk - Rarity 5	
			createdFish +=1
		}
	}

	if createNumberTotal > createdFish
	{
		for (var l = 0; l < createNumberRarity1; l += 1)
		{
			instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,choose(oFishStreamgill,oFishAqualite,oFishRivertwirl))	//Skapar fisk - Rarity 1	
			createdFish +=1
		}
	}
}



	if rare = 500
	{
		instance_create_depth(random_range(25,oDock.x-30),random_range(oWater.y+25,oMark.y-25),0,global.rareFish[irandom_range(1,array_length(global.rareFish))])	//Skapar sällsynt fisk
	}


}