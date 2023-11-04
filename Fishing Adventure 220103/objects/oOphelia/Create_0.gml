image_alpha = 1
talking = false
createtext = false


face = sShopkeeperPortrait
showFace = true
mouthmove = sRunePortraitMouth
faceAngry = sShopkeeperPortrait
faceSad = sRunePortrait
mouthmove = sRunePortraitMouth
mouthmoveSad = sRunePortraitMouth

yes = -1
timer = room_speed *2
placeSign = false
placeDoor = false
newDialogSet = false
// Set a "record" value to determine which recorded position this follower should be at
record_pos = 10;  // This means the follower will be 10 steps behind the player
trident = false
singing = false
doneSinging = false
notagain = false
moveMonument = false

singingSpeed = 0
audio = false
turn = 1
doneSingingTimer = 30
move = 100
nottimer = 10

my_path = path_add();
 dialog[0] = "Oh my! A tourist! I can't believe it! Finally, one of you have returned!"
 dialog[1] = "I'm so embarrassed, I've let the wonderful Coastal Curiosities become completely forsaken!"
 dialog[2] = "It has even sunk down in the sand... Sorry, I can't let you in until it's restored!"
 dialog[3] = "How I wish I could dig through the soil like my favorite fish does, the Muddweller."
 dialog[4] = "I really wish I had one of those guys here..."
 
 if room = rCoastalCuriosities
 {
	 dialog[0] = "Welcome to COASTAL CURIOSITIES! The best beach museum on the island!"
 dialog[1] = "It's a bit empty, I know. I wish I had a better collection to display."
 dialog[2] = "My dream is to showcase artifacts from the ancient times on the island, from the first ever [sStar][/wobble][color_9] Great God Carp[color_19][wobble][sStar][/wobble] festivals!"
 dialog[3] = "But everything is lost and buried... However... "
 dialog[4] = "I've heard of a secret cave with ancient cave paintings. If someone could just find that cave..."
 dialog[5] = "I bet I could get some answers!" 
 }
 
if global.putUpDoor = true && room = rBeachside
{
	instance_destroy(self)
}


