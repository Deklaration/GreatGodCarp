// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrItems(){

enum enumItem {
Clothes, //0
Shovel, //1
Bunnyhouse, //2
Bark, //3
Coal, //4
Driftwood, //5
Sail,//6
Tar,//7
Anchor,//8
Key,//9
Horse,//10
TOTAL //För att kunna få antal
}

/*
for (var i = 0; i <= enumItem.TOTAL; ++i) {
    var itemObjName = "oItem" + string(global.itemNames[i]);
    var itemSpriteName = "sItem" + string(global.itemNames[i]);
    var itemVeganSpriteName = itemSpriteName + "_vegan";
	//paths[? global.itemNames[i]] = string_lower(global.itemNames[i]) + "Path"
	
	global.itemarray[i, 0] = asset_get_index(itemObjName); // Object
	global.itemarray[i, 1] = asset_get_index(itemSpriteName); // Sprite
	global.itemarray[i, 2] = asset_get_index(itemVeganSpriteName); // Vegan Sprite	
	global.itemarray[i, 3] = itemValue[i]; // Cost in store
	global.itemarray[i, 4] = global.itemNames[i]; // item name
	global.itemarray[i, 5] = itemAquaVistaInfos[i]; // AquaVista info
	global.itemarray[i, 6] = itemInventoryInfos[i]; // Inventory info
	global.itemarray[i, 7] = sprite_get_xoffset(asset_get_index(itemSpriteName)); // Sprite origin X, normal item
	global.itemarray[i, 8] = sprite_get_yoffset(asset_get_index(itemSpriteName)); // Sprite origin Y, normal item
	global.itemarray[i, 9] = sprite_get_xoffset(asset_get_index(itemVeganSpriteName)); // Sprite origin X, vegan
	global.itemarray[i, 10] = sprite_get_yoffset(asset_get_index(itemVeganSpriteName)); // Sprite origin Y, vegan
	global.itemarray[i, 11] = itemRarity[i]; //Rarity
	global.itemarray[i, 12] = paths[? global.itemNames[i]]; // Path
	global.itemarray[i, 13] = i; //itemnumber
	//global.itemarray[i, 14] = itemBait[i]; //Vilka fiskar som är intresserade av vilket bete
	
	
}*/

}