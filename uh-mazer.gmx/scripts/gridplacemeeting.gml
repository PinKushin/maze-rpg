///gridplacemeetng(x, y, collision object)
var xx = argument0;
var yy = argument1;

//remember  our last position
var xp = x;
var yp = y;


///update the position for the bbox calculations
x = xx;
y = yy;

//check for meeting with floor
if instance_exists (olevel){
    var xmeeting = (olevel.grid[# bbox_right div CELLWIDTH, bbox_top div CELLHEIGHT] != FLOOR) || 
                   (olevel.grid[# bbox_left div CELLWIDTH, bbox_top div CELLHEIGHT] != FLOOR);
    
    var ymeeting = (olevel.grid[# bbox_right div CELLWIDTH, bbox_top div CELLHEIGHT] != FLOOR) || 
                   (olevel.grid[# bbox_right div CELLWIDTH, bbox_bottom div CELLHEIGHT] != FLOOR);
    
    var centermeeting = (olevel.grid[# xx div CELLWIDTH, yy div CELLHEIGHT] != FLOOR);
}
//move back
x = xp;
y = yp;

///return either true or false
return xmeeting || ymeeting || centermeeting;

