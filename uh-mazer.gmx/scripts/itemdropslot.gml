///itemdropslot(slot)
var slot = argument0;

if global.inventory[slot] != -1 {
   global.inventory[slot] = -1;
   return(1);
}
return(0);
