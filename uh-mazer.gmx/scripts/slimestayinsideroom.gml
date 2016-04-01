///slimestayinsideroom(stateright, stateleft, statedown, stateup) 
var stateright = argument0;
var stateleft = argument1;
var statedown = argument2;
var stateup = argument3;

if x < 0 + 12 {
    state = choose (stateright, statedown, stateup);
}
if x > room_width - 12 {
    state = choose (stateleft, statedown, stateup);
}
if y < 0 + 8 {
    state = choose (stateright, stateleft, statedown);
}
if y > room_height - 12 {
    state = choose (stateright, stateleft, stateup);
}
