///movestate()
getinput();

//move
hspd = (xaxis * spd);
vspd = (yaxis * spd);

x += hspd;
y += vspd;
move (owall);

