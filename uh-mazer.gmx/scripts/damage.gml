///damage (dmg)
var dmg = argument0

if instance_exists (other) {
    other.hp += -dmg;
    if other.hp <=0 {
        with other {instance_destroy ();}
    }
}

