gamepad = global.GPcurrent

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

if (option != 0) // Select preference
{
    if (down && option + 1 <= 2) option += 1;
    if (up && option - 1 >= 1) option -= 1;
    
    if (enter)
    {
        if (option == 1) global.bindsPref = 0; 
        if (option == 2 && array_length(global.GParray) > 0) global.bindsPref = 1;
    }
}
if (princessOpt != 0) // Select Princess Quest entry
{
    if (down && princessOpt + 1 <= 3) princessOpt += 1;
    if (up && princessOpt - 1 >= 1) princessOpt -= 1;
    
    if (enter && princessArr[princessOpt] != undefined) 
    {    
        obj_CONTROLLER.setupGoto = princessArr[princessOpt];
    }
} 

if (left && option > 0)
{
    option = 0;
    princessOpt = 1;
}
if (right && princessOpt > 0)
{
    option = 1;
    princessOpt = 0;
}
