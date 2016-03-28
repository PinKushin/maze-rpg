///slimemovedown
var enemyatbot = position_meeting (x, bbox_bottom + 1, oenemypar);
var wallatbot = position_meeting (x, bbox_bottom + 1, osolidpar);

if wallatbot || enemyatbot {
    state = choose (slimemoveup, slimemoveright, slimemoveleft);
}

stayinsideroom (slimemoveright, slimemoveleft, slimemovedown, slimemoveup);
///control sprite
image_yscale = 1;

///move the snake
y += spd;
