var gamepad = global.GPcurrent
var up;
var down;
var left;
var right;
var enter;

switch (global.bindsPref) 
{
	case 0:
        up = keyboard_check_pressed(UP);
        down = keyboard_check_pressed(DOWN);
        left = keyboard_check_pressed(LEFT);
        right = keyboard_check_pressed(RIGHT);
        enter = keyboard_check_pressed(ENTER);
        break;
    case 1:
        up = (gamepad != undefined && GPUP);
        down = (gamepad != undefined && GPDOWN);
        left = (gamepad != undefined && GPLEFT);
        right = (gamepad != undefined && GPRIGHT);
        enter = (gamepad != undefined && GPENTER);
        break;
}

if (isIntro())
{
    if (enter && audio_is_playing(snd_intro))
    {
        playing = true;
        audio_stop_sound(snd_intro);
        audio_play_sound(snd_select, 10, false);
        alarm[0] = 60; // 1 sec to the next room
        instance_create_layer(952, 863, "Instances", obj_startPrompt);
        layer_sequence_destroy(sequence);
    }
}
if (enter && audio_is_playing(snd_setup) && obj_setupCTRL.princessOpt > 0)
{
    audio_stop_sound(snd_setup);
    audio_play_sound(snd_select, 10, false);
    alarm[1] = 60;
}

if (global.bindsPref == 1) print(gamepad_get_mapping(global.GPcurrent));
