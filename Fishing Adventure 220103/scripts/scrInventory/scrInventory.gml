function scrInventorySearch(rootObject,itemType)
{
	for (var i = 0; i < INVENTORY_SLOTS; i += 1)
	{
		if (rootObject.inventory[i] == itemType)
		{
			return(i);
		}
	}
	return(-1);
}


function scrInventoryRemove(rootObject,itemType) //STACKING
{
	var _slot = scrInventorySearch(rootObject,itemType)
	if (_slot != -1)
	{
		
		_stack = ds_list_find_value(rootObject.list,itemType)
		ds_list_set(rootObject.list,itemType, _stack -1)
		
		if _stack = 1
		{
		with (rootObject) inventory[_slot] =-1
		}
		return true
	}
	else return false



}

function scrInventoryAdd(rootObject,itemType) //STACKING
{
	var _slot = scrInventorySearch(rootObject,-1)

	if (_slot != -1)
	{
		
	
		
		if ds_list_find_value(rootObject.list,itemType) = 0
		{
		with (rootObject) inventory[_slot] = itemType 
		}	
		
		_stack = ds_list_find_value(rootObject.list,itemType)
		ds_list_set(rootObject.list,itemType, _stack +1)
		return true
	}
	
	else return false
		
}


/* //NON STACKING - DETTA FUNKAR
  function scrInventoryAdd(rootObject,itemType)
{
	var _slot = scrInventorySearch(rootObject,-1)
	if (_slot != -1)
	{
		with (rootObject) inventory[_slot] = itemType
		return true
	}
	else return false
}

*/

function scrInventorySwap(objectFrom,slotFrom,objectTo)
{
	
	var slotTo = scrInventorySearch(objectTo,-1)
	
	var _itemFrom = objectFrom.inventory[slotFrom]
	objectFrom.inventory[slotFrom] = objectTo.inventory[slotTo]
	objectTo.inventory[slotTo] = _itemFrom
}

function scrInventoryJump(){

repeat(23)
{
	
				var search = 0
				var search2 = 0
				repeat(23)
				{
					repeat(23)
					{
						search2 +=1
						if oInventory.inventory[search] = -1 && oInventory.inventory[search2] != -1
						{
							var item = oInventory.inventory[search2]
							var slot = scrInventorySearch(oInventory,item)
							scrInventorySwap(oInventory,slot,oInventory) 				
						}
						else
						{
							search ++
							continue
						}
					}
					search2 = 0
					break
				}

}

}

function scrInventoryDSlist(){
	
list = ds_list_create()

for (var d = 0; d < INVENTORY_SLOTS; ++d) {
    ds_list_add(list,0)
}
/*
ds_list_add(list,0)
ds_list_add(list,0)
ds_list_add(list,0)
ds_list_add(list,0)
ds_list_add(list,0)
ds_list_add(list,0)
ds_list_add(list,0)
ds_list_add(list,0)
*/
}



