if (isIntro())
{
    if (keyboard_check_pressed(vk_enter) && audio_is_playing(snd_intro))
    {
        playing = true;
        audio_stop_sound(snd_intro);
        instance_create_layer(952, 863, "Instances", obj_startPrompt);
        layer_sequence_destroy(sequence);
    }
        
    if (playing)
    {
        switch (startCount < 0)
        {
            case true:
                game_end();
            break;
    
            case false:
                startCount -= 1;
            break;
        }
    }
    else
    {
        glitchRandom = irandom_range(1, 100);
        if (glitchRandom <= 25) trigger_glitch(1, 10, 1);
    }
}
