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
		
		if rootObject = oBait
		{
			global.activebait = 0
		}
		
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

//function scrBaitAdd(rootObject,itemType)
//{
//	var _slot = scrBaitSearch(rootObject,-1)
//	if (_slot != -1)
//	{
//		with (rootObject) bait[_slot] = itemType
//		return true
//	}
//	else return false
//}

function scrBaitAdd(rootObject,itemType) //STACKING
{
	var _slot = scrBaitSearch(rootObject,-1)

	if (_slot != -1)
	{
		
	
		if ds_list_find_value(rootObject.list,itemType) = 0
		{
		with (rootObject) bait[_slot] = itemType 
		}	
		
		_stack = ds_list_find_value(rootObject.list,itemType)
		ds_list_set(rootObject.list,itemType, _stack +1)
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