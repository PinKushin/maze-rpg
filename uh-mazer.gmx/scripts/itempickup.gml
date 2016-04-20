///itempickup(item);
var item = argument0;

for (var i = 0; i < maxitems; i++) {
    if global.inventory[i] == -1 {//if slot "i" is empty
        global.inventory[i] = item;
        return(1);
    }
}
return(0);
