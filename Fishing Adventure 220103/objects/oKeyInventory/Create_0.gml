#macro KEYINVENTORY_SLOTS 8
rowLenght = 4;

scrInventoryInitialize(oKeyInventory, KEYINVENTORY_SLOTS)
//inventory = array_create(INVENTORY_SLOTS, -1)
//inventorystack = array_create(INVENTORY_SLOTS,0)
p=0
//scrInventoryDSlist(INVENTORY_SLOTS)

nocolor = c_green
yescolor = c_red
canpick = false
discard = false
discardchoice = 0				
stop_a_button = false
textx = 1
textxbigger = true
texty = 1
place = 0
i = 0
inventoryname = ""
inventorydesc = ""
/*
scrInventoryAdd(oInventory,0)
scrInventoryAdd(oInventory,0)
scrInventoryAdd(oInventory,1)
scrInventoryAdd(oInventory,2)
scrInventoryAdd(oInventory,2)
scrInventoryAdd(oInventory,2)
