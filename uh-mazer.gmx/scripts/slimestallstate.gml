///slimestallstate ()
if alarm[STALL] <= 0 {
    state = choose (slimemoveright, slimemovedown, slimemoveup, slimemoveleft)
}
