sida = -1
open = false
flipright = false
flipleft = false 
away = false
image_speed = 0
timer = 7
turntimer = 2
alpha = 0
global.paused = true
oMusic.intensity = 2
blinky = 0
blinktimer = 60
i = 0
handy = 300
handx = self.x
starthandx = 0
savecheck = 0
cantsave = false
cantsavetimer = 300
mapx = -135
mapy = +87
changekey = false
kp = 0
key = 0
changeactionkey = false
keyboardpreset[0] = "Left handed"
keyboardpreset[1] = "Right handed"
keyboardpreset[2] = "Upside down"
keyboardpreset[3] = "Gamepad"
keyboardpreset[4] = "F-avorite"
keyboardpreset[5] = "Dolphin"
drawing = irandom_range(0,5)

scrInventoryJump()	

blink[0] = 0 //Nordmaling
blink[1] = 0 //Umeå
blink[2] = 0 //Östersund
blink[3] = 0 //Arvidsjaur
blink[4] = 0 //Luleå
blink[5] = 0 //Skellefteå
blink[6] = 0 //Kiruna

menuchoice = 0
inventorycolor = c_black
gearcolor = c_black
optionscolor = c_black
savecolor = c_black

settingschoice = -1
fullscreencolor = c_black
musicvolumecolor = c_black
mastervolumecolor = c_black
vegancolor = c_black
languagecolor = c_black
reset1color = c_black
upcolor = c_black
downcolor = c_black
leftcolor = c_black
rightcolor = c_black
actioncolor = c_black
cancelcolor = c_black
pausecolor = c_black
reset2color = c_black

// In oGame Create Event
saveQuestPlace = 0
selected_quest_index = -1;  // The index of the currently selected quest
scroll_offset = 0;  // How many quests are scrolled past at the top of the list
max_visible_quests = 7;  // Maximum number of quests to display at once



sentences = [
    "This is a short sentence.",
    "Here's another one that's.",
    "Life is beautiful.",
    "The early bird might get the worm, but the second mouse gets the cheese.",
    "Why did the chicken cross the road?",
    "Reading is to the mind what exercise is to the body.",
    "Actions speak louder than words.",
    "She sells sea shells by the sea shore.",
    "The quick brown fox jumps over the lazy dog.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "This sentence is false.",
    "Just because you can doesn't mean you should.",
    "All that glitters is not gold.",
    "Don't cry over spilled milk.",
    "I think, therefore I am.",
    "The only constant in life is change.",
    "Time waits for no one.",
    "Knowledge is power.",
    "Beauty lies in the eyes of the beholder.",
    "To be or not to be, that is the question."
];
