///homingidlestate

///look for player
checkforplayer ();

//move
if point_distance (x, y, targetx, targety) > spd {
   var dir = point_direction (x, y, targetx, targety);
   hspd = lengthdir_x (spd, dir);
   vspd = lengthdir_y (spd, dir);
   move (osolidpar);
   //Face the right direction
   if hspd !=0 {image_xscale = sign (hspd)};
}
if hspd == 0 || vspd == 0 {
   state = homingstallstate;
}
if alarm[MOVE] <= 0 {
   state = homingstallstate;
}

