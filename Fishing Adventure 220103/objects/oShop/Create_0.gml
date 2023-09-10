rowLenght = 6;

scrInventoryDSlist(global.numberoffish)

inventory = array_create(INVENTORY_SLOTS, -1)
inventorystack = array_create(INVENTORY_SLOTS,0)
place = 0
placej = -1
side = "left"
i = 0
j = 0
y1target = 20
y2target = 172
y1 = 200
y2 = 352
inventoryname = ""
inventorydesc = ""
global.cutscene = true
many = "0"
question = 1
howmany = false
mode = ""
alpha = 0
inventorygold = 0
depth = oText.depth +1

//Det här är fisknumret -1. Första fisken har nummer 0. Det blev bara så. Förlåt.
scrInventoryAdd(oShop,2)
scrInventoryAdd(oShop,0)
scrInventoryAdd(oShop,0)
scrInventoryAdd(oShop,0)
scrInventoryAdd(oShop,5)
scrInventoryAdd(oShop,5)
scrInventoryAdd(oShop,8)
scrInventoryAdd(oShop,45)
