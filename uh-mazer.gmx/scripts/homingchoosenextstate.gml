///enemychoosenextstate()
if alarm [STALL] <= 0 {
   state = homingwanderstate;
   targetx = random_range (16, room_width - 16);
   targety = random_range (16, room_height - 16);
   alarm [STALL] = room_speed * irandom_range (2, 4)
}
