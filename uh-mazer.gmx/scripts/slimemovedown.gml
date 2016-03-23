///slimemovedown
var wallatbot = position_meeting (x, bbox_bottom + 1, osolidpar)

if wallatbot {
    state = choose (slimemoveup, slimemoveright, slimemoveleft);
}

///control sprite
image_yscale = 1;

///move the snake
y += 1;