function scrInventoryNameDesc(argument0)
{	
		if argument0.inventory[place] = -1
		{
		inventoryname = ""
		inventorydesc = ""
		}
		else 
		{
			for (var i = 0; i < global.numberoffish; ++i) {
				if argument0.inventory[place] = i
				{
			    inventorygold = global.fisharray[i+1,3]
				inventoryname = global.fisharray[i+1,4]
				inventorydesc = global.fisharray[i+1,6]
				}
			}
		}
		
		//if argument0.inventory[place] = 0
		//{
		//	inventorygold = global.fisharray[i+1,0].sellvalue
		//	inventoryname = global.fisharray[i+1,0].fishname
		//	inventorydesc = global.fisharray[i+1,0].fishdesc
		//}
	/*
		if argument0.inventory[place] != -1
		{
			inventorygold = global.fisharray[i+1,0].sellvalue
			inventoryname = global.fisharray[i+1,0].fishname
			inventorydesc = global.fisharray[i+1,0].fishdesc
		}
	
		if argument0.inventory[place] = -1
		{
		inventoryname = ""
		inventorydesc = ""
		}
		else if argument0.inventory[place] = 0
		{
		inventorygold = 1
		inventoryname = "Rumblescumbler"
		inventorydesc = "An incredibly ordinary little fish guy. Not much to look at but who am I to judge.\nWorth " + string(inventorygold) + " gold."
		}
		else if argument0.inventory[place] = 1
		{
		inventorygold = 2
		inventoryname = "Pinkie-Pie"
		inventorydesc = "Cute little shit. \nWorth " + string(inventorygold) + " gold."
		}
		else if argument0.inventory[place] = 2
		{
		inventorygold = 3
		inventoryname = "Tall fin"
		inventorydesc = "Cool enough to be kept as a pet. But it's dead. \nWorth " + string(inventorygold) + " gold."
		}
		else
		{
		inventoryname = "ERROR"
		inventorydesc = "ERROR"
		}
		*/
}

function scrInventoryNameDescJ() 
{	
	
		if inventory[placej] = -1
		{
		inventoryname = ""
		inventorydesc = ""
		}
		else 
		{
			for (var i = 0; i < global.numberoffish-1; ++i) {
				if inventory[placej] = i
				{
			    inventorygold = round(global.fisharray[i+1,3] * 1.8)
				inventoryname = global.fisharray[i+1,4]
				inventorydesc = global.fisharray[i+1,6]
				}
			}
		}
}
/*
		if inventory[placej] = -1
		{
		inventoryname = ""
		inventorydesc = ""
		}
		else if inventory[placej] = 0
		{
		inventorygold = 2
		inventoryname = "Rumblescumbler"
		inventorydesc = "An incredibly ordinary little fish guy. Not much to look at but who am I to judge.\nWorth " + string(inventorygold)
		}
		else if inventory[placej] = 1
		{
		inventorygold = 4
		inventoryname = "Pinkie-Pie"
		inventorydesc = "Cute little shit. \nWorth " + string(inventorygold)
		}
		else if inventory[placej] = 2
		{
		inventorygold = 7
		inventoryname = "Tall fin"
		inventorydesc = "Cool enough to be kept as a pet. But it's dead. \nWorth " + string(inventorygold)
		}
		else
		{
		inventoryname = "ERROR"
		inventorydesc = "ERROR"
		}

}
*/
//////////////////////////////////////////

function scrBaitSearch(rootObject,itemType)
{
	for (var i = 0; i < 12; i += 1)
	{
		if (rootObject.bait[i] == itemType)
		{
			return(i);
		}
	}
	return(-1);
}

function scrBaitRemove(rootObject,itemType)
{
	var _slot = scrBaitSearch(rootObject,itemType)
	if (_slot != -1)
	{
		with (rootObject) bait[_slot] =-1
		return true
	}
	else return false
}

function scrBaitAdd(rootObject,itemType)
{
	var _slot = scrBaitSearch(rootObject,-1)
	if (_slot != -1)
	{
		with (rootObject) bait[_slot] = itemType
		return true
	}
	else return false
}

//////////////////////////////////////////

function scrRodsSearch(rootObject,itemType)
{
	for (var i = 0; i < 8; i += 1)
	{
		if (rootObject.rods[i] == itemType)
		{
			return(i);
		}
	}
	return(-1);
}

function scrRodsRemove(rootObject,itemType)
{
	var _slot = scrRodsSearch(rootObject,itemType)
	if (_slot != -1)
	{
		with (rootObject) rods[_slot] =-1
		return true
	}
	else return false
}

function scrRodsAdd(rootObject,itemType)
{
	var _slot = scrRodsSearch(rootObject,-1)
	if (_slot != -1)
	{
		with (rootObject) rods[_slot] = itemType
		return true
	}
	else return false
}

//////////////////////////////////////////