scrInventoryInitialize(oShopkeeper,INVENTORY_SLOTS)

dialog[1] = "I CAN PAY YOU PENGARHÄR FISHDOLLARS FOR THAT. WANNA SELL?"
dialog[2] = "THAT ONE COSTS PENGARHÄR FISHDOLLARS. WANNA BUY?"
dialog[3] = "ONLY BUY WHAT YOU CAN CARRY!"
dialog[4] = "LET ME JUST CLEAN UP A BIT!"
dialog[5] = "I DON'T WANNA BUY THAT!"
dialog[6] = "THAT'S TOO EXPENSIVE FOR YOU! AHOY!"
dialog[7] = "delete"
dialog[8] = "HOW MANY DO YOU WANT TO BUY? BUY A TON!"

dialog[9] = "GREAT PURCHASE!"
dialog[10] = "YOU'RE FIN-TASTIC! ENJOY YOUR PURCHASE!"
dialog[11] = "HOOK, LINE, AND SINKER! YOU MADE A GREAT CHOICE!"
dialog[12] = "YOU'RE SWIMMING IN STYLE NOW!"
dialog[13] = "DON'T LET THIS ONE GET AWAY, IT'S A REAL CATCH!"
dialog[14] = "YOU'VE GOT QUITE THE FISH-EYE FOR GOOD DEALS!"
dialog[15] = "WATER YOU WAITING FOR? ENJOY YOUR NEW ITEM!"
dialog[16] = "YOU'VE SCALED NEW HEIGHTS WITH THAT PURCHASE!"
dialog[17] = "AHOY, GOOD CHOICE!"
dialog[18] = "THAT'S A REEL-Y GOOD CHOICE YOU'VE MADE!"

dialog[19] = "GOTTA SPEND MONEY TO MAKE MONEY!"
dialog[20] = "A FINE CATCH YOU'VE SOLD ME!";
dialog[21] = "REEL IN THE PROFIT, YOU'VE EARNED IT!";
dialog[22] = "SOLD! YOUR TACKLE BOX MUST BE HAPPY!";
dialog[23] = "YOU FISH, YOU WISH, YOU SELL!";
dialog[24] = "A GOOD FISHERMAN KNOWS WHEN TO SELL!";
dialog[25] = "I'M GLAD YOU DECIDED TO TACKLE THIS DEAL!";
dialog[26] = "BY SELLING THAT, YOU'VE TIPPED THE SCALES!";
dialog[27] = "YOUR SALES SKILLS ARE OFF THE HOOK!";
dialog[28] = "THAT'S A FIN-TASTIC SELL!";
dialog[29] = "THIS WILL MAKE A SPLASH IN MY SHOP!";


dialog[30] = "CHANGED YOUR MIND?"

dialog[31] = "HOW MANY? HOW MANY?";
dialog[32] = "WHAT'S YOUR COUNT?";
dialog[33] = "ONE FISH, TWO FISH, HOW MANY FISH?";
dialog[34] = "GIMME A NUMBER!";
dialog[35] = "QUANTITY, PLEASE!";
dialog[36] = "HOW FULL IS YOUR NET?";
dialog[37] = "ONE? TWO? GIVE ME YOUR CREW?";
dialog[38] = "SINGLE OR MULTIPLE?";
dialog[39] = "DECIDE YOUR DOZEN!";
dialog[40] = "WHAT'S YOUR PICK?";
dialog[41] = "HOW MANY IN YOUR CREW?";
dialog[42] = "GOT A NUMBER IN MIND?";
dialog[43] = "MAKE YOUR CHOICE!";
dialog[44] = "A LOT OR A LITTLE? [wave]GIVE ME A NUMBER[/wave]!";
dialog[45] = "SO, WHAT'S THE TALLY?";
dialog[46] = "GIVE ME A QUANTITY!";
dialog[47] = "GO BIG OR GO HOME, EH?";
dialog[48] = "COUNT 'EM OUT!";
dialog[49] = "YOU WANT A FEW OR A FLEET?";
dialog[50] = "TELL ME, HOW MANY?";

dialog[51] = "THAT'S TOO EXPENSIVE FOR YOU! AHOY!";
dialog[52] = "CAN'T AFFORD IT, LANDLUBBER!";
dialog[53] = "YOU'RE A FEW FISHDOLLARS SHORT!";
dialog[54] = "NO GOLD, NO GOODS!";
dialog[55] = "CHECK YOUR POCKETS, YOU'RE BROKE!";
dialog[56] = "TOO RICH FOR YOUR BLOOD, MATEY!";


scrInventoryAdd(oShopkeeper,enumFish.Whisklash)
scrInventoryAdd(oShopkeeper,enumFish.Hellstromming)

rowLenght = 6;
y1target = 36
y2target = 184
y1 = 200
y2 = 352
alpha = 1
createdHowMany = false
image_alpha = 1
talking = false
createtext = false
face = sShopkeeperPortrait
mouthmove = sShopkeeperMouth
create = false
text = false
bagfull = false
shopfull = false
createshopchoice = false
shopkeeperspeed = 0
timer = 10
antalTimer = 30
antal = 1
antalSave = antal
expensive = false
mask_index = sShopMaskIndex
shopActive = false
yes = -1
howMany = false
place = 0
placej = -1
side = "left"
i = 0
j = 0
placepicker = 0
placepickerx = 54
placepickery = 50

