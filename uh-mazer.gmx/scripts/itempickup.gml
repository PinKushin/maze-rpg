///itempickup(item);
for (var i = 0; i < maxitems; i++) {
    if global.inventory[i] == -1 {//if slot "i" is empty
       global.inventory[i] = argument0;
       return(1);
    }
}
return(0);
