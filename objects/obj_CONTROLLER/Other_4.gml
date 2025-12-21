if (isIntro())
{
    audio_play_sound(snd_intro, 10, true);
}

switch (room) 
{
    case rm_settings:
        audio_play_sound(snd_setup, 10, true);
        
}
