global.GParray = [];
global.GPcurrent = undefined;

global.bindsPref = 0;
/// 0 for Keyboard
/// 1 for Gamepad

/*   MACROS   */
#macro DOWN ord("S")
#macro UP ord("W")
#macro RIGHT ord("D")
#macro LEFT ord("A")
#macro ENTER vk_enter

#macro GPDOWN (gamepad_button_check_pressed(global.GPcurrent, gp_padd))
#macro GPUP (gamepad_button_check_pressed(global.GPcurrent, gp_padu))
#macro GPRIGHT (gamepad_button_check_pressed(global.GPcurrent, gp_padr))
#macro GPLEFT (gamepad_button_check_pressed(global.GPcurrent, gp_padl))
#macro GPENTER (gamepad_button_check_pressed(global.GPcurrent, gp_face1))
