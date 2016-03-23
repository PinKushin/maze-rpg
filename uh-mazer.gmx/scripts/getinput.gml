///getinput()
//player control
right = keyboard_check (ord ("D"));
left = keyboard_check (ord ("A"));
up = keyboard_check (ord ("W"));
down = keyboard_check (ord ("S"));
/*pause = keyboard_check_pressed (vk_escape);
dash = keyboard_check_pressed (vk_shift);
attack = mouse_check_button_pressed (mb_left);
attackreleased = gamepad_button_check_released (mb_left);
space = keyboard_check_pressed (vk_space);*/

//get the axis
xaxis = (right - left);
yaxis = (down - up);

/*overide controls for a gamepad
var gp_id = 0; //player one

if gamepad_is_connected(gp_id) {
    xaxis = gamepad_axis_value (gp_id, gp_axislh) > thresh;
    yaxis = gamepad_axis_value (gp_id, gp_axislv) < -thresh;
    //attack = gamepad_button_check_pressed (gp_id, gp_face1);
    //attackreleased = gamepad_button_check_released (gp_id, gp_face1);
    pause = gamepad_button_check_pressed (0, gp_start);
}
*/


