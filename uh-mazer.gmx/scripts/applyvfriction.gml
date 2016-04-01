///applyvfriction(amount)
var amount = argument[0];

if (vspd != 0) {
    if abs(vspd) - amount > 0 {
        vspd -= amount * sign (vspd);
    }else{
    vspd = 0;
    }
    //show_debug_message(vspd);
}
