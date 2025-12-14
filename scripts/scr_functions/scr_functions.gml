function print() /// Prints to the terminal 
{
    var _string = "";
    for (i = 0 ; i < argument_count; i++)
    {
        _string = _string + string(argument[i]);
    }
    show_debug_message(_string);
    return _string;
}

function movement(entity, speed, multSpeed)
{
    var _h;
    var _v;
    switch (global.bindsPref)
    {
        case 0:
            _h = (keyboard_check(global.bindsKB.right) - keyboard_check(global.bindsKB.left)) * speed;
            _v = (keyboard_check(global.bindsKB.down)  - keyboard_check(global.bindsKB.up))   * speed;
            if (keyboard_check(global.bindsKB.cancel))
            {
                _h = _h * multSpeed;
                _v = _v * multSpeed;
            }
            break;
        case 1:
            print("Where the fuck did you get a gamepad to work on linux dude");
            break;
    }
    with (entity)
    {
        if (!place_meeting(x + _h, y, obj_barrier)) x += _h;
        if (!place_meeting(x, y + _v, obj_barrier)) y += _v;
    }
    _h = _h / abs(_h);
    _v = _v / abs(_v);
    return [_h, _v];
}