///applyhfriction (amount)
var amount = argument0;

if (hspd != 0) {
    if abs (hspd) - amount > 0 {
        hspd -= amount * sign (hspd);
    }else{
        hspd = 0;
    }
    show_debug_message (hspd)
}
