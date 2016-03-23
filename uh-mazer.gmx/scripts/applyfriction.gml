///applyfriction(amount)
var amount = argument0;

if hspd != 0 {
    if abs(hspd) - amount > 0 {
        (hspd) -= amount;
    }else{
        hspd = 0;
    }
}
if vspd != 0 {
    if abs(vspd) - amount > 0 {
         (vspd) -= amount;
    }else{
        vspd = 0;
    }
}
