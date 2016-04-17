//movegrid(collision_object)
var collision_object = argument0;
//Horizontal collisions
if gridplacemeeting (x + hspd, y, collision_object){
    while !gridplacemeeting (x + sign (hspd), y, collision_object) {
        x += sign (hspd);
    }
    hspd = 0;
}

//move
x += hspd;


//Vertical collisions
if gridplacemeeting (x, y + vspd, collision_object) {
     while gridplacemeeting (x , y + sign (vspd), collision_object) {
        y += sign (vspd);
    }
    vspd = 0;
}

//move
y += vspd;

