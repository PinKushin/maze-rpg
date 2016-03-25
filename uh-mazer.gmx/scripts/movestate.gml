///movestate()
getinput();


//get direction and length
dir = point_direction (0, 0, xaxis, yaxis)
if xaxis == 0 && yaxis == 0 {
    len = 0;
}else{
    len = spd;
}

//set hspd and yspd
hspd = lengthdir_x (len, dir)
vspd = lengthdir_y (len, dir)
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

//change to dash state
if dash && oplayerstats.stamina >= dashcost {
    oplayerstats.stamina -= dashcost
    state = dashstate;
    alarm[0] = room_speed / 2;
    alarm[1] = room_speed / 2;
}

//regen stamina
if instance_exists (oplayerstats) {
    if oplayerstats.stamina < oplayerstats.maxstamina && alarm[1] <= 0 {
        oplayerstats.stamina += 1;
    }
}
