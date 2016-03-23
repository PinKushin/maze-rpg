///slimemoveup
var wallattop = position_meeting (x, bbox_top + 1, osolidpar)

if wallattop {
    state = choose (slimemovedown, slimemoveleft, slimemoveright);
}

///control sprite
image_yscale = 1;

///move the snake
y += -1;
