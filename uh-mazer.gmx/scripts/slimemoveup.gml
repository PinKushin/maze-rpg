///slimemoveup
var enemyattop = position_meeting (x, bbox_top - 1, oenemypar);
var wallattop = position_meeting (x, bbox_top - 1, osolidpar);

if wallattop || enemyattop {
    state = choose (slimemovedown, slimemoveleft, slimemoveright);
}

stayinsideroom (slimemoveright, slimemoveleft, slimemovedown, slimemoveup);

///control sprite
image_yscale = 1;

///move the snake
y += -spd;
