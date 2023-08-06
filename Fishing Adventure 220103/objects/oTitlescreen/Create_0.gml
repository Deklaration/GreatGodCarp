starttext = "Press " + string(oGame.keyboard[global.key_a]) + " to start"


menu[0] = "Start"
menu[1] = "Settings"
menu[2] = "Exit"
//starttext = "Press " + string(global.key_a)
blinkingtext = 0 
fadeout = false
fullscreen = window_get_fullscreen()

timestart = false
timer = 4
choice = 1
settings = false

keyboard_set_map(1,1)

