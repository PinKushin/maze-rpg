///checkforplayer
if instance_exists (oplayer) {
    var dis = point_distance (x, y, oplayer.x, oplayer.y);
    
    if dis < sight  && lineofsite(oplayer) == true {
        state = homingchasestate;
        targetx = oplayer.x
        targety = oplayer.y
    }else{
        state = homingidlestate;
    }
}else{
    state = homingidlestate;
}
