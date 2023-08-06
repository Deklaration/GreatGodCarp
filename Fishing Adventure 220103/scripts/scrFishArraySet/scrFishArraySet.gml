// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrFishArraySet(){
	
	
var fishNames = [
	"",
    "Lakelight",
    "Muddweller",
    "Reedripple",
    "Lakegem",
    "Weedsnout",
    "Echodepth",
    "Whisklash",
    "Bubblerise",
    "Waveshimmer",
    "Coralfin",
    "Saltysurge",
    "Tidalflicker",
    "Abyssglow",
    "Surfdrifter",
    "Finfury",
    "Lumipuff",
    "Seaspike",
    "Pearlshimmer",
    "Surgeknight",
    "Silverflicker",
    "Stormdrifter",
    "Inkfish",
    "Leafscale",
    "Timbertrickle",
    "Kelpshield",
    "Vinerider",
    "Barkbiter",
    "Fernflutter",
    "Blossomfin",
    "Pinescale",
    "Roottrickle",
    "Oakscale",
    "Blossomflutter",
    "Dracofin",
    "Fluffin",
    "Streamgill",
    "Rapidskimmer",
    "Aqualite",
    "Bouldermaw",
    "Brookflare",
    "Currentswift",
    "Mossfin",
    "Rivertwirl",
    "Pebbletrout",
    "Sunsetgill",
    "Whirlskimmer",
    "Quillure",
    "SapphireSturgeon",
    "DiamondSturgeon",
    "RubySturgeon",
    "Echoesolace",
    "Flyfin"
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
    1,  // "Leafscale",
    5,  // "Timbertrickle",
    10, // "Kelpshield",
    5,  // "Vinerider",
    1,  // "Barkbiter",
    10, // "Fernflutter",
    50, // "Blossomfin",
    5,  // "Pinescale",
    10, // "Roottrickle",
    10, // "Oakscale",
    50, // "Blossomflutter",
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
    500, // "SapphireSturgeon",
    500, // "DiamondSturgeon",
    500, // "RubySturgeon",
    500, // "Echoesolace",
    50, // "Flyfin"
];

var fishAquaVistaInfos = [
	"",
    "The luminescent spots on this fish's body can light up dark lake waters.",
    "Known for burrowing in lake beds, this fish stirs up mud to hide from predators.",
    "It weaves through reeds with ease, its movements creating beautiful ripples on the lake surface.",
    "Its jewel-like scales are said to bring good fortune to those who find it.",
    "Known for its elongated snout, it probes through lake weed for tiny creatures.",
    "This unique species uses sound waves to navigate the dark depths of lakes.",
    "The lake's playful companion. Its whisker-like fins playfully dance through the water, bringing smiles to lakeside observers.",
    "Its playful leaps create bubbles that rise to the surface, adding charm to the tranquil waters.",
    "This fish's metallic scales refract sunlight, causing a dazzling shimmer underwater.",
    "Coral-colored scales, blend seamlessly with vibrant coral reefs in warm ocean waters.",
    "Able to withstand the harshest saltwater conditions, their scales contain salt crystals.",
    "This fish can manipulate the tidal currents to disorient predators.",
    "Found in the ocean's darkest depths, its bioluminescent glow attracts curious prey.",
    "Known for its long, slow migrations across vast oceans, powered by the waves.",
    "Swift ocean dweller. Dazzling scales, vibrant patterns race through warm waters. Often seen in tropical regions.",
    "Soft, puffy appearance, gentle glow create calming presence. Inhabits serene, clear waters.",
    "Covered in spiky scales, it uses its body to protect itself from predators.",
    "It's iridescent scales give off a pearl-like sheen, dazzling under the ocean sun.",
    "This common fish has black and silver armored scales, appearing knight-like.",
    "This silver surfer shimmers, confusing predators with its darting movements.",
    "It thrives during stormy weather, using the turbulent waves to its advantage.",
    "It is said that a book written with the ink from the ink fish will surely be a masterpiece.",
    "Found in forest streams, its scales mimic fallen leaves for camouflage.",
    "This fish inhabits water trapped in hollow trees, surviving on insects that fall in.",
    "This fish has evolved to blend perfectly into kelp forests, making it a master of hide and seek.",
    "Known to slide over moist vines during heavy rain, it spends as much time in trees as in water.",
    "Known to nibble on tree roots that hang into forest water bodies.",
    "Its fins resemble fern leaves, providing perfect camouflage in forest ponds.",
    "The fins of this fish bloom like flowers when it's ready to mate.",
    "This scary-looking has needle-like scales, blending seamlessly in pine forests.",
    "This Timbertrickle variant is found in water-filled roots of ancient trees.",
    "This Leafscale variant's oak-leaf pattern provides superior camouflage.",
    "This Fernflutter variant's flower-like fins are considered an exquisite sight.",
    "Mythical forest swimmer. Dragon-like fins allow it to glide with enchantment in mystical woodland streams.",
    "Dreamy forest drifter. Fins resemble fluff, drifts dreamily through calm, mossy streams in heart of woodlands.",
    "Streamgills have slender bodies that allow them to dart quickly between rocks. Their gills shine like gemstones under the sun.",
    "Known for its ability to dance on the water's surface, Rapidskimmer are often mistaken for water bugs.",
    "The aquatic gem. Shimmering scales emit a soothing glow, mesmerizing underwater display. Prefers clear rivers with gentle currents.",
    "With its jaw lined with rock-hard teeth, Bouldermaw can crunch through pebbles to find food.",
    "These iridescent fish create a mesmerizing light show as they leap out of the water.",
    "Its streamlined body is perfect for high-speed pursuits in fast-moving waters.",
    "Prefers slow-moving or stagnant waters and has a moss-like fin which provides camouflage.",
    "Known for its spiral movement against the current, creating miniature whirlpools.",
    "This pebbly-scaled fish is a master of camouflage in rocky riverbeds.",
    "A variant of Streamgill, Sunsetgills gleam a brilliant orange-red at dusk.",
    "Spins rapidly, creating a mesmerizing water display.",
    "Elegant quill-like fins, graceful glide enchanting presence is calm waterways.",
    "This elusive fish has sapphire scales said to have magical properties.",
    "Shimmers like a jewel in clear water. A beautiful, elusive prize testing angler skills.",
    "Glowing red like fire, its ruby scales are said to hold intense heat.",
    "This fish sings an enchanting melody, but is heard only once every hundred years.",
    "Airborne ocean marvel. Leaping from waves, gliding above water, soars alongside ocean winds with graceful aerial flips."
];

