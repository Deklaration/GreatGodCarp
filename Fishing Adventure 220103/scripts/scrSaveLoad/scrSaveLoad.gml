function scrSave()
{
	playerprefs_set("oProt.x",oProt.x)
	playerprefs_set("oProt.y",oProt.y)
	playerprefs_set("xbeforefish",oProt.x)
	playerprefs_set("ybeforefish",oProt.y)
	playerprefs_set("cutscene1",global.cutscene1)
	playerprefs_set("cutscene1done",global.cutscene1done)	
	playerprefs_set("oProt.sprite_index",oProt.sprite_index)
	playerprefs_set("oProt.xscale",oProt.xscale)
	playerprefs_set("room",room)
	playerprefs_set("lastroom",global.lastroom)
	playerprefs_set("exitx",global.exitx)
	playerprefs_set("exity",global.exity)
	playerprefs_set("A-button",global.key_a)
	playerprefs_set("B-button",global.key_b)
	playerprefs_set("Pause-button",global.key_pause)
	playerprefs_set("Up-button",global.key_up)
	playerprefs_set("Down-button",global.key_down)
	playerprefs_set("Left-button",global.key_left)
	playerprefs_set("Right-button",global.key_right)
	playerprefs_set("Vegan",global.vegan)
	playerprefs_set("Language",global.language)
	playerprefs_set("Music-volume",global.musicvolume)
	playerprefs_set("Master-volume",global.mastervolume)
	playerprefs_set("Cutscene1done",global.cutscene1done)
	playerprefs_set("Cutscene1",global.cutscene1)
	playerprefs_set("Nose",oProt.nose)
	playerprefs_set("Clothes",oProt.clothes) 
	playerprefs_set("Clothescolor",oProt.clothescolor)
	playerprefs_set("Nosecolor",oProt.nosecolor)
	playerprefs_set("Skincolor",oProt.skincolor)
	playerprefs_set("Seconds",global.secondsplayed)
	playerprefs_set("Minutes",global.minutesplayed)
	playerprefs_set("Hours",global.hoursplayed)
	global.savedsecondsplayed = global.secondsplayed
	global.savedminutesplayed = global.minutesplayed
	global.savedhoursplayed = global.hoursplayed
	playerprefs_set("Activerod",global.activerod)
	playerprefs_set("Gettinggear",global.gettinggear)
	playerprefs_set("Activebait",global.activebait)
	
	playerprefs_set("cutscene",global.cutscene)
	playerprefs_set("cutscene2",global.cutscene2)
	playerprefs_set("cutscene3",global.cutscene3)
	playerprefs_set("cutscene4",global.cutscene4)
	playerprefs_set("cutscene5",global.cutscene5)
	playerprefs_set("cutscene6",global.cutscene6)
	playerprefs_set("cutscene7",global.cutscene7)
	playerprefs_set("daugava_set",global.daugava_set)
	playerprefs_set("catchFirstFish",global.catchFirstFish)
	playerprefs_set("showAquaVistaLight",global.showAquaVistaLight)
	playerprefs_set("placedFirstFishInTank",global.placedFirstFishInTank)
	playerprefs_set("gotFishGuide",global.gotFishGuide)
	playerprefs_set("talkedtoRune",global.talkedtoRune)
	playerprefs_set("talkedtoShop",global.talkedtoShop)
	playerprefs_set("numberOfTourists",global.numberOfTourists)
	playerprefs_set("totalFishScore",global.totalFishScore)
	playerprefs_set("rareFishLuck",global.rareFishLuck)
	playerprefs_set("setFishInTank",global.setFishInTank)
	
	
	for (var f = 0; f < global.numberoffish+1; ++f) { //Om man fångat fisken
	    playerprefs_set("Fishinfo" + string(f),global.fishinfo[f])
		playerprefs_set("Fishcolor" + string(f),global.fishcolor[f])
		playerprefs_set("Howmany" + string(f),global.fishhowmanycaught[f])
		playerprefs_set("Fishsize" + string(f),global.fishsize[f])
		
	}
	
	for (var i = 0; i < INVENTORY_SLOTS; ++i) { //Inventory
	    playerprefs_set("Inventory" + string(i),oInventory.inventory[i])
		playerprefs_set("Stacking" + string(i), ds_list_find_value(oInventory.list,i))
	}
	
	for (var l = 0; l < 12; ++l) { //Bait
	    playerprefs_set("Bait" + string(l),oBait.inventory[l])
		playerprefs_set("Bait Stacking" + string(l), ds_list_find_value(oBait.list,l))
	}
	
		for (var m = 0; m < 8; ++m) { //Rods
	    playerprefs_set("Rods" + string(m),oRods.inventory[m])
		playerprefs_set("Rods Stacking" + string(m), ds_list_find_value(oRods.list,m))
	}

}

