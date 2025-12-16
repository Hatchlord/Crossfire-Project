var _gpad = async_load[? "pad_index"];

switch (async_load[? "event_type"]) 
{
	case "gamepad discovered":
        array_push(global.GParray, _gpad);
        gamepad_set_axis_deadzone(_gpad, 0.25);
    break;

    case "gamepad lost":
        var exGPad = array_get_index(global.GParray, _gpad);
        if (exGPad >= 0) 
        {
        	array_delete(global.GParray, exGPad, 1);
        }
    break
}

if (array_length(global.GParray) > 0) 
{
	global.GPcurrent = global.GParray[0];
}
else 
{
	global.GPcurrent = undefined;
    global.bindsPref = 0;
}
