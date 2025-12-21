if (isIntro())
{
    if (keyboard_check_pressed(vk_enter) && audio_is_playing(snd_intro))
    {
        playing = true;
        audio_stop_sound(snd_intro);
        audio_play_sound(snd_select, 10, false);
        alarm[0] = 60; // 1 sec to the next room
        instance_create_layer(952, 863, "Instances", obj_startPrompt);
        layer_sequence_destroy(sequence);
    }
}
if (keyboard_check_pressed(vk_enter) && audio_is_playing(snd_setup))
{
    audio_stop_sound(snd_setup);
    audio_play_sound(snd_select, 10, false);
    alarm[1] = 60;
}
