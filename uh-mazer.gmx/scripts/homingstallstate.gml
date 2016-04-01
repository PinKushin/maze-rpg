///homingstallstate
if alarm[STALL] <= 0 {
   state = homingidlestate;
   alarm[MOVE] = room_speed * irandom_range (2, 4)
   targetx = random (room_width)
   targety = random (room_height)
}
