function print() /// Prints to the terminal 
{
    var _string = "";
    for (var i = 0 ; i < argument_count; i++)
    {
        _string += string(argument[i]) + " ";
    }
    show_debug_message(_string);
    return _string;
}

function movement(entity, speed) 
{
    var _h;
    var _v;
    switch (global.bindsPref) 
    {
        case 0:
            _h = (keyboard_check(vk_right) - keyboard_check(vk_left)) * speed;
            _v = (keyboard_check(vk_down)  - keyboard_check(vk_up))   * speed;
        break;
    
        case 1:
            var _gpad = global.GPcurrent;
            _h = (gamepad_button_check(_gpad, gp_padr)) - gamepad_button_check(_gpad, gp_padl) * speed;
            _v = (gamepad_button_check(_gpad, gp_padd)) - gamepad_button_check(_gpad, gp_padu) * speed;
        break;
    }
    with (entity) 
    {
        if (!place_meeting(x + _h, y, obj_barrier)) x += _h;
        if (!place_meeting(x, y + _v, obj_barrier)) y += _v;
    }
    return [_h, _v];
}

function isIntro()
{
    return (room == rm_intro3);
}

function trigger_glitch(_intensity = 1.0, _duration = 30, _pixelation = 0) 
{
    with (obj_CONTROLLERglitch) 
    {
        glitch_active = true;
        glitch_intensity = clamp(_intensity, 0, 1);
        glitch_duration = _duration;
        glitch_timer = 0;
        pixelation = clamp(_pixelation, 0, 1);
    }
}
