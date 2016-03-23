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

move (osolidpar);

///change to attack state
if attack {
    image_index = 0;
    state = attackstate;
}
