depth =-y;



if global.talkedtoRune = true && (global.daugava_set = 5 || global.daugava_set = 6)
{

array_delete(dialog,3,array_length(dialog)-3)

dialog[0] = "What's that? You caught a fish and placed it in [color_17]AquaVista[color_19]?"
dialog[1] = "Huh... I guess that's something. I wonder if it'll bring back the tourists."
dialog[2] = "It might even bring back the [color_28]festival[color_19]..."
}
if global.talkedtoRune = false && (global.daugava_set = 5 || global.daugava_set = 6)
{
dialog[0] = "Who are you? I don't know you!"
dialog[1] = "...Sorry. I'm not used to seeing strangers around here anymore."
dialog[2] = "What's that? You caught a fish and placed it in [color_17]AquaVista[color_19]?"
dialog[3] = "Huh... I guess that's something. I wonder if it'll bring back the tourists."
dialog[4] = "It might even bring back the [color_28]festival[color_19]..."
}

scrTalkToNPC()

if talking = true
{
	global.talkedtoRune = true
}

if global.findTheSecretCave = true && global.foundTheSecretCave = false
{
dialog[0] = "The secret cave? Yeah, I've heard about it."
dialog[1] = "Never been much of a secret really. The thing is…"
dialog[2] = "The entry is always moving around…"
dialog[3] = "It seems to follow the seagulls. I've heard that when a lot of seagulls are gathered at the same place, the entrance to Gull Grutto…"
}