function scrLoad()
{
oProt.x = playerprefs_get("oProt.x")
oProt.y = playerprefs_get("oProt.y")
global.xbeforefish = playerprefs_get("xbeforefish")
global.ybeforefish = playerprefs_get("ybeforefish")
global.cutscene1 = playerprefs_get("cutscene1")
global.cutscene1done = playerprefs_get("cutscene1done")	
oProt.sprite_index = playerprefs_get("oProt.sprite_index")
oProt.xscale = playerprefs_get("oProt.xscale")
global.roomsave = playerprefs_get("room")
global.lastroom = playerprefs_get("lastroom")
global.exitx = playerprefs_get("exitx")
global.exity = playerprefs_get("exity")
global.key_a = playerprefs_get("A-button")
global.key_b = playerprefs_get("B-button")
global.key_pause = playerprefs_get("Pause-button")
global.key_up = playerprefs_get("Up-button")
global.key_down = playerprefs_get("Down-button")
global.key_left = playerprefs_get("Left-button")
global.key_right = playerprefs_get("Right-button")
global.vegan = playerprefs_get("Vegan")
global.language = playerprefs_get("Language")
global.musicvolume = playerprefs_get("Music-volume")
global.mastervolume = playerprefs_get("Master-volume")
global.cutscene1done = playerprefs_get("Cutscene1done")
global.cutscene1 = playerprefs_get("Cutscene1")
oProt.nose = playerprefs_get("Nose")
oProt.clothes = playerprefs_get("Clothes")
oProt.clothescolor = playerprefs_get("Clothescolor")
oProt.nosecolor = playerprefs_get("Nosecolor")
oProt.skincolor = playerprefs_get("Skincolor")
global.secondsplayed = playerprefs_get("Seconds")
global.minutesplayed = playerprefs_get("Minutes")
global.hoursplayed = playerprefs_get("Hours")
global.activerod = playerprefs_get("Activerod")
global.savedsecondsplayed = global.secondsplayed
global.savedminutesplayed = global.minutesplayed
global.savedhoursplayed = global.hoursplayed
global.gettinggear = playerprefs_get("Gettinggear")
global.activebait = playerprefs_get("Activebait")
	
global.cutscene = playerprefs_get("cutscene")
global.cutscene2 = playerprefs_get("cutscene2")
global.cutscene3 = playerprefs_get("cutscene3")
global.cutscene4 = playerprefs_get("cutscene4")
global.cutscene5 = playerprefs_get("cutscene5")
global.cutscene6 = playerprefs_get("cutscene6")
global.cutscene7 = playerprefs_get("cutscene7")
global.daugava_set = playerprefs_get("daugava_set")
global.catchFirstFish = playerprefs_get("catchFirstFish")
global.showAquaVistaLight = playerprefs_get("showAquaVistaLight")
global.placedFirstFishInTank = playerprefs_get("placedFirstFishInTank")
global.gotFishGuide = playerprefs_get("gotFishGuide")
global.talkedtoRune = playerprefs_get("talkedtoRune")
global.talkedtoShop = playerprefs_get("talkedtoShop")
global.numberOfTourists = playerprefs_get("numberOfTourists")
global.totalFishScore = playerprefs_get("totalFishScore")
global.rareFishLuck = playerprefs_get("rareFishLuck")
global.setFishInTank = playerprefs_get("setFishInTank")


for (var p = 0; p < global.numberoffish+1; ++p) {
global.fishinfo[p] = playerprefs_get("Fishinfo" + string(p))
global.fishcolor[p] = playerprefs_get("Fishcolor" + string(p))
global.fishhowmanycaught[p] = playerprefs_get("Howmany" + string(p))
global.fishsize[p] = playerprefs_get("Fishsize" + string(p))
}

for (var j = 0; j < INVENTORY_SLOTS; ++j) {
oInventory.inventory[j] = playerprefs_get("Inventory" + string(j))
ds_list_insert(oInventory.list,j,playerprefs_get("Stacking" + string(j)))
}
for (var n = 0; n < 12; ++n) {
oBait.inventory[n] = playerprefs_get("Bait" + string(n))
ds_list_insert(oBait.list,n,playerprefs_get("Bait Stacking" + string(n)))
}
for (var o = 0; o < 8; ++o) {
oRods.inventory[o] = playerprefs_get("Rods" + string(o))
ds_list_insert(oRods.list,o,playerprefs_get("Rods Stacking" + string(o)))
}

}




