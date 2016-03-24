///movestate()
getinput();

//move

//horizontal
if (right || left) {
    hspd += (right-left) * acc;
    hspddir = right - left;
    
    if hspd > spd { hspd = spd;}
    if hspd < -spd { hspd = -spd;}
}else{
    //friction
    applyhfriction(fric)
}
///vertical
if (up || down) {
    vspd += (down - up) * acc;
    vspddir = down - up;
    
    if vspd > spd { vspd = spd;}
    if vspd < -spd { vspd = -spd;}
}else{
    //friction
    applyvfriction (fric)
}

//change sprites
changesprite (0.2, splayerright, splayerleft, splayerup, splayerdown)

move (osolidpar);

///change to attack state
if attack {
    image_index = 0;
    state = attackstate;
}
//change to hurt state
