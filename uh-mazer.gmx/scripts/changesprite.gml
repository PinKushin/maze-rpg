///changesprite (image speed, sprite right, sprite left, sprite up, sprite down)
//change sprites
var imgspd = argument0;

if hspd > 0 {
    sprite_index = argument1;
    image_speed = imgspd;
}
if hspd < 0 {
    sprite_index = argument2;
    image_speed = imgspd;
}
if vspd < 0 {
    sprite_index = argument3;
    image_speed = imgspd;
}
if vspd > 0 {
    sprite_index = argument4;
    image_speed = imgspd;
}
if hspd == 0 && vspd == 0 {image_speed = 0; image_index = 0;}

