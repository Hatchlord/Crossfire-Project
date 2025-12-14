global.bindsKB = // Keyboard keybinds
{
    right  : vk_right,
    left   : vk_left,
    down   : vk_down,
    up     : vk_up,
    accept : ord("Z"),
    cancel : ord("X"),
    misc   : ord("C"),
}

global.bindsGP = // Gamepad keybinds
{
    right  : gp_padr,
    left   : gp_padl,
    down   : gp_padd,
    up     : gp_padu,
    accept : gp_face1,
    cancel : gp_face2,
    misc   : gp_face3,
}

global.GParray = []
global.GPcurrent = noone

global.bindsPref = 0;
/*
0 = Keyboard
1 = Gamepad
*/