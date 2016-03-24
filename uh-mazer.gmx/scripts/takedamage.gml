///takedamage(dmg knockback)
var dmg = argument0;
var knockback = argument1;

if state != hurtstate {
    
    image_blend = c_red;
    vspd = sign (y - other.y) * knockback;
    hspd = sign (x - other.x) * knockback;
    
    state = hurtstate;
    move(osolidpar);
    if instance_exists (oplayerstats) {
        oplayerstats.hp -= dmg;
    }
}
