// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBaitArraySet(){
	
var baitNames = [
	"",
	"Safety Pin",
	"Murk Munch",
	"Froth Flyer",
	"Rolly Polly",
	"Timber Teaser",
	"Lumin-Lure",
	"Rapids Rattle",
	"Solar Snack",
	"Spiral Spark",
	"Herb Hopper",
	"Mystic Morsel",
	"Sky Surfer"
];


var baitDescriptions = [
	"", // Placeholder
	"It's just a worm on a safety pin.", // Zippy Nibble
	"This doesn't seem very tasty...", // Murk Munch
	"Bubbles and burps in water!", // Froth Flyer
	"Rolls around! Look at it go!", // Rolly Polly
	"The fish won't see it coming!", // Timber Teaser
	"Shimmers and shakes!", // Lumin-Lure
	"This reminds me of my mom.", // Rapids Rattle
	"Hot red and sun-kissed!", // Solar Snack
	"For those sparkling fish!", // Spiral Spark
	"Perfect for vegetarian fish!", // Herb Hopper
	"This seems too fancy to use as a bait.", // Mystic Morsel
	"Soars like a willy-nilly bird!" // Sky Surfer
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
	17,
	2
];

var baitStoreDescriptions = [
    "", // Placeholder
    "Attracts playful or swift fish", // Safety Pin
    "Attracts fish found in dark or muddy environments", //  Murk Munch
    "Attracts fish that live in bubbling or turbulent waters", // Froth Flyer
    "Attracts fish with unique movements like spinning or gliding", // Rolly Polly
    "Attracts fish that live in forest waters", // Timber Teaser
    "Attracts fish with shimmering or glowing appearances", // Lumin-Lure
    "Attracts fish that make splashes or live in rapids", // Rapids Rattle
    "Attracts fish with a sun or fiery aspect", // Solar Snack
    "Attracts fish with a sparkling or spiraling movement", // Spiral Spark
    "Attracts fish that nibble or eat plants", // Herb Hopper
    "Attracts fish with enchanting or dreamy characteristics", // Mystic Morsel
    "Attracts fish that leap or soar" // Sky Surfer
];

// Fish categorized by bait
var baitFishGroups;

baitFishGroups[0] = [0]
/*
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
*/


// Wiggle Worm - Attracts playful or swift fish
baitFishGroups[1] = [oFishLakegem, oFishWhisklash, oFishBubblerise, oFishWaveshimmer, oFishSurfdrifter, oFishFinfury, oFishStreamgill, oFishRapidskimmer, oFishCurrentswift];

// Fart Grub - Attracts fish found in dark or muddy environments
baitFishGroups[2] = [oFishLakelight, oFishWeedsnout, oFishTidalflicker, oFishMuddweller, oFishEchodepth, oFishAbyssglow, oFishInkfish];

// Burp Bug - Attracts fish that live in bubbling or turbulent waters
baitFishGroups[3] = [oFishCoralfin, oFishFinfury, oFishLumipuff, oFishSaltysurge, oFishStormdrifter, oFishBouldermaw];

// Rolly Polly - Attracts fish with unique movements like spinning or gliding
baitFishGroups[4] = [oFishEchodepth, oFishReedripple, oFishSurfdrifter, oFishStormdrifter, oFishWhirlskimmer, oFishFlyfin];

// Sneezy Fern - Attracts fish that live in forest waters
baitFishGroups[5] = [oFishLeafscale, oFishTimbertrickle, oFishFernflutter, oFishKelpshield, oFishBarkbiter, oFishPinescale, oFishOakscale];

// Shimmy Shine - Attracts fish with shimmering or glowing appearances
baitFishGroups[6] = [oFishAbyssglow, oFishSeaspike, oFishPearlshimmer, oFishSilverflicker, oFishWaveshimmer, oFishAqualite, oFishSappurgeon, oFishDiamurgeon, oFishRuburgeon];

// Splash Splash - Attracts fish that make splashes or live in rapids
baitFishGroups[7] = [oFishInkfish, oFishStreamgill, oFishRapidskimmer, oFishBouldermaw, oFishBrookflare, oFishSunsetgill, oFishCurrentswift];

// Sunburn Snack - Attracts fish with a sun or fiery aspect
baitFishGroups[8] = [oFishSunsetgill, oFishSurgeknight, oFishDiamurgeon, oFishSappurgeon, oFishRuburgeon];

// Snort Star - Attracts fish with a sparkling or spiraling movement
baitFishGroups[9] = [oFishBrookflare, oFishCurrentswift, oFishMossfin, oFishRivertwirl, oFishQuillure];

// Tummy Tickler - Attracts fish that nibble or eat plants
baitFishGroups[10] = [oFishKelpshield, oFishBarkbiter, oFishPinescale, oFishRoottrickle];

// Giggle Guppy - Attracts fish with enchanting or dreamy characteristics
baitFishGroups[11] = [oFishDracofin, oFishFluffin, oFishRuburgeon, oFishEchoesolace];

// Silly Skydiver - Attracts fish that leap or soar
baitFishGroups[12] = [oFishRoottrickle, oFishOakscale, oFishPebbletrout, oFishQuillure, oFishFlyfin, oFishBubblerise];


global.numberofbaits = array_length(baitNames)-1 //Ändra detta för varje bete som existerar


global.baitarray[0,0] = noone

for (var i = 0; i <= global.numberofbaits; ++i) {
	
	global.baitarray[i,0] = baitNames[i]
	global.baitarray[i,1] = baitDescriptions[i]
	global.baitarray[i,2] = baitPrices[i]
	global.baitarray[i,3] = baitStoreDescriptions[i]
	global.baitarray[i,4] = baitFishGroups[i]
}
}