var fishInventoryInfos = [
	"",
    "Whoa, it's like a mobile lantern! So shiny...",
    "Uh oh, a fish that loves mud? Mom would go nuts.",
    "It moves so beautifully, like an underwater dancer! Poetry in motion!",
    "Look at that shine! Who needs treasure when you have this fish?",
    "What's with the long face, buddy? Or is it a nose?",
    "Now, this one's a submarine with built-in sonar. Cool and creepy...",
    "I hope someone remembers to feed my cat back home...",
    "Bubbles, bubbles everywhere! It's like a fishy jacuzzi.",
    "This one's giving off some serious disco vibes. Talk about a showstopper!",
    "Pretty in pink! Or is that coral? Either way, it's cute.",
    "Man, this fish is literally salty! Like a living, swimming salt shaker.",
    "Watch out! This one's got some serious waves. Surf's up!",
    "It's a deep-sea lightbulb! Kind of eerie, but in a cool way.",
    "Slow and steady wins the race, huh? Take your time, buddy.",
    "So fast! It's like a torpedo with scales. Yowza!",
    "Soft, glowing... it's like hugging a cloud. If clouds lived underwater...",
    "Whoa, spikey! I wouldn't want to step on this guy.",
    "Now that's what I call bling! It's like a living gemstone.",
    "Knight of the sea, huh? Looks more like an underwater tank.",
    "It's a living mirror! Reflecting all the light around. Dazzling!",
    "This one's a storm chaser. Brave little guy!",
    "A fish full of ink? Might be handy if I ever forget my pen...",
    "A fish or a leaf? Nature's got a sense of humor.",
    "Talk about a minimalist lifestyle! This one's a true survivor.",
    "Hide and seek champion right here! Where did it go?",
    "It slides on vines? That's not your average fish. That's an acrobat!",
    "A wood-eating fish! Hope it doesn't confuse my boat with food.",
    "Fern-leaf fins? That's some high-level disguise, dude!",
    "Flower fins, huh? It's like a fish and a bouquet all in one.",
    "Pineneedles on a fish? Yikes, wouldn't want to step on this guy!",
    "Lives in roots? Talk about an underground lifestyle!",
    "Oak-leaf pattern, nice! This fish knows style.",
    "Oh wow, look at those fins! Like a garden underwater.",
    "Dragon fins? More like draco-fish!",
    "Fluffy fish, how cute! It's like a water bunny.",
    "Slim and quick! This one's like an underwater snake.",
    "A fish that dances on water? Now that's a talent!",
    "A glowing gem fish, huh? Now that's fancy!",
    "Whoa, rock-hard teeth! I bet this one doesn't worry about cavities.",
    "This one's a real show-off, huh? Bet it's a hit at parties.",
    "Streamlined and fast, like a race car with fins!",
    "Camouflage game strong with this one! Can barely see it!",
    "This one's a whirlwind! Or should I say, whirlpool?",
    "Look at that, just like the riverbed! It's practically invisible.",
    "Sunset colors! This one really knows how to stand out.",
    "Whoa, it's like a spinning top, but in water!",
    "Quills on a fish? That's a first. Definitely a unique find.",
    "Sapphire scales? I bet this one's expensive.",
    "Diamond scales! Talk about an extravagant fish.",
    "It's like a fiery jewel! Absolutely stunning!",
    "A singing fish? I didn't know that was possible!",
    "Flying fish? Now I've seen everything! Talk about defying gravity."
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
  46, 47, 48, 49, 50
];

