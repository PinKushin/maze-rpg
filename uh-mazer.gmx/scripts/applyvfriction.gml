///applyvfriction (amount)
var amount = argument[0];

if (vspd != 0) {
    if abs(vspd) - amount > 0 {
        vspd = 0 // (down-up) * amount;
    }else{
    vspd = 0;
    }
}
