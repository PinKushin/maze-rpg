///homingwanderstate
homingcheckforplayer();
homingcollision(osolidpar);

if homingcollision == true {
   x += 0;
   y += 0;
}else{
   x += sign (targetx - x) * spd;
   y += sign (targety - y) * spd;

}

