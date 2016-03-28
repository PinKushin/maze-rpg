///dashstate
getinput()
//set speed
len = dashspd
///set hspd and yspd
hspd = lengthdir_x (len, dir)
vspd = lengthdir_y (len, dir)
x += hspd
y += vspd

var dash = instance_create (x, y, odash);
dash.sprite_index = sprite_index;
dash.image_index = image_index;


