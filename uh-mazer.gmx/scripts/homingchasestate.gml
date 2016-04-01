///homingchasestate
if instance_exists (oplayer) {
    var dir = point_direction (x, y, oplayer.x, oplayer.y);
    var dis = point_distance (x, y, oplayer.x, oplayer.y);
    
    hspd = lengthdir_x (spd, dir);
    vspd = lengthdir_y (spd, dir);
    
    //Face the right direction
    if hspd !=0 {image_xscale = sign (hspd)};
    
    //go back to idle state
    if lineofsite (oplayer) == false || dis > sight {
       alarm[STALL] = room_speed;
       state = homingstallstate;
    }
    
    //move
    move (osolidpar);
}
