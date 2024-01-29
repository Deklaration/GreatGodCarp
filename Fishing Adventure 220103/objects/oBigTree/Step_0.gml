/// @description Insert description here
// You can write your code in this editor

depth = -y
scrTalkToObject()

if talking = true && room = rMurmurWoods
{
global.gotBark = true	
scrInventoryAdd(oKeyInventory,enumItem.Bark)
instance_create_depth(x,y,0,oGettingItems,{item:enumItem.Bark,parent:noone})
talking = false
}
