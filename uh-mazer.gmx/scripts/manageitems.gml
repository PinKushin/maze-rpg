///manageitems(cell width, cell height)
var callwidth = argument0;
var cellheight = argument1;

for (var i = 0; i < totalslots; i++) {
    if global.slot[i] == "sword" {
       draw_sprite (ssword, 0, coordx[i], coordy[i]);
       draw_text (coordx[i], coordy[i], string (global.wood));
    }
}
