///gridplacemeetng(x, y, collision object)
var xx = argument0;
var yy = argument1;
var collision_object = argument2;

//remember the peviouse position
var xp = x;
var yp = y;

///update the position for the bbox calculations
x = xx;
y = yy;

//check for an x meeting
if instance_exists (olevel){
    var xmeeting = (olevel.grid[# bbox_right div CELLWIDTH, bbox_top div CELLHEIGHT] != collision_object) || 
                   (olevel.grid[# bbox_left div CELLWIDTH, bbox_top div CELLHEIGHT] != collision_object);
    
    var ymeeting = (olevel.grid[# bbox_right div CELLWIDTH, bbox_top div CELLHEIGHT] != collision_object) || 
                   (olevel.grid[# bbox_right div CELLWIDTH, bbox_bottom div CELLHEIGHT] != collision_object);
     
    var centermeeting = (olevel.grid[# xx div CELLWIDTH, yy div CELLHEIGHT] != collision_object);
}else{
    var xmeeting = (olevel.grid[# bbox_right div CELLWIDTH, bbox_top div CELLHEIGHT] = collision_object) || 
                   (olevel.grid[# bbox_left div CELLWIDTH, bbox_top div CELLHEIGHT] = collision_object);
    
    var ymeeting = (olevel.grid[# bbox_right div CELLWIDTH, bbox_top div CELLHEIGHT] = collision_object) || 
                   (olevel.grid[# bbox_right div CELLWIDTH, bbox_bottom div CELLHEIGHT] = collision_object);
     
    var centermeeting = (olevel.grid[# xx div CELLWIDTH, yy div CELLHEIGHT] != collision_object);
}
//move back
x = xp;
y = yp;

///return either true or false
return xmeeting || ymeeting || centermeeting;

