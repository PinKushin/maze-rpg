///hurtstate
image_blend = c_red;
applyhfriction(0.05)
applyvfriction(0.05)
if hspd == 0 && vspd == 0 {
    image_blend = c_white;
    state = movestate;
}
animatesprite (0, splayerright, splayerup, splayerleft, splayerdown)
