///itemcheck(item)
for (var i = 0; i < maxitems; i++) {
    if global.inventory[i] == argument0 {//if slot "i" contains argument0
       return(1);
    }
}
return(0);
