///itemdrop(item)
for (var i = 0; i < maxitems; i++) {
    if global.inventory[i] == argument0 {//if slot "i" is not empty
       global.inventory[i] = -1;
       return(1);
    }
}
return(0);
