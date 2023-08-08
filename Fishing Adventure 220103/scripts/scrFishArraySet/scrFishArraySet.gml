// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function create_fish_path(points)
{
    var newPath = path_add();
    for (var i = 0; i < array_length(points); i += 2)
    {
        path_add_point(newPath, points[i], points[i + 1], 20);
    }
    return newPath;
}


function scrFishArraySet(){
	
	global.fishNames = [
	"",           // 0
    "Lakelight",  // 1
    "Muddweller", // 2
    "Reedripple", // 3
    "Lakegem",    // 4
    "Weedsnout",  // 5
    "Echodepth",  // 6
    "Whisklash",  // 7
    "Bubblerise", // 8
    "Waveshimmer",// 9
    "Coralfin",   // 10
    "Saltysurge", // 11
    "Tidalflicker",// 12
    "Abyssglow",  // 13
    "Surfdrifter",// 14
    "Finfury",    // 15
    "Lumipuff",   // 16
    "Seaspike",   // 17
    "Pearlshimmer",// 18
    "Surgeknight",// 19
    "Silverflicker",// 20
    "Stormdrifter",// 21
    "Inkfish",    // 22
	"Floatsquish",// 23
    "Leafscale",  // 24
    "Timbertrickle",// 25
    "Kelpshield", // 26
    "Barkbiter",  // 27
    "Fernflutter",// 28
    "Pinescale",  // 29
    "Roottrickle",// 30
    "Oakscale",   // 31
    "Dracofin",   // 32
    "Fluffin",    // 33
    "Streamgill", // 34
    "Rapidskimmer",// 35
    "Aqualite",   // 36
    "Bouldermaw", // 37
    "Brookflare", // 38
    "Currentswift",// 39
    "Mossfin",    // 40
    "Rivertwirl", // 41
    "Pebbletrout",// 42
    "Sunsetgill", // 43
    "Whirlskimmer",// 44
    "Quillure",   // 45
    "Sappurgeon", // 46
    "Diamurgeon", // 47
    "Ruburgeon",  // 48
    "Echoesolace",// 49
    "Flyfin",     // 50
	"Hellstromming"	//51
];


var fishRarity = [
    0,  // "" 
    10, // "Lakelight",
    1,  // "Muddweller",
    5,  // "Reedripple",
    10, // "Lakegem",
    1,  // "Weedsnout",
    10, // "Echodepth",
    5,  // "Whisklash",
    5,  // "Bubblerise",
    5,  // "Waveshimmer",
    10, // "Coralfin",
    10, // "Saltysurge",
    10, // "Tidalflicker",
    50, // "Abyssglow",
    5,  // "Surfdrifter",
    10, // "Finfury",
    10, // "Lumipuff",
    5,  // "Seaspike",
    10, // "Pearlshimmer",
    1,  // "Surgeknight",
    5,  // "Silverflicker",
    5,  // "Stormdrifter",
    10, // "Inkfish",
	50, // "Floatsquish,
    1,  // "Leafscale",
    5,  // "Timbertrickle",
    10, // "Kelpshield",
    1,  // "Barkbiter",
    10, // "Fernflutter",
    5,  // "Pinescale",
    10, // "Roottrickle",
    10, // "Oakscale",
    50, // "Dracofin",
    50, // "Fluffin",
    1,  // "Streamgill",
    5,  // "Rapidskimmer",
    10, // "Aqualite",
    5,  // "Bouldermaw",
    10, // "Brookflare",
    10, // "Currentswift",
    5,  // "Mossfin",
    5,  // "Rivertwirl",
    1,  // "Pebbletrout",
    10, // "Sunsetgill",
    10, // "Whirlskimmer",
    50, // "Quillure",
    500, // "Sappurgeon",
    500, // "Diamurgeon",
    500, // "Ruburgeon",
    500, // "Echoesolace",
    50, // "Flyfin"
	500 // Hellströmming
];

var fishAquaVistaInfos = [
    "", // ""
    "The luminescent spots on this fish's body can light up dark lake waters.", // Lakelight
    "Known for burrowing in lake beds, this fish stirs up mud to hide from predators.", // Muddweller
    "It weaves through reeds with ease, its movements creating beautiful ripples on the lake surface.", // Reedripple
    "Its jewel-like scales are said to bring good fortune to those who find it.", // Lakegem
    "Known for its elongated snout, it probes through lake weed for tiny creatures.", // Weedsnout
    "This unique species uses sound waves to navigate the dark depths of lakes.", // Echodepth
    "The lake's playful companion. Its whisker-like fins playfully dance through the water, bringing smiles to lakeside observers.", // Whisklash
    "Its playful leaps create bubbles that rise to the surface, adding charm to the tranquil waters.", // Bubblerise
    "This fish's metallic scales refract sunlight, causing a dazzling shimmer underwater.", // Waveshimmer
    "Coral-colored scales, blend seamlessly with vibrant coral reefs in warm ocean waters.", // Coralfin
    "Able to withstand the harshest saltwater conditions, their scales contain salt crystals.", // Saltysurge
    "This fish can manipulate the tidal currents to disorient predators.", // Tidalflicker
    "Found in the ocean's darkest depths, its bioluminescent glow attracts curious prey.", // Abyssglow
    "Known for its long, slow migrations across vast oceans, powered by the waves.", // Surfdrifter
    "Swift ocean dweller. Dazzling scales, vibrant patterns race through warm waters. Often seen in tropical regions.", // Finfury
    "Soft, puffy appearance, gentle glow create calming presence. Inhabits serene, clear waters.", // Lumipuff
    "Covered in spiky scales, it uses its body to protect itself from predators.", // Seaspike
    "It's iridescent scales give off a pearl-like sheen, dazzling under the ocean sun.", // Pearlshimmer
    "This common fish has black and silver armored scales, appearing knight-like.", // Surgeknight
    "This silver surfer shimmers, confusing predators with its darting movements.", // Silverflicker
    "It thrives during stormy weather, using the turbulent waves to its advantage.", // Stormdrifter
    "It is said that a book written with the ink from the inkfish will surely be a masterpiece.", // Inkfish
    "This delicate jellyfish glows with an ethereal light, illuminating the deep with a soft, gentle luminescence.", //Softsquish
	"Found in forest streams, its scales mimic fallen leaves for camouflage.", // Leafscale
    "This fish inhabits water trapped in hollow trees, surviving on insects that fall in.", // Timbertrickle
    "This fish has evolved to blend perfectly into kelp forests, making it a master of hide and seek.", // Kelpshield
    "Known to nibble on tree roots that hang into forest water bodies.", // Barkbiter
    "Its fins resemble fern leaves, providing perfect camouflage in forest ponds.", // Fernflutter
    "This scary-looking has needle-like scales, blending seamlessly in pine forests.", // Pinescale
    "This Timbertrickle variant is found in water-filled roots of ancient trees.", // Roottrickle
    "This Leafscale variant's oak-leaf pattern provides superior camouflage.", // Oakscale
    "Mythical forest swimmer. Dragon-like fins allow it to glide with enchantment in mystical woodland streams.", // Dracofin
    "Dreamy forest drifter. Fins resemble fluff, drifts dreamily through calm, mossy streams in heart of woodlands.", // Fluffin
    "Streamgills have slender bodies that allow them to dart quickly between rocks. Their gills shine like gemstones under the sun.", // Streamgill
    "Known for its ability to dance on the water's surface, Rapidskimmer are often mistaken for water bugs.", // Rapidskimmer
    "The aquatic gem. Shimmering scales emit a soothing glow, mesmerizing underwater display. Prefers clear rivers with gentle currents.", // Aqualite
    "With its jaw lined with rock-hard teeth, Bouldermaw can crunch through pebbles to find food.", // Bouldermaw
    "These iridescent fish create a mesmerizing light show as they leap out of the water.", // Brookflare
    "Its streamlined body is perfect for high-speed pursuits in fast-moving waters.", // Currentswift
    "Prefers slow-moving or stagnant waters and has a moss-like fin which provides camouflage.", // Mossfin
    "Known for its spiral movement against the current, creating miniature whirlpools.", // Rivertwirl
    "This pebbly-scaled fish is a master of camouflage in rocky riverbeds.", // Pebbletrout
    "A variant of Streamgill, Sunsetgills gleam a brilliant orange-red at dusk.", // Sunsetgill
    "Spins rapidly, creating a mesmerizing water display.", // Whirlskimmer
    "Elegant quill-like fins, graceful glide enchanting presence is calm waterways.", // Quillure
    "This elusive fish has sapphire scales said to have magical properties.", // Sappurgeon
    "Shimmers like a jewel in clear water. A beautiful, elusive prize testing angler skills.", // Diamurgeon
    "Glowing red like fire, its ruby scales are said to hold intense heat.", // Ruburgeon
    "This fish sings an enchanting melody, but is heard only once every hundred years.", // Echoesolace
    "Airborne ocean marvel. Leaping from waves, gliding above water, soars alongside ocean winds with graceful aerial flips.", // Flyfin
	"Got a huge fanbase, but rarely shows up anymore. It might have moved abroad?" //Hellströmming
];


var fishInventoryInfos = [
    "", // ""
    "Whoa, it's like a mobile lantern! So shiny...", // Lakelight
    "Uh oh, a fish that loves mud? Mom would go nuts.", // Muddweller
    "It moves so beautifully, like an underwater dancer! Poetry in motion!", // Reedripple
    "Look at that shine! Who needs treasure when you have this fish?", // Lakegem
    "What's with the long face, buddy? Or is it a nose?", // Weedsnout
    "Now, this one's a submarine with built-in sonar. Cool and creepy...", // Echodepth
    "I hope someone remembers to feed my cat back home...", // Whisklash
    "Bubbles, bubbles everywhere! It's like a fishy jacuzzi.", // Bubblerise
    "This one's giving off some serious disco vibes. Talk about a showstopper!", // Waveshimmer
    "Pretty in pink! Or is that coral? Either way, it's cute.", // Coralfin
    "Man, this fish is literally salty! Like a living, swimming salt shaker.", // Saltysurge
    "Watch out! This one's got some serious waves. Surf's up!", // Tidalflicker
    "It's a deep-sea lightbulb! Kind of eerie, but in a cool way.", // Abyssglow
    "Slow and steady wins the race, huh? Take your time, buddy.", // Surfdrifter
    "So fast! It's like a torpedo with scales. Yowza!", // Finfury
    "Soft, glowing... it's like hugging a cloud. If clouds lived underwater...", // Lumipuff
    "Whoa, spikey! I wouldn't want to step on this guy.", // Seaspike
    "Now that's what I call bling! It's like a living gemstone.", // Pearlshimmer
    "Knight of the sea, huh? Looks more like an underwater tank.", // Surgeknight
    "It's a living mirror! Reflecting all the light around. Dazzling!", // Silverflicker
    "This one's a storm chaser. Brave little guy!", // Stormdrifter
    "A fish full of ink? Might be handy if I ever forget my pen...", // Inkfish
	"Ugh, it feels like jelly but tastes like feet!", //Softsquish
    "A fish or a leaf? Nature's got a sense of humor.", // Leafscale
    "Talk about a minimalist lifestyle! This one's a true survivor.", // Timbertrickle
    "Hide and seek champion right here! Where did it go?", // Kelpshield
    "A wood-eating fish! Hope it doesn't confuse my boat with food.", // Barkbiter
    "Fern-leaf fins? That's some high-level disguise, dude!", // Fernflutter
    "Pineneedles on a fish? Yikes, wouldn't want to step on this guy!", // Pinescale
    "Lives in roots? Talk about an underground lifestyle!", // Roottrickle
    "Oak-leaf pattern, nice! This fish knows style.", // Oakscale
    "Dragon fins? More like draco-fish!", // Dracofin
    "Fluffy fish, how cute! It's like a water bunny.", // Fluffin
    "Slim and quick! This one's like an underwater snake.", // Streamgill
    "A fish that dances on water? Now that's a talent!", // Rapidskimmer
    "A glowing gem fish, huh? Now that's fancy!", // Aqualite
    "Whoa, rock-hard teeth! I bet this one doesn't worry about cavities.", // Bouldermaw
    "This one's a real show-off, huh? Bet it's a hit at parties.", // Brookflare
    "Streamlined and fast, like a race car with fins!", // Currentswift
    "Camouflage game strong with this one! Can barely see it!", // Mossfin
    "This one's a whirlwind! Or should I say, whirlpool?", // Rivertwirl
    "Look at that, just like the riverbed! It's practically invisible.", // Pebbletrout
    "Sunset colors! This one really knows how to stand out.", // Sunsetgill
    "Whoa, it's like a spinning top, but in water!", // Whirlskimmer
    "Quills on a fish? That's a first. Definitely a unique find.", // Quillure
    "Sapphire scales? I bet this one's expensive.", // Sappurgeon
    "Diamond scales! Talk about an extravagant fish.", // Diamurgeon
    "It's like a fiery jewel! Absolutely stunning!", // Ruburgeon
    "A singing fish? I didn't know that was possible!", // Echoesolace
    "Flying fish? Now I've seen everything! Talk about defying gravity.", // Flyfin
	"Go little rockstar." //Hellströmming
];

var fishValue = [
  0, 1, 2, 3, 4, 5, 
  6, 7, 8, 9, 10,
  11, 12, 13, 14, 15,
  16, 17, 18, 19, 20,
  21, 22, 23, 24, 25,
  26, 27, 28, 29, 30,
  31, 32, 33, 34, 35,
  36, 37, 38, 39, 40,
  41, 42, 43, 44, 45,
  46, 47, 48, 49, 50, 51
];

// Lake fish
global.lakeFish = [
    oFishLakelight, oFishMuddweller, oFishReedripple, oFishLakegem, oFishWeedsnout,
    oFishEchodepth, oFishWhisklash, oFishBubblerise
];

// Ocean fish
global.oceanFish = [
    oFishWaveshimmer, oFishCoralfin, oFishSaltysurge, oFishTidalflicker, oFishAbyssglow,
    oFishSurfdrifter, oFishFinfury, oFishLumipuff, oFishSeaspike, oFishPearlshimmer,
    oFishSurgeknight, oFishSilverflicker, oFishStormdrifter, oFishInkfish, oFishSoftsquish
];

// Forest fish
global.forestFish = [
    oFishLeafscale, oFishTimbertrickle, oFishKelpshield, oFishBarkbiter,
    oFishFernflutter, oFishPinescale, oFishRoottrickle, oFishOakscale,
    oFishDracofin, oFishFluffin
];

// River fish
global.riverFish = [
    oFishStreamgill, oFishRapidskimmer, oFishAqualite, oFishBouldermaw, oFishBrookflare,
    oFishCurrentswift, oFishMossfin, oFishRivertwirl, oFishPebbletrout, oFishSunsetgill,
    oFishWhirlskimmer, oFishQuillure
];

// Deeply rare fish
global.rareFish = [
    oFishSappurgeon, oFishDiamurgeon, oFishRuburgeon, oFishEchoesolace, oFishHellstromming
];

// Flying fish
global.flyingFish = [
    oFishFlyfin
];

var paths = ds_map_create();
//Paths for the fish



//Lake fish

// Lakelight
var lakeLightPoints = [181, 246, 190, 230, 200, 240, 210, 230, 220, 240, 230, 230, 240, 240, 250, 230, 260, 240, 270, 230];
var lakelight_path = create_fish_path(lakeLightPoints);
paths[? "Lakelight"] = lakelight_path

// Muddweller
//var muddwellerPoints = [181, 246, 170, 260, 190, 255, 180, 240, 195, 235, 185, 245, 200, 250];
var muddwellerPoints = [
    180, 250, // Start near the surface
    190, 300, // Dive down
    200, 310, 210, 300, 220, 310, 230, 300, // Zig-zag near the bottom
    240, 310, 250, 300, 260, 310, 270, 300,
    280, 250  // Move back towards the surface
];
var muddweller_path = create_fish_path(muddwellerPoints);
paths[? "Muddweller"] = muddweller_path

// Whisklash
var whisklashPoints = [150, 240, 160, 220, 180, 250, 200, 220, 210, 230, 220, 210, 230, 240, 250, 220, 270, 240, 290, 220];
var whisklash_path = create_fish_path(whisklashPoints);
paths[? "Whisklash"] = whisklash_path



//Ocean fish 

// Waveshimmer
var waveShimmerPoints = [181, 246, 195, 235, 210, 245, 225, 235, 240, 245, 255, 235];
var waveShimmerPath = create_fish_path(waveShimmerPoints);

// Surfdrifter
var surfDrifterPoints = [181, 246, 185, 240, 190, 245, 195, 240, 200, 245, 205, 240, 210, 245, 215, 240];
var surfDrifterPath = create_fish_path(surfDrifterPoints);
	
	
	
	
	


global.numberoffish = 51 //Ändra detta för varje fisk som existerar


global.fisharray[0,0] = noone

for (var i = 0; i <= global.numberoffish; ++i) {
    var fishObjName = "oFish" + string(global.fishNames[i]);
    var fishSpriteName = "sFish" + string(global.fishNames[i]);
    var fishVeganSpriteName = fishSpriteName + "_vegan";
	
	global.fisharray[i, 0] = asset_get_index(fishObjName); // Object
	global.fisharray[i, 1] = asset_get_index(fishSpriteName); // Sprite
	global.fisharray[i, 2] = asset_get_index(fishVeganSpriteName); // Vegan Sprite	
	global.fisharray[i, 3] = fishValue[i]; // Cost in store
	global.fisharray[i, 4] = global.fishNames[i]; // Fish name
	global.fisharray[i, 5] = fishAquaVistaInfos[i]; // AquaVista info
	global.fisharray[i, 6] = fishInventoryInfos[i]; // Inventory info
	global.fisharray[i, 7] = sprite_get_xoffset(asset_get_index(fishSpriteName)); // Sprite origin X, normal fish
	global.fisharray[i, 8] = sprite_get_yoffset(asset_get_index(fishSpriteName)); // Sprite origin Y, normal fish
	global.fisharray[i, 9] = sprite_get_xoffset(asset_get_index(fishVeganSpriteName)); // Sprite origin X, vegan
	global.fisharray[i, 10] = sprite_get_yoffset(asset_get_index(fishVeganSpriteName)); // Sprite origin Y, vegan
	global.fisharray[i, 11] = fishRarity[i]; //Rarity
	global.fisharray[i, 12] = paths[? global.fishNames[i]]; // Path
	global.fisharray[i, 13] = i; //Fishnumber
	
	
}

ds_map_destroy(paths);



}
