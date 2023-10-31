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
	
	enum enumFish {
    None,          // 0
    Lakelight,     // 1
    Muddweller,    // 2
    Reedripple,    // 3
    Lakegem,       // 4
    Weedsnout,     // 5
    Echodepth,     // 6
    Whisklash,     // 7
    Bubblerise,    // 8
    Waveshimmer,   // 9
    Coralfin,      // 10
    Saltysurge,    // 11
    Tidalflicker,  // 12
    Abyssglow,     // 13
    Surfdrifter,   // 14
    Finfury,       // 15
    Lumipuff,      // 16
    Seaspike,      // 17
    Pearlshimmer,  // 18
    Surgeknight,   // 19
    Silverflicker, // 20
    Stormdrifter,  // 21
    Inkfish,       // 22
    Softsquish,    // 23
    Leafscale,     // 24
    Timbertrickle, // 25
    Kelpshield,    // 26
    Barkbiter,     // 27
    Fernflutter,   // 28
    Pinescale,     // 29
    Roottrickle,   // 30
    Oakscale,      // 31
    Dracofin,      // 32
    Fluffin,       // 33
    Streamgill,    // 34
    Rapidskimmer,  // 35
    Aqualite,      // 36
    Bouldermaw,    // 37
    Brookflare,    // 38
    Currentswift,  // 39
    Mossfin,       // 40
    Rivertwirl,    // 41
    Pebbletrout,   // 42
    Sunsetgill,    // 43
    Whirlskimmer,  // 44
    Quillure,      // 45
    Sappurgeon,    // 46
    Diamurgeon,    // 47
    Ruburgeon,     // 48
    Echoesolace,   // 49
    Flyfin,        // 50
    Hellstromming  // 51
}




	
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
	"Softsquish",// 23
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
    5, // "Lakelight",
    1,  // "Muddweller",
    5,  // "Reedripple",
    10, // "Lakegem",
    1,  // "Weedsnout",
    10, // "Echodepth",
    1,  // "Whisklash",
    5,  // "Bubblerise",
    1,  // "Waveshimmer",
    5, // "Coralfin",
    1, // "Saltysurge",
    5, // "Tidalflicker",
    50, // "Abyssglow",
    5,  // "Surfdrifter",
    1, // "Finfury",
    10, // "Lumipuff",
    1,  // "Seaspike",
    10, // "Pearlshimmer",
    1,  // "Surgeknight",
    5,  // "Silverflicker",
    1,  // "Stormdrifter",
    10, // "Inkfish",
	50, // "Softsquish,
    1,  // "Leafscale",
    5,  // "Timbertrickle",
    10, // "Kelpshield",
    1,  // "Barkbiter",
    1, // "Fernflutter",
    5,  // "Pinescale",
    10, // "Roottrickle",
    10, // "Oakscale",
    50, // "Dracofin",
    50, // "Fluffin",
    1,  // "Streamgill",
    5,  // "Rapidskimmer",
    1, // "Aqualite",
    5,  // "Bouldermaw",
    10, // "Brookflare",
    10, // "Currentswift",
    5,  // "Mossfin",
    1,  // "Rivertwirl",
    1,  // "Pebbletrout",
    10, // "Sunsetgill",
    5, // "Whirlskimmer",
    50, // "Quillure",
    500, // "Sappurgeon",
    500, // "Diamurgeon",
    500, // "Ruburgeon",
    500, // "Echoesolace",
    50, // "Flyfin"
	500 // Hellströmming
];

//var fishBait = [

//]