global.numberoffish = 8 //Ändra detta för varje fisk som existerar


global.fisharray[0,0] = noone

for (var i = 0; i <= global.numberoffish; ++i) {
    var fishObjName = "oFish" + string(i);
    var fishSpriteName = "sFish" + string(i);
    var fishVeganSpriteName = fishSpriteName + "_vegan";
	
	global.fisharray[i, 0] = asset_get_index(fishObjName); // Object
    global.fisharray[i, 1] = asset_get_index(fishSpriteName); // Sprite
    global.fisharray[i, 2] = asset_get_index(fishVeganSpriteName); // Vegan Sprite
	global.fisharray[i, 3] = fishValue[i]; // Cost in store
    global.fisharray[i, 4] = fishNames[i]; // Fish name
    global.fisharray[i, 5] = fishAquaVistaInfos[i]; // AquaVista info
    global.fisharray[i, 6] = fishInventoryInfos[i]; // Inventory info
    global.fisharray[i, 7] = sprite_get_xoffset(asset_get_index(fishSpriteName)); // Sprite origin X, normal fish
    global.fisharray[i, 8] = sprite_get_yoffset(asset_get_index(fishSpriteName)); // Sprite origin Y, normal fish
    global.fisharray[i, 9] = sprite_get_xoffset(asset_get_index(fishVeganSpriteName)); // Sprite origin X, vegan
    global.fisharray[i, 10] = sprite_get_yoffset(asset_get_index(fishVeganSpriteName)); // Sprite origin Y, vegan
	global.fisharray[i, 11] = fishRarity[i];
}
}
/*

    global.fisharray[1, 3] = 1; // Cost in store
    global.fisharray[1, 4] = "Lakelight"; // Fish name
    global.fisharray[1, 5] = "The luminescent spots on this fish's body can light up dark lake waters."; // AquaVista info
    global.fisharray[1, 6] = "Oh, shiny!"; // Inventory info
    global.fisharray[2, 3] = 1; // Cost in store
    global.fisharray[2, 4] = "Muddweller"; // Fish name
    global.fisharray[2, 5] = "The luminescent spots on this fish's body can light up dark lake waters."; // AquaVista info
    global.fisharray[2, 6] = "Oh, shiny!"; // Inventory info
    global.fisharray[3, 3] = 1; // Cost in store
    global.fisharray[3, 4] = "Reedripple"; // Fish name
    global.fisharray[3, 5] = "The luminescent spots on this fish's body can light up dark lake waters."; // AquaVista info
    global.fisharray[3, 6] = "Oh, shiny!"; // Inventory info
    global.fisharray[4, 3] = 1; // Cost in store
    global.fisharray[4, 4] = "Lakegem"; // Fish name
    global.fisharray[4, 5] = "The luminescent spots on this fish's body can light up dark lake waters."; // AquaVista info
    global.fisharray[4, 6] = "Oh, shiny!"; // Inventory info
    global.fisharray[5, 3] = 1; // Cost in store
    global.fisharray[5, 4] = "Weedsnout"; // Fish name
    global.fisharray[5, 5] = "The luminescent spots on this fish's body can light up dark lake waters."; // AquaVista info
    global.fisharray[5, 6] = "Oh, shiny!"; // Inventory info
    global.fisharray[6, 3] = 1; // Cost in store
    global.fisharray[6, 4] = "Echodepth"; // Fish name
    global.fisharray[6, 5] = "The luminescent spots on this fish's body can light up dark lake waters."; // AquaVista info
    global.fisharray[6, 6] = "Oh, shiny!"; // Inventory info
    global.fisharray[7, 3] = 1; // Cost in store
    global.fisharray[7, 4] = "Whisklash"; // Fish name
    global.fisharray[7, 5] = "The luminescent spots on this fish's body can light up dark lake waters."; // AquaVista info
    global.fisharray[7, 6] = "Oh, shiny!"; // Inventory info
    global.fisharray[8, 3] = 1; // Cost in store
    global.fisharray[8, 4] = "Bubblerise"; // Fish name
    global.fisharray[8, 5] = "The luminescent spots on this fish's body can light up dark lake waters."; // AquaVista info
    global.fisharray[8, 6] = "Oh, shiny!"; // Inventory info

}
/*
    global.fisharray[1, 3] = 1; // Cost in store
    global.fisharray[1, 4] = "Lakelight"; // Fish name
    global.fisharray[1, 5] = "The luminescent spots on this fish's body can light up dark lake waters."; // AquaVista info
    global.fisharray[1, 6] = "Oh, shiny!"; // Inventory info

    global.fisharray[1, 3] = ; // Cost in store
    global.fisharray[1, 4] = "NAMNNAMNNAMN"; // Fish name
    global.fisharray[1, 5] = "BESBESBESBES"; // AquaVista info
    global.fisharray[1, 6] = "INFOINFOINFO"; // Inventory info


global.fisharray[1,0] = oFish1 //Objektet
global.fisharray[1,1] = sFish1 //sprite index
global.fisharray[1,2] = sFish1_vegan //vegansprite
global.fisharray[1,3] = 1 //Vad den är värd att sälja
global.fisharray[1,4] = "Lakelight" //Namnet på stackarn
global.fisharray[1,5] = "The luminescent spots on this fish's body can light up dark lake waters." //Beskrivning på AquaVista
global.fisharray[1,6] = "Oh, shiny!" //Beskrivning i inventory och Fishdex
global.fisharray[1,7] = sprite_get_xoffset(sFish1) //sprite origin X. Vanlig fisk
global.fisharray[1,8] = sprite_get_yoffset(sFish1) //sprite origin Y. Vanlig fisk
global.fisharray[1,9] = sprite_get_xoffset(sFish1_vegan) //sprite origin X. Vegan
global.fisharray[1,10] = sprite_get_yoffset(sFish1_vegan) //sprite origin Y. Vegan


global.fisharray[2,0] = oFish2
global.fisharray[2,1] = sFish2
global.fisharray[2,2] = sFish2_vegan
global.fisharray[2,3] = 2
global.fisharray[2,4] = "Muddweller"
global.fisharray[2,5] = "Known for burrowing in lake beds, this fish stirs up mud to hide from predators."
global.fisharray[2,6] = "Ugh, my mom would hate this."
global.fisharray[2,7] = sprite_get_xoffset(sFish2) //sprite origin X. Vanlig fisk
global.fisharray[2,8] = sprite_get_yoffset(sFish2) //sprite origin Y. Vanlig fisk
global.fisharray[2,9] = sprite_get_xoffset(sFish2_vegan) //sprite origin X. Vegan
global.fisharray[2,10] = sprite_get_yoffset(sFish2_vegan) //sprite origin Y. Vegan

global.fisharray[3,0] = oFish3
global.fisharray[3,1] = sFish3
global.fisharray[3,2] = sFish3_vegan
global.fisharray[3,3] = 3
global.fisharray[3,4] = "Reedripple"
global.fisharray[3,5] = "It weaves through reeds with ease, its movements creating beautiful ripples on the lake surface."
global.fisharray[3,6] = "Cool enough to be kept as a pet. But this one is dead."
global.fisharray[3,7] = sprite_get_xoffset(sFish3) //sprite origin X. Vanlig fisk
global.fisharray[3,8] = sprite_get_yoffset(sFish3) //sprite origin Y. Vanlig fisk
global.fisharray[3,9] = sprite_get_xoffset(sFish3_vegan) //sprite origin X. Vegan
global.fisharray[3,10] = sprite_get_yoffset(sFish3_vegan) //sprite origin Y. Vegan

global.fisharray[4,0] = oFish4
global.fisharray[4,1] = sFish4
global.fisharray[4,2] = sFish4_vegan
global.fisharray[4,3] = 4
global.fisharray[4,4] = "Lakegem"
global.fisharray[4,5] = "Its jewel-like scales are said to bring good fortune to those who find it."
global.fisharray[4,6] = "Would look good as a decoration or something."
global.fisharray[4,7] = sprite_get_xoffset(sFish4) //sprite origin X. Vanlig fisk
global.fisharray[4,8] = sprite_get_yoffset(sFish4) //sprite origin Y. Vanlig fisk
global.fisharray[4,9] = sprite_get_xoffset(sFish4_vegan) //sprite origin X. Vegan
global.fisharray[4,10] = sprite_get_yoffset(sFish4_vegan) //sprite origin Y. Vegan

global.fisharray[5,0] = oFish5
global.fisharray[5,1] = sFish5
global.fisharray[5,2] = sFish5_vegan
global.fisharray[5,3] = 5
global.fisharray[5,4] = "Weedsnout"
global.fisharray[5,5] = "Known for its elongated snout, it probes through lake weed for tiny creatures."
global.fisharray[5,6] = "Look at his nose!"
global.fisharray[5,7] = sprite_get_xoffset(sFish5) //sprite origin X. Vanlig fisk
global.fisharray[5,8] = sprite_get_yoffset(sFish5) //sprite origin Y. Vanlig fisk
global.fisharray[5,9] = sprite_get_xoffset(sFish5_vegan) //sprite origin X. Vegan
global.fisharray[5,10] = sprite_get_yoffset(sFish5_vegan) //sprite origin Y. Vegan

global.fisharray[6,0] = oFish6
global.fisharray[6,1] = sFish6
global.fisharray[6,2] = sFish6_vegan
global.fisharray[6,3] = 6
global.fisharray[6,4] = "Echodepth"
global.fisharray[6,5] = "This unique species uses sound waves to navigate the dark depths of lakes."
global.fisharray[6,6] = "I... I don't wanna touch it..."
global.fisharray[6,7] = sprite_get_xoffset(sFish6) //sprite origin X. Vanlig fisk
global.fisharray[6,8] = sprite_get_yoffset(sFish6) //sprite origin Y. Vanlig fisk
global.fisharray[6,9] = sprite_get_xoffset(sFish6_vegan) //sprite origin X. Vegan
global.fisharray[6,10] = sprite_get_yoffset(sFish6_vegan) //sprite origin Y. Vegan

global.fisharray[7,0] = oFish7			//Objektet
global.fisharray[7,1] = sFish7			//Spriten
global.fisharray[7,2] = sFish7_vegan	//Veganspriten
global.fisharray[7,3] = 7				//Vad den kostar i butik
global.fisharray[7,4] = "Whisklash"		//Namn på fisken
global.fisharray[7,5] = "The lake's playful companion. Its whisker-like fins playfully dance through the water, bringing smiles to lakeside observers."	//Info på AquaVista
global.fisharray[7,6] = "I hope someone feeds my cat at home..."	//Info i inventory
global.fisharray[7,7] = sprite_get_xoffset(sFish7) //sprite origin X. Vanlig fisk
global.fisharray[7,8] = sprite_get_yoffset(sFish7) //sprite origin Y. Vanlig fisk
global.fisharray[7,9] = sprite_get_xoffset(sFish7_vegan) //sprite origin X. Vegan
global.fisharray[7,10] = sprite_get_yoffset(sFish7_vegan) //sprite origin Y. Vegan

global.fisharray[8,0] = oFish8			//Objektet
global.fisharray[8,1] = sFish8			//Spriten
global.fisharray[8,2] = sFish8_vegan	//Veganspriten
global.fisharray[8,3] = 4				//Vad den kostar i butik
global.fisharray[8,4] = "Bubblerise"		//Namn på fisken
global.fisharray[8,5] = "Its playful leaps create bubbles that rise to the surface, adding charm to the tranquil waters."	//Info på AquaVista
global.fisharray[8,6] = "I wish I could have one in my tub. Free bubble bath!!"	//Info i inventory
global.fisharray[8,7] = sprite_get_xoffset(sFish8) //sprite origin X. Vanlig fisk
global.fisharray[8,8] = sprite_get_yoffset(sFish8) //sprite origin Y. Vanlig fisk
global.fisharray[8,9] = sprite_get_xoffset(sFish8_vegan) //sprite origin X. Vegan
global.fisharray[8,10] = sprite_get_yoffset(sFish8_vegan) //sprite origin Y. Vegan



}