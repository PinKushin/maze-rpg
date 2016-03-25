///dashstate
//set speed
len = dashspd
///set hspd and yspd
hspd = lengthdir_x (len, dir)
vspd = lengthdir_y (len, dir)

var dash = instance_create (x, y, odash);
dash.sprite_index = sprite_index;
dash.image_index = image_index;

if hspd == 0 && vspd = 0 {
    state = movestate;
}
