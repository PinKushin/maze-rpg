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


move (osolidpar)
//Horizontal collisions
if place_meeting (x + hspd, y, osolidpar){
    alarm[DASH1F] = 1
}
x +=hspd;


//Vertical collisions
if place_meeting (x, y + vspd, osolidpar){
    alarm[DASH1F] = 1
}
y += vspd;

