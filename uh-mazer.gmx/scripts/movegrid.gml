//movegrid(hspd, vspd)
var hspd = argument0;
var vspd = argument1;

if room = rdungeon {
    //Horizontal collisions
    if gridplacemeeting (x + hspd, y){
        while !gridplacemeeting (x + sign (hspd), y) {
              x += sign (hspd); 
        } 
        hspd = 0;
    }
    
    //move
    x += hspd;
           
    //Vertical collisions
    if gridplacemeeting (x, y + vspd) {
        while !gridplacemeeting (x, y + sign (vspd)) {
              y += sign (vspd);
        }
        vspd = 0;
    }
    
    
    //move
    y += vspd;
}

