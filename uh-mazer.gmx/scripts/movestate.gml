///movestate()
getinput();

//move
if (right || left) {
    hspd += (right-left) * acc;
    hspddir = right - left;
    
    if hspd > spd { hspd = spd;}
    if hspd < -spd { hspd = -spd;}
}else{
    //friction
    applyhfriction(1)
}
if (up || down) {
    vspd += (down - up) * acc;
    vspddir = down - up;
    
    if vspd > spd { vspd = spd;}
    if vspd < -spd { vspd = -spd;}
}else{
    //friction
    applyvfriction (1)
}

//change sprites
changesprite (0.2, splayerright, splayerleft, splayerup, splayerdown)
/*var imgspd = 0.2;

if right {
    sprite_index = splayerright;
    image_speed = imgspd;
}
if left {
    sprite_index = splayerleft;
    image_speed = imgspd;
}
if up {
    sprite_index = splayerup;
    image_speed = imgspd;
}
if down {
    sprite_index = splayerdown;
    image_speed = imgspd;
}
if hspd == 0 && vspd == 0 {image_speed = 0; image_index = 0;}*/

move (osolidpar);

