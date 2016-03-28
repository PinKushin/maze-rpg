///resetknockback (collision_object)
var collision_object = argument0;
if place_meeting (x + spd + xknock, y + spd + yknock, collision_object) {
    xknock = 0
    yknock = 0  
}
spd = spd + xknock

