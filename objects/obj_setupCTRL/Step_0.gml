gamepad = global.GPcurrent

if (option != 0) // Select preference
{
    if (keyboard_check_pressed(vk_down)  &&  option + 1 <= 2) option += 1;
    if (keyboard_check_pressed(vk_up)  &&  option - 1 >= 1) option -= 1;
    
    if (keyboard_check_pressed(ord("Z"))  ||  (gamepad != undefined  &&  gamepad_button_check_pressed(gamepad, gp_face1)))
    {
        if (option == 1) global.bindsPref = 0; 
        if (option == 2   &&   array_length(global.GParray) > 0) global.bindsPref = 1;
    }
}
if (princessOpt != 0) // Select Princess Quest entry
{
    if (keyboard_check_pressed(vk_down)  &&  princessOpt + 1 <= 3) princessOpt += 1;
    if (keyboard_check_pressed(vk_up)  &&  princessOpt - 1 >= 1) princessOpt -= 1;
    
    if (keyboard_check_pressed(ord("Z"))  ||  (gamepad != undefined  &&  gamepad_button_check_pressed(gamepad, gp_face1))) room_goto(princessArr[princessOpt]); 
} 

if (keyboard_check_pressed(vk_left)  &&  option > 0)
{
    option = 0;
    princessOpt = 1;
}
if (keyboard_check_pressed(vk_right)  &&  princessOpt > 0)
{
    option = 1;
    princessOpt = 0;
}
