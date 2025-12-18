trigger_glitch(1, 90, 0.8)
if (isIntro())
{
    audio_play_sound(snd_intro, 10, true);
    playing = false;
    startCount = 30;
}