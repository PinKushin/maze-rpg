///hurtstate
image_blend = c_red;
applyhfriction(1)
applyvfriction(1)
if hspd == 0 && vspd == 0 {
    image_blend = c_white;
    state = movestate;
    if oplayerstats.hp <= 0 {
        game_restart ();
    }
}
animatesprite (0.2, splayerright, splayerup, splayerleft, splayerdown)
