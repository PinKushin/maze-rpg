///itemdrop(item)
var item = argument0;

for (var i = 0; i < maxitems; i++) {
    if global.inventory[i] == item {//if slot "i" contains item
       global.inventory[i] = -1;
       return(1);
    }
}
return(0);
