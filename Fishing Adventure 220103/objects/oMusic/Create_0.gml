/// @description Initialize Variables

intensity = 1; //First, enter the initial intensity
currentIntensity = intensity; 
fadeIn = true; //True if you want to music to fade in rather than starting abruptly
musicFadeSpeed = 1500//4500; //The speed for a track to fade into another

//Now, this is the important part

/*If you want to add more tracks (each track being a level of intensity) 
or subtract one, you'll have to manually add it in the Audio Sync Group.
To do this, you'll have to create an array variable. In this case, 
music[n] = audio_play_in_sync_group(groupDynamicMusic,*name of the music file here*);
Then, you'll have to lower the gain to 0 
audio_sound_gain(music[n],0,0);
*/


groupDynamicMusic = audio_create_sync_group(true);
music[0] = noone


music[1] = soPiscIsland
music[2] = soPiscIsland
music[3] = soPiscIsland


audio_play_in_sync_group(groupDynamicMusic,soPiscIsland);
audio_play_in_sync_group(groupDynamicMusic,soPiscIsland);
audio_play_in_sync_group(groupDynamicMusic,soPiscIsland);
audio_sound_gain(soPiscIsland,0,0);
audio_sound_gain(soPiscIsland,0,0);
audio_sound_gain(soPiscIsland,0,0);

//Här har jag bara bytt ut till piscisland. byt tillbaka om du vill, framtidspetter

//music[1] = soPuddletown1
//music[2] = soPuddletown2
//music[3] = soPuddletown3


//audio_play_in_sync_group(groupDynamicMusic,soPuddletown1);
//audio_play_in_sync_group(groupDynamicMusic,soPuddletown2);
//audio_play_in_sync_group(groupDynamicMusic,soPuddletown3);
//audio_sound_gain(soPuddletown1,0,0);
//audio_sound_gain(soPuddletown2,0,0);
//audio_sound_gain(soPuddletown3,0,0);







//audio_start_sync_group(groupDynamicMusic);

//This checks if there is a fade in enabled
if(fadeIn)
    audio_sound_gain(music[intensity],1,musicFadeSpeed); //Slowly raise the volume
else
    audio_sound_gain(music[intensity],1,0); //Starts abruptly

/* */
/*  */
