///getinput()
//player control
right = keyboard_check (ord ("D"));
left = keyboard_check (ord ("A"));
up = keyboard_check (ord ("W"));
down = keyboard_check (ord ("S"));
pause = keyboard_check_pressed (vk_escape);
dash = keyboard_check (vk_shift);
dashstop = keyboard_check_released (vk_shift);
attack = keyboard_check_pressed(vk_space);
attackreleased = keyboard_check_released (vk_space);
pause = keyboard_check_pressed (vk_escape);
spellattack = mouse_check_button_pressed (mb_left);
spellpause = keyboard_check_pressed (ord ("E"));
//space = keyboard_check_pressed (vk_space);
hspddir = right - left;
vspddir = down - up;
