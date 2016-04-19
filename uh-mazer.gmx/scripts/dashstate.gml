///dashstate

//set speed and length
if len == 0 {
    dir = face * 90
}
len = dashspd;

///set hspd and yspd
hspd = lengthdir_x (len, dir)
vspd = lengthdir_y (len, dir)


switch room {
    case rdungeon: 
         //move on grid
         movegrid (hspd, vspd);
         
         
    break;
    
    
    default: 
        //Horizontal collisions
        if place_meeting (x + hspd, y, osolidpar){
        while !place_meeting (x + sign (hspd), y, osolidpar) {
            x += sign (hspd);
        }
        hspd = 0;
        state = movestate;
    }
    x +=hspd;
    
    
    //Vertical collisions
    if place_meeting (x, y + vspd, osolidpar){
         while !place_meeting (x , y + sign (vspd), osolidpar) {
            y += sign (vspd);
        }
        vspd = 0;
        state = movestate;
    }
    y += vspd;
    break;
}
var dash = instance_create (x, y, odash);
dash.sprite_index = sprite_index;
dash.image_index = image_index;

animatesprite (0.4, splayerright, splayerup, splayerleft, splayerdown)

