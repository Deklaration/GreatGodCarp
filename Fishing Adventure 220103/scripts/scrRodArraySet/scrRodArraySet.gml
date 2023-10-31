// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrRodArraySet(){
	
	
var rodNames = [
	"",
    "It's a stick",
    "Old rod",
    "Kinda old rod",
    "This is a ham",
    "A candy cane?",
    "Oh, a super rod!",
    "Cool rod",
    "Good ol' rod"
];

enum enumRods {
    None,         // 0
    ItsAStick,    // 1
    OldRod,       // 2
    KindaOldRod,  // 3
    ThisIsAHam,   // 4
    ACandyCane,   // 5
    OhASuperRod,  // 6
    CoolRod,      // 7
    GoodOlRod     // 8
}

global.rodNumber = [
0,1,2,3,4,5,6,7,8]
	
var rodPower = [ //Påverkar hur länge fisken drar innan den sticker
	"",
    1,	//"It's a stick",
    1.5,//"Old rod",
    2,	//"Kinda old rod",
    2,	//"This is a ham",
    2,	//"A candy cane?",
    3,	//"Oh, a super rod!",
    4.5,//"Cool rod",
    7	//"Good ol' rod"
];
	
var rodThrow = [ //Påverkar hur långt ut man kan kasta linan
	"",
    1,	//"It's a stick",
    1.5,//"Old rod",
    2,	//"Kinda old rod",
    0.7,//"This is a ham",
    2,	//"A candy cane?",
    2.1,//"Oh, a super rod!",
    2.4,//"Cool rod",
    2.4	//"Good ol' rod"
];

var rodInventoryInfos = [
	"",
    "It's just a stupid stick.",
    "This thing's seen more fish than I have years!",
    "A bit worn, but it's got character.",
    "I'm not sure if I should fish with it or eat it.",
    "I feel like Santa going fishing!",
    "Now we're talking! Time to catch a big one.",
    "I'm gonna look like a movie star with this thing.",
    "It's gonna be a good day of fishing."
];



global.numberofrods = 8 //Ändra detta för varje spö som existerar


global.rodarray[0,0] = noone

for (var i = 0; i <= global.numberofrods; ++i) {
	
	global.rodarray[i,0] = rodNames[i]
	global.rodarray[i,1] = rodPower[i]
	global.rodarray[i,2] = rodInventoryInfos[i]
	global.rodarray[i,3] = rodThrow[i]
}
}

function getEnumRodsIndex(rodName) {
    switch(rodName) {
        case enumRods.None : return 0;
        case enumRods.ItsAStick: return 1;
        case enumRods.OldRod: return 2;
        case enumRods.KindaOldRod: return 3;
        case enumRods.ThisIsAHam: return 4;
        case enumRods.ACandyCane: return 5;
        case enumRods.OhASuperRod: return 6;
        case enumRods.CoolRod: return 7;
        case enumRods.GoodOlRod: return 8;
        default: return -1; // Return -1 if the name isn't found
    }
}