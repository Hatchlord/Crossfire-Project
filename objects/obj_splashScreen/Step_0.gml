if (timer <= 0) 
{
    window_enable_borderless_fullscreen(true);
    window_set_fullscreen(true);
    room_goto(rm_intro3);	
}
timer -= 1;