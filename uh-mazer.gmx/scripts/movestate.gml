///movestate()
getinput();
image_blend = c_white;
//get direction
dir = point_direction (0, 0, hspddir, vspddir);
dxspd = lengthdir_x (spd, dir);
dyspd = lengthdir_y (spd, dir);

//get length
if hspddir == 0 && vspddir == 0 {
    len = 0
}else{
    len = spd;
    facing ();
}

//move
//horizontal
if hspddir != 0 {
    hspd += hspddir * spd;
    
    //diagnal cap
    if hspd > dxspd { hspd = dxspd;}
    if hspd < -dxspd { hspd = dxspd;}
}else{
    //friction
    applyhfriction (fric);
}
///vertical
if vspddir != 0 {
    vspd += vspddir * spd;
    
    //diagnal cap
    if vspd > dyspd { vspd = dyspd;}
    if vspd < -dyspd { vspd = dyspd;}
}else{
    //friction
    applyvfriction (fric);
}
move(osolidpar);

//change sprites
animatesprite (0.2, splayerright, splayerup, splayerleft, splayerdown)

///change to spell state
if spellattack && global.spellcost <= oplayerstats.mana{
   image_index = 0;
   state = spellstate;
}else{
  ///regen mana
  if oplayerstats.mana < oplayerstats.maxmana {
     oplayerstats.mana += oplayerstats.maxmana / 50;
     if oplayerstats.mana > oplayerstats.maxmana {
        oplayerstats.mana = oplayerstats.maxmana;
     }
  }
}

//change to dash state
if dash && oplayerstats.stamina >= dashcost {
    oplayerstats.stamina -= dashcost
    state = dashstate;
    alarm[DASH] = room_speed / 2;
    alarm[STAMINA] = room_speed * 3;
}

//regen stamina
if instance_exists (oplayerstats) {
    if oplayerstats.stamina < oplayerstats.maxstamina && alarm[STAMINA] <= 0 {
        oplayerstats.stamina += 1;
    }
}



