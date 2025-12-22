draw_set_font(fnt_consolasB);

/// Princess Quest entry selection
if (princessOpt == 1) draw_text_color(128, 192, "Princess Quest I", c_yellow, c_yellow, c_yellow, c_yellow, 1);
    else draw_text_color(128, 192, "Princess Quest I", c_white, c_white, c_white, c_white, 1);
    
if (princessOpt == 2) draw_text_color(128, 267, "Princess Quest II", c_yellow, c_yellow, c_yellow, c_yellow, 1);
    else draw_text_color(128, 267, "Princess Quest II", c_white, c_white, c_white, c_white, 1);
    
if (princessOpt == 3) draw_text_color(128, 342, "Princess Quest III", c_yellow, c_yellow, c_yellow, c_yellow, 1);
    else draw_text_color(128, 342, "Princess Quest III", c_white, c_white, c_white, c_white, 1);


/// Input selection
draw_text_color(960, 192, "Select input device:", c_orange, c_orange, c_orange, c_orange, 1);

if (option == 1) draw_text_color(960, 267, "Keyboard (WASD + ENTER)", c_yellow, c_yellow, c_yellow, c_yellow, 1);
    else draw_text_color(960, 267, "Keyboard (WASD + ENTER)", c_white, c_white, c_white, c_white, 1);
    
if (array_length(global.GParray) > 0) 
{
	if (option == 2) draw_text_color(960, 342, "Gamepad (available)", c_yellow, c_yellow, c_yellow, c_yellow, 1);
        else draw_text_color(960, 342, "Gamepad (available)", c_white, c_white, c_white, c_white, 1);
}
else 
{
	if (option == 2) draw_text_color(960, 342, "Gamepad (unavailable)", c_yellow, c_yellow, c_yellow, c_yellow, 1);
        else draw_text_color(960, 342, "Gamepad (unavailable)", c_white, c_white, c_white, c_white, 1);
}