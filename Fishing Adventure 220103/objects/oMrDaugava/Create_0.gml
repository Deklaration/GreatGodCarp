image_alpha = 1
talking = false
createtext = false
face = sDaugavaPortrait
faceAngry = sDaugavaPortraitAngry
faceSad = sDaugavaPortraitSad

mouthmove = sDaugavaMouth
mouthmoveSad = sDaugavaMouthSad
pitch = 1
image_speed = 0
mask_index = sDaugavaMask
image_xscale = 1.2
image_yscale = 1.2


//Cutscenes
walktimer_cutscene2 = 0; //timer på hur MrDaugava går in i AquaVista
walkRight = 0 //Om MrDaugava kan gå åt höger för att ta sig in till AquaVista
walkSet = false

//[gettinggear][#TEXT*{OBJECT}£SPRITE$½SIFFRA PÅ OBJEKTET€,=SKALA~+HUR MÅNGA_]

//ENGLISH
if global.language = "English"
{
//Första samtalet
dialog[0,0] = "Oh, a turist! Welcome, welcome! We are all so happy you're here!"
dialog[0,1] = "Welcome to [wave][rainbow]Pisc Island[/rainbow][/wave], the fishing paradise!!"
dialog[0,2] = "Unfortunately, our world famous aquarium has run into a few... issues. But please, enjoy your stay at [wave][rainbow]Pisc Island[/rainbow][/wave]!"
dialog[0,3] = "..."
dialog[0,4] = "[angry][shake]What?[/shake] You're not a tourist? You just fell from the sky?"
dialog[0,5] = "Hey, you're a pretty lucky guy to land here on [wave][rainbow]Pisc Island[/rainbow][/wave]!"
dialog[0,6] = "[sad]I don't know if you've noticed, but this island isn't really one it once was..." 
dialog[0,7] = "Maybe a lucky guy like you could help us out!"
dialog[0,8] = "Follow me, sky guy!"

//Man pratar med honom inne på AquaVista
dialog[1,0] = "Welcome to [color_17]AquaVista[color_19]!"
dialog[1,1] = "[sad]This used to be a thriving aquarium, just a few years ago. But now..."
dialog[1,2] = "[sad]The fish are all... gone. And I need someone to replace them."
dialog[1,3] = "Take this rod, I've made it myself![gettinggear][#A FISHING ROD*{oRods}£sRodsIcon$½1€,=0~+1_]"
dialog[1,4] = "And take these as well, I'm sure they will help you out.[gettinggear][#SOME BAIT*{oBait}£sBaitIcon$½1€,=0~+10_]"
dialog[1,5] = "Go to the water and throw out a line! See if there's any more luck left in 'ya!"

//Man pratar med honom igen inne på AquaVista, innan man fångat sig en fisk
dialog[2,0] = "Now what? Do you need help fishing?"
dialog[2,1] = "Just go to the shore and press " + string(oGame.keyboard[global.key_a]) + " to fish!"
dialog[2,2] = "Come back and talk to me after your first catch!"

//Efter man fångat sin första fisk.
dialog[3,0] = "[angry]A " + string(global.catchFirstFish) + "!"
dialog[3,1] = "[angry]I can't believe you caught one using that old stick!"
dialog[3,2] = "We can finally get [color_17]AquaVista[color_19] going again!"
dialog[3,3] = "Go ahead, [color_10]set it free in its designated pool[color_19]!"
dialog[3,4] = "I bet the turists will be back in no time!"
dialog[3,5] = "There's a lot more fish out these. Take this, I'll bet it will come in handy."//[gettinggear][#A FISHING GUIDE*{-1}£sFishingGuideIcon$½1€,=0~+1_]"

//Efter man placerat sin första fisk i vattentank
dialog[4,0] = "[wave]Fantastic[/wave]! It brings me so much joy to see a fish in [color_17]AquaVista[color_19] again."
dialog[4,1] = "Let the town know! I bet they'll be so excited to see it!"

//Pratar igen efter man placerat sin första fisk i vattentank
dialog[5,0] = "Go on then! Spread the news! Tell everyone that we got a fish at [color_17]AquaVista[color_19] again!"
}