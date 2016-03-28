///movestate()
getinput();

//get direction
dir = point_direction (0, 0, hspddir, vspddir)
dxspd = lengthdir_x (spd, dir)
dyspd = lengthdir_y (spd, dir)

//move
//horizontal
if (right || left) {
    hspd += (right-left) * acc;
    
    if hspd > dxspd { hspd = dxspd;}
    if hspd < -dxspd { hspd = dxspd;}
    //show_debug_message (hspd)
}else{
    //friction
    applyhfriction(fric);
}
///vertical
if (up || down) {
    vspd += (down - up) * acc;
    
    if vspd > dyspd { vspd = dyspd;}
    if vspd < -dyspd { vspd = dyspd;}
    //show_debug_message (vspd)
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