var fishAquaVistaInfos = [
    "", // ""
    "The luminescent spots on this fish's body can light up dark lake waters.", // Lakelight
    "Known for burrowing in lake beds, this fish stirs up mud to hide from predators.", // Muddweller
    "It weaves through reeds with ease, its movements creating beautiful ripples on the lake surface.", // Reedripple
    "Its jewel-like scales are said to bring good fortune to those who find it.", // Lakegem
    "Known for its elongated snout and terrible smell, it probes through lake weed.", // Weedsnout
    "This unique species uses sound waves to navigate the dark depths of lakes.", // Echodepth
    "The lake's playful companion. Its whisker-like fins playfully dance through the water, bringing smiles to lakeside observers.", // Whisklash
    "Its playful leaps create bubbles that rise to the surface, adding charm to the tranquil waters.", // Bubblerise
    "This fish's metallic scales refract sunlight, causing a dazzling shimmer underwater.", // Waveshimmer
    "Coral-colored scales, blend seamlessly with vibrant coral reefs in warm ocean waters. Feeds on bugs that happen to fall into the water.", // Coralfin
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
    "This scary-looking fish has needle-like scales, blending seamlessly in pine forests.", // Pinescale
    "This Timbertrickle variant is found in water-filled roots of ancient trees.", // Roottrickle
    "This Leafscale variant's oak-leaf pattern provides superior camouflage.", // Oakscale
    "Mythical swimmer. Dragon-like fins allow it to glide with enchantment in mystical streams.", // Dracofin
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
	"Got a huge fanbase, but rarely shows up anymore. It might have moved abroad, feeling like a big fish in a small pond." //Hellströmming
];


