///move(collision_object)
var collision_object = argument0;

//Horizontal collisions
if place_meeting (x + hspd, y, collision_object){
    hspd = 0;
}
x += hspd;


//Vertical collisions
if place_meeting (x, y + vspd, collision_object){
    vspd = 0;
}
y += vspd;
