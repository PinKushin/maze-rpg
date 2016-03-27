///movestate()
getinput();

//get direction
dir = point_direction (0, 0, hspddir, vspddir)
//get length
if hspddir == 0 && vspddir == 0 {
    len = 0;
}else{
    len = spd;
}
//move
//horizontal
if (right || left) {
    hspd = lengthdir_x (spd, dir)
    hspd += (right-left) * acc;
    hspddir = right - left;
    
    if hspd > spd { hspd = spd;}
    if hspd < -spd { hspd = -spd;}
}else{
    //friction
    applyhfriction(fric);
}
///vertical
if (up || down) {
    vspd = lengthdir_y (spd, dir)
    vspd += (down - up) * acc;
    vspddir = down - up;
    
    if vspd > spd { vspd = spd;}
    if vspd < -spd { vspd = -spd;}
}else{
    //friction
    applyvfriction (fric);
}

//change sprites
changesprite (0.2, splayerright, splayerleft, splayerup, splayerdown)

move (osolidpar);

///change to attack state
if attack {
    image_index = 0;
    state = attackstate;
}

//change to dash state
if dash && oplayerstats.stamina >= dashcost {
    oplayerstats.stamina -= dashcost
    state = dashstate;
    alarm[DASH] = room_speed / 2;
    alarm[STAMINA] = room_speed / 2;
}

//regen stamina
if instance_exists (oplayerstats) {
    if oplayerstats.stamina < oplayerstats.maxstamina && alarm[STAMINA] <= 0 {
        oplayerstats.stamina += 1;
    }
}
