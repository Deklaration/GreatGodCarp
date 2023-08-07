// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBaitArraySet(){
	
var baitNames = [
	"",
	"Wiggle Worm",
	"Fart Grub",
	"Burp Bug",
	"Rolly Polly",
	"Sneezy Fern",
	"Shimmy Shine",
	"Splash Splash",
	"Sunburn Snack",
	"Snort Star",
	"Tummy Tickler",
	"Giggle Guppy",
	"Silly Skydiver"
];

var baitDescriptions = [
	"",
	"Does the worm dance!",
	"Toots with every cast!",
	"Bubbles and burps in water!",
	"Rolls around, so silly!",
	"Goes ACHOO! in your tackle box!",
	"Shimmers and shakes!",
	"Brings the splash party!",
	"Hot red and sun-kissed!",
	"Giggles with starry snorts!",
	"Tickle attack for fishy tummies!",
	"Laughs underwater!",
	"Soars like a willy-nilly bird!"
];

var baitPrices = [
	0,
	1,
	3,
	10,
	6,
	8,
	9,
	12,
	7,
	11,
	4,
	15,
	2
];

var baitStoreDescriptions = [
    "", // Placeholder
    "Attracts playful or swift fish", // Wiggle Worm
    "Attracts fish found in dark or muddy environments", // Fart Grub
    "Attracts fish that live in bubbling or turbulent waters", // Burp Bug
    "Attracts fish with unique movements like spinning or gliding", // Rolly Polly
    "Attracts fish that live in forest waters", // Sneezy Fern
    "Attracts fish with shimmering or glowing appearances", // Shimmy Shine
    "Attracts fish that make splashes or live in rapids", // Splash Splash
    "Attracts fish with a sun or fiery aspect", // Sunburn Snack
    "Attracts fish with a sparkling or spiraling movement", // Snort Star
    "Attracts fish that nibble or eat plants", // Tummy Tickler
    "Attracts fish with enchanting or dreamy characteristics", // Giggle Guppy
    "Attracts fish that leap or soar" // Silly Skydiver
];

// Fish categorized by bait
var baitFishGroups;

baitFishGroups[0] = [0]

// Wiggle Worm - Attracts playful or swift fish
baitFishGroups[1] = ["Lakegem", "Whisklash", "Bubblerise", "Waveshimmer", "Muddweller", "Surfdrifter", "Finfury", "Streamgill", "Rapidskimmer", "Currentswift"];

// Fart Grub - Attracts fish found in dark or muddy environments
baitFishGroups[2] = ["Lakelight", "Weedsnout", "Tidalflicker", "Muddweller", "Echodepth", "Abyssglow", "Inkfish"];

// Burp Bug - Attracts fish that live in bubbling or turbulent waters
baitFishGroups[3] = ["Coralfin", "Finfury", "Lumipuff", "Saltysurge", "Stormdrifter", "Bouldermaw"];

// Rolly Polly - Attracts fish with unique movements like spinning or gliding
baitFishGroups[4] = ["Echodepth", "Reedripple", "Surfdrifter", "Stormdrifter", "Whirlskimmer", "Flyfin"];

// Sneezy Fern - Attracts fish that live in forest waters
baitFishGroups[5] = ["Leafscale", "Timbertrickle", "Fernflutter", "Blossomfin", "Kelpshield", "Vinerider", "Barkbiter", "Pinescale", "Oakscale"];

// Shimmy Shine - Attracts fish with shimmering or glowing appearances
baitFishGroups[6] = ["Abyssglow", "Seaspike", "Pearlshimmer", "Silverflicker", "Waveshimmer", "Aqualite", "Sapphire Sturgeon", "Diamond Sturgeon", "Ruby Sturgeon"];

// Splash Splash - Attracts fish that make splashes or live in rapids
baitFishGroups[7] = ["Inkfish", "Streamgill", "Rapidskimmer", "Bouldermaw", "Brookflare", "Sunsetgill", "Currentswift"];

// Sunburn Snack - Attracts fish with a sun or fiery aspect
baitFishGroups[8] = ["Sunsetgill", "Surgeknight", "Diamond Sturgeon", "Sapphire Sturgeon", "Ruby Sturgeon"];

// Snort Star - Attracts fish with a sparkling or spiraling movement
baitFishGroups[9] = ["Brookflare", "Currentswift", "Mossfin", "Rivertwirl", "Quillure"];

// Tummy Tickler - Attracts fish that nibble or eat plants
baitFishGroups[10] = ["Kelpshield", "Vinerider", "Barkbiter", "Pinescale", "Roottrickle"];

// Giggle Guppy - Attracts fish with enchanting or dreamy characteristics
baitFishGroups[11] = ["Blossomflutter", "Dracofin", "Fluffin", "Ruby Sturgeon", "Echoesolace"];

// Silly Skydiver - Attracts fish that leap or soar
baitFishGroups[12] = ["Roottrickle", "Oakscale", "Pebbletrout", "Quillure", "Flyfin", "Bubblerise"];


// Usage example
for (var i = 0; i < array_length(baitNames); i++) {
	var bait = baitNames[i];
	var fishList = baitFishGroups[i];
	show_debug_message(bait + ": " + string(fishList));
}


global.numberofbaits = 1 //Ändra detta för varje spö som existerar


global.baitarray[0,0] = noone

for (var i = 0; i <= global.numberofbaits; ++i) {
	
	global.baitarray[i,0] = baitNames[i]
	global.baitarray[i,1] = baitDescriptions[i]
	global.baitarray[i,2] = baitPrices[i]
	global.baitarray[i,3] = baitStoreDescriptions[i]
}
}
