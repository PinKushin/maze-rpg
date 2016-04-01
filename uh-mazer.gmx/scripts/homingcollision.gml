///homingcollision(object)
object = argument0
var objectatleft = position_meeting ((bbox_left - 1), y, object);
var objectatright = position_meeting ((bbox_right + 1), y, object);
var objectatbottom = position_meeting (x, (bbox_bottom + 1), object);
var objectattop = position_meeting (x, (bbox_top - 1), object);
var result;

if objectatleft || objectatright || objectattop || objectatbottom {
   result = true;
}else{
   result = false;
}
return result

