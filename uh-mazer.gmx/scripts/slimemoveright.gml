///slimemoveright
var enemyatright = position_meeting ((bbox_right + 1), y, oenemypar);
var wallatright = position_meeting ((bbox_right + 1), y, osolidpar);

if wallatright || enemyatright {
    state = choose (slimemoveleft, slimemoveup, slimemovedown);
}

///control sprite
image_xscale = 1;

///move the snake
x += spd;
