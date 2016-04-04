///itempickupslot(item, slot)
var item = argument0;
var slot = argument1;

if global.inventory[slot] == -1 { 
   global.inventory[slot] = item;
   return(1);
}
return(0);