/*                                                                                                                                                                                        
        GGGGGGGGGGGGG                                                                                    lllllll                       kkkkkkkk             iiii          tttt          
     GGG::::::::::::G                                                                                    l:::::l                       k::::::k            i::::i      ttt:::t          
   GG:::::::::::::::G                                                                                    l:::::l                       k::::::k             iiii       t:::::t          
  G:::::GGGGGGGG::::G                                                                                    l:::::l                       k::::::k                        t:::::t          
 G:::::G       GGGGGG  aaaaaaaaaaaaa      mmmmmmm    mmmmmmm      mmmmmmm    mmmmmmm     aaaaaaaaaaaaa    l::::l          ssssssssss    k:::::k    kkkkkkkiiiiiiittttttt:::::ttttttt    
G:::::G                a::::::::::::a   mm:::::::m  m:::::::mm  mm:::::::m  m:::::::mm   a::::::::::::a   l::::l        ss::::::::::s   k:::::k   k:::::k i:::::it:::::::::::::::::t    
G:::::G                aaaaaaaaa:::::a m::::::::::mm::::::::::mm::::::::::mm::::::::::m  aaaaaaaaa:::::a  l::::l      ss:::::::::::::s  k:::::k  k:::::k   i::::it:::::::::::::::::t    
G:::::G    GGGGGGGGGG           a::::a m::::::::::::::::::::::mm::::::::::::::::::::::m           a::::a  l::::l      s::::::ssss:::::s k:::::k k:::::k    i::::itttttt:::::::tttttt    
G:::::G    G::::::::G    aaaaaaa:::::a m:::::mmm::::::mmm:::::mm:::::mmm::::::mmm:::::m    aaaaaaa:::::a  l::::l       s:::::s  ssssss  k::::::k:::::k     i::::i      t:::::t          
G:::::G    GGGGG::::G  aa::::::::::::a m::::m   m::::m   m::::mm::::m   m::::m   m::::m  aa::::::::::::a  l::::l         s::::::s       k:::::::::::k      i::::i      t:::::t          
G:::::G        G::::G a::::aaaa::::::a m::::m   m::::m   m::::mm::::m   m::::m   m::::m a::::aaaa::::::a  l::::l            s::::::s    k:::::::::::k      i::::i      t:::::t          
 G:::::G       G::::Ga::::a    a:::::a m::::m   m::::m   m::::mm::::m   m::::m   m::::ma::::a    a:::::a  l::::l      ssssss   s:::::s  k::::::k:::::k     i::::i      t:::::t    tttttt
  G:::::GGGGGGGG::::Ga::::a    a:::::a m::::m   m::::m   m::::mm::::m   m::::m   m::::ma::::a    a:::::a l::::::l     s:::::ssss::::::sk::::::k k:::::k   i::::::i     t::::::tttt:::::t
   GG:::::::::::::::Ga:::::aaaa::::::a m::::m   m::::m   m::::mm::::m   m::::m   m::::ma:::::aaaa::::::a l::::::l     s::::::::::::::s k::::::k  k:::::k  i::::::i     tt::::::::::::::t
     GGG::::::GGG:::G a::::::::::aa:::am::::m   m::::m   m::::mm::::m   m::::m   m::::m a::::::::::aa:::al::::::l      s:::::::::::ss  k::::::k   k:::::k i::::::i       tt:::::::::::tt
        GGGGGG   GGGG  aaaaaaaaaa  aaaammmmmm   mmmmmm   mmmmmmmmmmmm   mmmmmm   mmmmmm  aaaaaaaaaa  aaaallllllll       sssssssssss    kkkkkkkk    kkkkkkkiiiiiiii         ttttttttttt  









function scrSaveOLD(){
	
	ini_open("saveData.ini");
//	ini_write_real("Location","X",oProt.x) 
//	ini_write_real("Location","Y",oProt.y)
//	ini_write_real("Location","Direction",oProt.sprite_index)
//	ini_write_real("Location","DirectionX",oProt.xscale)
	ini_write_real("Location","Room",room)
	ini_write_real("Location","Lastroom",global.lastroom)
	ini_write_real("Location","exitx",global.exitx)
	ini_write_real("Location","exity",global.exity)
	ini_write_real("Settings","A-button",global.key_a)
	ini_write_real("Settings","B-button",global.key_b)
	ini_write_real("Settings","Pause-button",global.key_pause)
	ini_write_real("Settings","Up-button",global.key_up)
	ini_write_real("Settings","Down-button",global.key_down)
	ini_write_real("Settings","Left-button",global.key_left)
	ini_write_real("Settings","Right-button",global.key_right)
	ini_write_real("Settings","Vegan",global.vegan)
	ini_write_string("Settings","Language",global.language)
	ini_write_real("Settings","Music-volume",global.musicvolume)
	ini_write_real("Settings","Master-volume",global.mastervolume)
	ini_write_real("Progress","Cutscene1done",global.cutscene1done)
	ini_write_real("Progress","Cutscene1",global.cutscene1)
//	ini_write_real("Look","Nose",oProt.nose)
//	ini_write_real("Look","Clothes",oProt.clothes) 
//	ini_write_real("Look","Clothescolor",oProt.clothescolor)
//	ini_write_real("Look","Nosecolor",oProt.nosecolor)
//	ini_write_real("Look","Skincolor",oProt.skincolor)
	ini_write_real("Time","Seconds",global.secondsplayed)
	ini_write_real("Time","Minutes",global.minutesplayed)
	ini_write_real("Time","Hours",global.hoursplayed)

	ini_write_string("Rods","Activerod",global.activerod)
	ini_write_real("Inventory","Inventory",oInventory.inventory)

	global.savedsecondsplayed = global.secondsplayed
	global.savedminutesplayed = global.minutesplayed
	global.savedhoursplayed = global.hoursplayed
	
	ini_close()
}

function scrLoadOLD(){

//Ladda spelet
ini_open("saveData.ini")
global.xbeforefish = ini_read_real("Location","X",global.xbeforefish)
global.ybeforefish = ini_read_real("Location","Y",global.ybeforefish)
global.directionbeforefish = ini_read_real("Location","Direction",sProt_South)
global.xscalebeforefish = ini_read_real("Location","DirectionX",global.xscalebeforefish)
global.roomsave = ini_read_real("Location","Room",rBeachside)
global.lastroom = ini_read_real("Location","Lastroom",global.lastroom)
global.exitx = ini_read_real("Location","exitx",global.exitx)
global.exity = ini_read_real("Location","exity",global.exity)
global.key_a = ini_read_real("Settings","A-button",global.key_a)
global.key_b = ini_read_real("Settings","B-button",global.key_b)
global.key_pause = ini_read_real("Settings","Pause-button",global.key_pause)
global.key_up = ini_read_real("Settings","Up-button",global.key_up)
global.key_down = ini_read_real("Settings","Down-button",global.key_down)
global.key_left = ini_read_real("Settings","Left-button",global.key_left)
global.key_right = ini_read_real("Settings","Right-button",global.key_right)
global.vegan = ini_read_real("Settings","Vegan",global.vegan)
global.language = ini_read_string("Settings","Language",global.language)
global.musicvolume = ini_read_real("Settings","Music-volume",global.musicvolume)
global.mastervolume = ini_read_real("Settings","Master-volume",global.mastervolume)
global.nosebeforefish =	ini_read_real("Look","Nose",global.nosebeforefish)
global.clothesbeforefish = ini_read_real("Look","Clothes",global.clothesbeforefish) 
global.clothescolorbeforefish = ini_read_real("Look","Clothescolor",global.clothescolorbeforefish)
global.nosecolorbeforefish = ini_read_real("Look","Nosecolor",global.nosecolorbeforefish)
global.skincolorbeforefish = ini_read_real("Look","Skincolor",global.skincolorbeforefish)
global.cutscene1done = ini_read_real("Progress","Cutscene1done",false)
global.cutscene1 = ini_read_real("Progress","Cutscene1",true)
global.secondsplayed = ini_read_real("Time","Seconds",global.secondsplayed)
global.minutesplayed = ini_read_real("Time","Minutes",global.minutesplayed)
global.hoursplayed = ini_read_real("Time","Hours",global.hoursplayed)
global.activerod = ini_read_real("Rods","Activerod",global.activerod)
//oInventory.inventory = ini_read_real("Inventory","Inventory",oInventory.inventory)

global.savedsecondsplayed = global.secondsplayed
global.savedminutesplayed = global.minutesplayed
global.savedhoursplayed = global.hoursplayed

ini_close()
}