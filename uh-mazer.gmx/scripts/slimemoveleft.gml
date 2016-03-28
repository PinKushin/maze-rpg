///slimemoveleft
var enemyatleft = position_meeting (bbox_left - 1, y, oenemypar);
var wallatleft = position_meeting (bbox_left - 1, y, osolidpar);

if wallatleft ||enemyatleft {
    state = choose (slimemoveright, slimemoveup, slimemovedown);
}

stayinsideroom (slimemoveright, slimemoveleft, slimemovedown, slimemoveup);
///control sprite
image_xscale = -1;


///move the slime
x -= spd;

