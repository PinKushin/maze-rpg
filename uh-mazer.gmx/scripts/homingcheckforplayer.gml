///homingcheckforplayer
if lineofsite (oplayer) == true {
   var dis = point_distance (x, y, oplayer.x, oplayer.y);
   var dir = point_direction (x, y, oplayer.x, oplayer.y);
   
   if dis < sight {
      state = homingchasestate;
      targetx = oplayer.x
      targety = oplayer.y
   }else{
      homingchoosenextstate();
   }
}else{
   homingchoosenextstate();
}
