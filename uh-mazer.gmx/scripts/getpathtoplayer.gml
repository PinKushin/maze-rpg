///getpathtoplayer()
if instance_exists (oplayer) {
   var xx = (oplayer.x div CELLWIDTH) * CELLWIDTH + CELLWIDTH / 2;
   var yy = (oplayer.y div CELLHEIGHT) * CELLHEIGHT + CELLHEIGHT / 2;
   
   if mp_grid_path (olevel.gridpath, path, x, y, xx, yy, true) {
      path_start (path, spd, path_action_stop, false);
   }
}
