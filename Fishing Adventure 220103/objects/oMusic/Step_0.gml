/// @description Check if intensity has changed

if !audio_is_playing(soPiscIsland) && room != rTitlescreen
{
audio_play_sound(soPiscIsland,1,true)	
}
/*
//First, it checks if intensity has changed
if (currentIntensity != intensity)
{
    audio_sound_gain(music[intensity],1,musicFadeSpeed);
    audio_sound_gain(music[currentIntensity],0,musicFadeSpeed);
    currentIntensity = intensity;
    //Basically, this just lowers the volume of the current track and raises the selected one doing a crossfade
}

