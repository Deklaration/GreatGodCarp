// Initialize your inventory and stacks
function scrInventoryInitialize(rootObject, size) {
    rootObject.inventory = array_create(size, -1);
    rootObject.stacks = array_create(size, 0);
}

// Searches for an itemType in the inventory and returns the index
function scrInventorySearch(rootObject, itemType) {
    for (var i = 0; i < array_length(rootObject.inventory); ++i) {
        if (rootObject.inventory[i] == itemType) {
            return i;
        }
    }
    return -1;
}


// Searches for an itemType in the inventory and returns the stack
function scrStackSearch(rootObject, itemType) {
    for (var i = 0; i < array_length(rootObject.inventory); ++i) {
        if (rootObject.inventory[i] == itemType) {
			var itemStack = rootObject.stacks[i]
            return itemStack;
        }
    }
    return -1;
}

// Removes an itemType from the inventory
function scrInventoryRemove(rootObject, itemType) {
    var index = scrInventorySearch(rootObject, itemType);
    if (index != -1) {
        rootObject.stacks[index] -= 1;
        
        if (rootObject.stacks[index] <= 0) {
            rootObject.inventory[index] = -1;
            rootObject.stacks[index] = 0;
        }
        
        return true;
    }
    return false;
}

// Adds an itemType to the inventory
function scrInventoryAdd(rootObject, itemType) {
    var index = scrInventorySearch(rootObject, itemType); // First find existing item to stack
    
    if (index != -1) {
        rootObject.stacks[index] += 1;
    } else {
        index = scrInventorySearch(rootObject, -1); // If item type doesn't exist, find first empty slot
        if (index != -1) {
            rootObject.inventory[index] = itemType;
            rootObject.stacks[index] = 1;
        } else {
            return false; // Inventory full and item type doesn't already exist in inventory
        }
    }
    
    return true;
}

// Swaps items between two objects' inventories
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