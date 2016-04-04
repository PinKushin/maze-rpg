///addtoinventory(item name)
var inv = oinventory;
var toname = argument0;

for (var i = 0; i < inv.totalslots; i++) {
    if i == inv.totalslots {
       for (var j = 0; j < inv.totalslots; j++) {
           if global.slot[j] == "noone" {
              global.slot[j] = toname;
              addlist (toname);
              break;
           }
       }
    }
} 


