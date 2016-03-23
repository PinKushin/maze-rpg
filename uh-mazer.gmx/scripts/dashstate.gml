///dashstate
if len == 0 
{
    dir = face * 90
}
len = spd * 4

//Get the Hspeed and Vspeed
hspd = lengthdir_x (len, dir)
vspd = lengthdir_y (len, dir)

//Move
x += hspd
y += vspd

//Create Dash effect
var dash = instance_create (x, y, odash);
dash.sprite_index = sprite_index
dash.image_index = image_index
