///slimemoveleft
var wallatleft = position_meeting (bbox_left - 1, y, osolidpar)

if wallatleft {
    state = choose (slimemoveright, slimemoveup, slimemovedown);
}

///control sprite
image_xscale = -1;

///move the slime
x += -1;