var fishInventoryInfos = [
    "", // ""
    "Whoa, it lights up! Must be handy to be your own night light.", // Lakelight
    "Uh oh, a fish that loves mud? My mom would hate it.", // Muddweller
    "It moves so beautifully, like an underwater dancer! Poetry in motion!", // Reedripple
    "Look at that shine! Who needs treasure when you have this fish?", // Lakegem
    "Ugh, it stinks! How can a fish with a huge nose smell so bad?!", // Weedsnout
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

global.fishNumber = [
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
global.lakeFish = [0,
    oFishLakelight, oFishMuddweller, oFishReedripple, oFishLakegem, oFishWeedsnout,
    oFishEchodepth, oFishWhisklash, oFishBubblerise, oFishDracofin
];

// Ocean fish
global.oceanFish = [0,
    oFishWaveshimmer, oFishCoralfin, oFishSaltysurge, oFishTidalflicker, oFishAbyssglow,
    oFishSurfdrifter, oFishFinfury, oFishLumipuff, oFishSeaspike, oFishPearlshimmer,
    oFishSurgeknight, oFishSilverflicker, oFishStormdrifter, oFishInkfish, oFishSoftsquish
];

// Forest fish
global.forestFish = [0,
    oFishLeafscale, oFishTimbertrickle, oFishKelpshield, oFishBarkbiter,
    oFishFernflutter, oFishPinescale, oFishRoottrickle, oFishOakscale,
    oFishDracofin, oFishFluffin
];

// River fish
global.riverFish = [0,
    oFishStreamgill, oFishRapidskimmer, oFishAqualite, oFishBouldermaw, oFishBrookflare,
    oFishCurrentswift, oFishMossfin, oFishRivertwirl, oFishPebbletrout, oFishSunsetgill,
    oFishWhirlskimmer, oFishQuillure
];

// Deeply rare fish
global.rareFish = [0,
    oFishSappurgeon, oFishDiamurgeon, oFishRuburgeon, oFishEchoesolace, oFishHellstromming
];

// Flying fish
global.flyingFish = [0,
    oFishFlyfin
];



/////////////FISH NUMBERS///////////////

// Lake fish
global.lakeFishNumber = [ 0,
    1, 2, 3, 4, 5,
    6, 7, 8, 32
];

// Ocean fish
global.oceanFishNumber = [0,
    9, 10, 11, 12, 13,
    14, 15, 16, 17, 18,
    19, 20, 21, 22, 23
];

// Forest fish
global.forestFishNumber = [0,
    24, 25, 26, 27,
    28, 29, 30, 31,
    32, 33
];

// River fish
global.riverFishNumber = [0,
    34, 35, 36, 37, 38,
    39, 40, 41, 42, 43,
    44, 45
];

// Deeply rare fish
global.rareFishNumber = [0,
    46, 47, 48, 49, 51
];

// Flying fish
global.flyingFishNumber = [0,
    50
];



///////////////////////////////////////////////////
////////////////////////PATHS//////////////////////
///////////////////////////////////////////////////



var paths = ds_map_create();
//Paths for the fish



//Lake fish

// Lakelight
var lakeLightPoints = [181, 246, 190, 230, 200, 240, 210, 230, 220, 240, 230, 230, 240, 240, 250, 230, 260, 240, 270, 230];
var lakelightPath = create_fish_path(lakeLightPoints);
paths[? "Lakelight"] = lakelightPath

// Muddweller
var muddwellerPoints = [
    180, 250, // Start near the surface
    190, 300, // Dive down
    200, 310, 210, 300, 220, 310, 230, 300, // Zig-zag near the bottom
    240, 310, 250, 300, 260, 310, 270, 300,
    280, 250  // Move back towards the surface
];
var muddwellerPath = create_fish_path(muddwellerPoints);
paths[? "Muddweller"] = muddwellerPath

// Reedripple
var reedripplePoints = [180, 250, 190, 240, 200, 250, 210, 240, 220, 250, 230, 240, 240, 250, 250, 240, 260, 250, 270, 240];
var reedripplePath = create_fish_path(reedripplePoints);
paths[? "Reedripple"] = reedripplePath;

// Lakegem
var lakegemPoints = [200, 240, 210, 230, 220, 240, 230, 230, 240, 240, 250, 230, 250, 240, 250, 230, 250, 240, 250, 230];
var lakegemPath = create_fish_path(lakegemPoints);
paths[? "Lakegem"] = lakegemPath;

// Weedsnout
var weedsnoutPoints = [200, 240, 190, 250, 210, 260, 200, 250, 190, 240, 200, 230, 210, 240, 220, 230, 230, 220, 240, 210];
var weedsnoutPath = create_fish_path(weedsnoutPoints);
paths[? "Weedsnout"] = weedsnoutPath;

// Echodepth
var echodepthPoints = [200, 250, 210, 260, 220, 250, 230, 240, 240, 250, 250, 260, 260, 250, 270, 240, 280, 250, 290, 260];
var echodepthPath = create_fish_path(echodepthPoints);
paths[? "Echodepth"] = echodepthPath;

// Whisklash
var whisklashPoints = [150, 240, 160, 220, 180, 250, 200, 220, 210, 230, 220, 210, 230, 240, 250, 220, 270, 240, 290, 220];
var whisklash_path = create_fish_path(whisklashPoints);
paths[? "Whisklash"] = whisklash_path;

// Bubblerise
var bubblerisePoints = [180, 230, 190, 260, 200, 230, 210, 250, 220, 230, 230, 250, 240, 230, 250, 260, 260, 230, 270, 250];
var bubblerisePath = create_fish_path(bubblerisePoints);
paths[? "Bubblerise"] = bubblerisePath;

// Waveshimmer
var waveshimmerPoints = [180, 230, 185, 240, 190, 230, 195, 240, 200, 230, 205, 240, 210, 230, 215, 240, 220, 230, 225, 240];
var waveshimmerPath = create_fish_path(waveshimmerPoints);
paths[? "Waveshimmer"] = waveshimmerPath;

// Coralfin
var coralfinPoints = [160, 235, 170, 245, 180, 235, 190, 225, 200, 235, 210, 245, 220, 235, 230, 225, 240, 235, 250, 245];
var coralfinPath = create_fish_path(coralfinPoints);
paths[? "Coralfin"] = coralfinPath;

// Saltysurge
var saltysurgePoints = [150, 230, 165, 250, 180, 220, 195, 245, 210, 230, 225, 240, 230, 220, 240, 245, 255, 230, 265, 250];
var saltysurgePath = create_fish_path(saltysurgePoints);
paths[? "Saltysurge"] = saltysurgePath;

// Tidalflicker
var tidalflickerPoints = [100, 200, 120, 210, 140, 200, 160, 215, 180, 200, 160, 190, 180, 175, 200, 190, 220, 180, 240, 190];
var tidalflickerPath = create_fish_path(tidalflickerPoints);
paths[? "Tidalflicker"] = tidalflickerPath;


// Abyssglow
var abyssglowPoints = [100, 200, 105, 205, 110, 210, 115, 215, 120, 220, 125, 225, 130, 230, 135, 235, 140, 240, 145, 245];
var abyssglowPath = create_fish_path(abyssglowPoints);
paths[? "Abyssglow"] = abyssglowPath;

// Surfdrifter
var surfdrifterPoints = [50, 150, 100, 200, 150, 250, 200, 300, 250, 350, 300, 400, 350, 450, 400, 500, 450, 550, 500, 600];
var surfdrifterPath = create_fish_path(surfdrifterPoints);
paths[? "Surfdrifter"] = surfdrifterPath;

// Finfury
var finfuryPoints = [100, 200, 120, 180, 140, 210, 160, 190, 180, 220, 200, 180, 220, 210, 240, 170, 260, 230, 280, 180];
var finfuryPath = create_fish_path(finfuryPoints);
paths[? "Finfury"] = finfuryPath;

// Lumipuff
var lumipuffPoints = [100, 200, 105, 205, 110, 200, 115, 205, 120, 200, 125, 205, 130, 200, 135, 205, 140, 200, 145, 205];
var lumipuffPath = create_fish_path(lumipuffPoints);
paths[? "Lumipuff"] = lumipuffPath;

// Seaspike
var seaspikePoints = [150, 200, 140, 210, 155, 215, 145, 220, 160, 225, 150, 230, 165, 235, 155, 240];
var seaspikePath = create_fish_path(seaspikePoints);
paths[? "Seaspike"] = seaspikePath;

// Pearlshimmer
var pearlshimmerPoints = [100, 250, 110, 240, 120, 250, 130, 240, 140, 250, 150, 240, 160, 250, 170, 240];
var pearlshimmerPath = create_fish_path(pearlshimmerPoints);
paths[? "Pearlshimmer"] = pearlshimmerPath;

// Surgeknight
var surgeknightPoints = [200, 200, 210, 210, 220, 200, 230, 210, 240, 200, 250, 210, 260, 200, 270, 210];
var surgeknightPath = create_fish_path(surgeknightPoints);
paths[? "Surgeknight"] = surgeknightPath;

// Silverflicker
var silverflickerPoints = [300, 250, 310, 260, 305, 255, 320, 260, 315, 255, 330, 260, 325, 255, 340, 260];
var silverflickerPath = create_fish_path(silverflickerPoints);
paths[? "Silverflicker"] = silverflickerPath;

// Stormdrifter
var stormdrifterPoints = [150, 300, 170, 320, 160, 310, 180, 330, 170, 320, 190, 340, 180, 330, 200, 350];
var stormdrifterPath = create_fish_path(stormdrifterPoints);
paths[? "Stormdrifter"] = stormdrifterPath;

// Inkfish
var inkfishPoints = [100, 100, 110, 120, 120, 110, 130, 120, 140, 110, 150, 120, 160, 110, 170, 120];
var inkfishPath = create_fish_path(inkfishPoints);
paths[? "Inkfish"] = inkfishPath;

// Softsquish
var softsquishPoints = [100, 200, 110, 210, 120, 220, 130, 210,140, 200, 150, 190, 160, 180, 170, 190,180, 200, 170, 210, 160, 220, 150, 210, 140, 200, 130, 190, 120, 180, 110, 190];
var softsquishPath = create_fish_path(softsquishPoints);
paths[? "Softsquish"] = softsquishPath;

// Leafscale
var leafscalePoints = [250, 400, 240, 410, 230, 400, 220, 410, 210, 400, 200, 410, 190, 400, 180, 410];
var leafscalePath = create_fish_path(leafscalePoints);
paths[? "Leafscale"] = leafscalePath;

// Timbertrickle
var timbertricklePoints = [300, 300, 310, 310, 320, 300, 330, 310, 340, 300, 350, 310, 360, 300, 370, 310];
var timbertricklePath = create_fish_path(timbertricklePoints);
paths[? "Timbertrickle"] = timbertricklePath;

// Kelpshield
var kelpshieldPoints = [140, 200, 140, 220, 150, 230, 160, 240,
    150, 230, 140, 220, 130, 210, 140, 200,
    140, 210, 140, 220, 140, 230, 140, 240];
var kelpshieldPath = create_fish_path(kelpshieldPoints);
paths[? "Kelpshield"] = kelpshieldPath;

// Barkbiter
var barkbiterPoints = [ 180, 220, 170, 210, 160, 200, 170, 190,
    180, 180, 190, 170, 200, 160, 190, 150,
    180, 160, 170, 170, 160, 180, 150, 190];
var barkbiterPath = create_fish_path(barkbiterPoints);
paths[? "Barkbiter"] = barkbiterPath;

// Fernflutter
var fernflutterPoints = [110, 210, 120, 220, 130, 210, 140, 200,
    130, 190, 120, 180, 110, 190, 100, 200,
    90, 210, 100, 220, 110, 230, 120, 240];
var fernflutterPath = create_fish_path(fernflutterPoints);
paths[? "Fernflutter"] = fernflutterPath;

// Pinescale
var pinescalePoints = [10, 200, 20, 210, 10, 220, 20, 230, 10, 240, 20, 250, 10, 260, 20, 270];
var pinescalePath = create_fish_path(pinescalePoints);
paths[? "Pinescale"] = pinescalePath;

// Roottrickle
var roottricklePoints = [100, 100, 110, 105, 100, 110, 110, 115, 100, 120, 110, 125, 100, 130, 110, 135];
var roottricklePath = create_fish_path(roottricklePoints);
paths[? "Roottrickle"] = roottricklePath;

// Oakscale
var oakscalePoints = [200, 200, 210, 205, 200, 210, 190, 205, 200, 200, 210, 195, 200, 190, 190, 195];
var oakscalePath = create_fish_path(oakscalePoints);
paths[? "Oakscale"] = oakscalePath;

// Dracofin
var dracofinPoints = [300, 300, 320, 310, 340, 320, 360, 330, 380, 340, 400, 330, 420, 320, 440, 310];
var dracofinPath = create_fish_path(dracofinPoints);
paths[? "Dracofin"] = dracofinPath;

// Fluffin
var fluffinPoints = [50, 150, 70, 160, 90, 150, 110, 160, 130, 150, 150, 160, 170, 150, 190, 160];
var fluffinPath = create_fish_path(fluffinPoints);
paths[? "Fluffin"] = fluffinPath;

// Streamgill
var streamgillPoints = [250, 100, 260, 90, 270, 100, 280, 90, 290, 100, 300, 90, 310, 100, 320, 90];
var streamgillPath = create_fish_path(streamgillPoints);
paths[? "Streamgill"] = streamgillPath;

// Rapidskimmer
var rapidskimmerPoints = [200, 300, 210, 305, 220, 300, 230, 305, 240, 300, 250, 305, 260, 300, 270, 305];
var rapidskimmerPath = create_fish_path(rapidskimmerPoints);
paths[? "Rapidskimmer"] = rapidskimmerPath;

// Aqualite
var aqualitePoints = [100, 50, 120, 55, 140, 50, 160, 55, 180, 50, 200, 55, 220, 50, 240, 55];
var aqualitePath = create_fish_path(aqualitePoints);
paths[? "Aqualite"] = aqualitePath;

// Bouldermaw
var bouldermawPoints = [30, 100, 45, 90, 60, 100, 75, 90, 90, 100, 105, 90, 120, 100, 135, 90];
var bouldermawPath = create_fish_path(bouldermawPoints);
paths[? "Bouldermaw"] = bouldermawPath;

// Brookflare
var brookflarePoints = [150, 200, 170, 180, 190, 190, 210, 170, 230, 180, 250, 160, 270, 170, 290, 150];
var brookflarePath = create_fish_path(brookflarePoints);
paths[? "Brookflare"] = brookflarePath;

// Currentswift
var currentswiftPoints = [300, 300, 320, 290, 340, 300, 360, 290, 380, 300, 400, 290, 420, 300, 440, 290];
var currentswiftPath = create_fish_path(currentswiftPoints);
paths[? "Currentswift"] = currentswiftPath;


// Mossfin
var mossfinPoints = [50, 250, 60, 245, 70, 250, 80, 245, 90, 250, 100, 245, 110, 250, 120, 245];
var mossfinPath = create_fish_path(mossfinPoints);
paths[? "Mossfin"] = mossfinPath;

// Rivertwirl
var rivertwirlPoints = [100, 300, 110, 290, 120, 280, 130, 270, 140, 280, 150, 290, 160, 300, 170, 310, 160, 320, 150, 310, 140, 320];
var rivertwirlPath = create_fish_path(rivertwirlPoints);
paths[? "Rivertwirl"] = rivertwirlPath;

// Pebbletrout
var pebbletroutPoints = [50, 200, 60, 210, 70, 200, 80, 190, 90, 200, 100, 210, 110, 200, 120, 190];
var pebbletroutPath = create_fish_path(pebbletroutPoints);
paths[? "Pebbletrout"] = pebbletroutPath;

// Sunsetgill
var sunsetgillPoints = [30, 100, 40, 110, 50, 100, 60, 110, 70, 100, 80, 110, 90, 100, 100, 110];
var sunsetgillPath = create_fish_path(sunsetgillPoints);
paths[? "Sunsetgill"] = sunsetgillPath;

// Whirlskimmer
var whirlskimmerPoints = [300, 250, 310, 240, 320, 230, 330, 240, 340, 250, 350, 260, 340, 270, 330, 260];
var whirlskimmerPath = create_fish_path(whirlskimmerPoints);
paths[? "Whirlskimmer"] = whirlskimmerPath;

// Quillure
var quillurePoints = [50, 100, 60, 105, 70, 100, 80, 95, 90, 100, 100, 105, 110, 100, 120, 95];
var quillurePath = create_fish_path(quillurePoints);
paths[? "Quillure"] = quillurePath;

// Sappurgeon
var sappurgeonPoints = [30, 200, 40, 190, 50, 210, 60, 200, 70, 230, 80, 240, 90, 220, 100, 230];
var sappurgeonPath = create_fish_path(sappurgeonPoints);
paths[? "Sappurgeon"] = sappurgeonPath;

// Diamurgeon
var diamurgeonPoints = [150, 250, 160, 240, 170, 230, 180, 240, 190, 250, 180, 260, 170, 270, 160, 260];
var diamurgeonPath = create_fish_path(diamurgeonPoints);
paths[? "Diamurgeon"] = diamurgeonPath;

// Ruburgeon
var ruburgeonPoints = [200, 100, 210, 110, 220, 100, 230, 90, 240, 100, 250, 110, 240, 120, 230, 130, 220, 120];
var ruburgeonPath = create_fish_path(ruburgeonPoints);
paths[? "Ruburgeon"] = ruburgeonPath;

// Echoesolace
var echoesolacePoints = [100, 300, 120, 280, 140, 300, 160, 320, 180, 300, 200, 280, 220, 300];
var echoesolacePath = create_fish_path(echoesolacePoints);
paths[? "Echoesolace"] = echoesolacePath;

// Flyfin
var flyfinPoints = [50, 150, 70, 100, 90, 150, 110, 200, 130, 150, 150, 100, 170, 150, 190, 200];
var flyfinPath = create_fish_path(flyfinPoints);
paths[? "Flyfin"] = flyfinPath;

// Hellstromming
var hellstrommingPoints = [200, 200, 210, 190, 220, 200, 230, 210, 240, 220, 250, 230, 260, 220, 270, 210, 280, 200];
var hellstrommingPath = create_fish_path(hellstrommingPoints);
paths[? "Hellstromming"] = hellstrommingPath;
	
	


global.numberoffish = array_length(global.fishNames) -1


global.fisharray[0,0] = noone

for (var i = 0; i <= global.numberoffish; ++i) {
    var fishObjName = "oFish" + string(global.fishNames[i]);
    var fishSpriteName = "sFish" + string(global.fishNames[i]);
    var fishVeganSpriteName = fishSpriteName + "_vegan";
	//paths[? global.fishNames[i]] = string_lower(global.fishNames[i]) + "Path"
	
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
	//global.fisharray[i, 14] = fishBait[i]; //Vilka fiskar som är intresserade av vilket bete
	
	
}

ds_map_destroy(paths);



}


function getEnumFishIndex(fishName) {
    switch(fishName) {
        case "None": return 0;
        case "Lakelight": return 1;
        case "Muddweller": return 2;
        case "Reedripple": return 3;
        case "Lakegem": return 4;
        case "Weedsnout": return 5;
        case "Echodepth": return 6;
        case "Whisklash": return 7;
        case "Bubblerise": return 8;
        case "Waveshimmer": return 9;
        case "Coralfin": return 10;
        case "Saltysurge": return 11;
        case "Tidalflicker": return 12;
        case "Abyssglow": return 13;
        case "Surfdrifter": return 14;
        case "Finfury": return 15;
        case "Lumipuff": return 16;
        case "Seaspike": return 17;
        case "Pearlshimmer": return 18;
        case "Surgeknight": return 19;
        case "Silverflicker": return 20;
        case "Stormdrifter": return 21;
        case "Inkfish": return 22;
        case "Softsquish": return 23;
        case "Leafscale": return 24;
        case "Timbertrickle": return 25;
        case "Kelpshield": return 26;
        case "Barkbiter": return 27;
        case "Fernflutter": return 28;
        case "Pinescale": return 29;
        case "Roottrickle": return 30;
        case "Oakscale": return 31;
        case "Dracofin": return 32;
        case "Fluffin": return 33;
        case "Streamgill": return 34;
        case "Rapidskimmer": return 35;
        case "Aqualite": return 36;
        case "Bouldermaw": return 37;
        case "Brookflare": return 38;
        case "Currentswift": return 39;
        case "Mossfin": return 40;
        case "Rivertwirl": return 41;
        case "Pebbletrout": return 42;
        case "Sunsetgill": return 43;
        case "Whirlskimmer": return 44;
        case "Quillure": return 45;
        case "Sappurgeon": return 46;
        case "Diamurgeon": return 47;
        case "Ruburgeon": return 48;
        case "Echoesolace": return 49;
        case "Flyfin": return 50;
        case "Hellstromming": return 51;
        default: return -1; // Return -1 if the name isn't found
    }
}

function getEnumFishIndexNumberFromObjectName(fishName) {
    switch(fishName) {
        case oNothing: return 0;
        case oFishLakelight: return 1;
        case oFishMuddweller: return 2;
        case oFishReedripple: return 3;
        case oFishLakegem: return 4;
        case oFishWeedsnout: return 5;
        case oFishEchodepth: return 6;
        case oFishWhisklash: return 7;
        case oFishBubblerise: return 8;
        case oFishWaveshimmer: return 9;
        case oFishCoralfin: return 10;
        case oFishSaltysurge: return 11;
        case oFishTidalflicker: return 12;
        case oFishAbyssglow: return 13;
        case oFishSurfdrifter: return 14;
        case oFishFinfury: return 15;
        case oFishLumipuff: return 16;
        case oFishSeaspike: return 17;
        case oFishPearlshimmer: return 18;
        case oFishSurgeknight: return 19;
        case oFishSilverflicker: return 20;
        case oFishStormdrifter: return 21;
        case oFishInkfish: return 22;
        case oFishSoftsquish: return 23;
        case oFishLeafscale: return 24;
        case oFishTimbertrickle: return 25;
        case oFishKelpshield: return 26;
        case oFishBarkbiter: return 27;
        case oFishFernflutter: return 28;
        case oFishPinescale: return 29;
        case oFishRoottrickle: return 30;
        case oFishOakscale: return 31;
        case oFishDracofin: return 32;
        case oFishFluffin: return 33;
        case oFishStreamgill: return 34;
        case oFishRapidskimmer: return 35;
        case oFishAqualite: return 36;
        case oFishBouldermaw: return 37;
        case oFishBrookflare: return 38;
        case oFishCurrentswift: return 39;
        case oFishMossfin: return 40;
        case oFishRivertwirl: return 41;
        case oFishPebbletrout: return 42;
        case oFishSunsetgill: return 43;
        case oFishWhirlskimmer: return 44;
        case oFishQuillure: return 45;
        case oFishSappurgeon: return 46;
        case oFishDiamurgeon: return 47;
        case oFishRuburgeon: return 48;
        case oFishEchoesolace: return 49;
        case oFishFlyfin: return 50;
        case oFishHellstromming: return 51;
        default: return -1; // Return -1 if the name isn't found
    }
}
