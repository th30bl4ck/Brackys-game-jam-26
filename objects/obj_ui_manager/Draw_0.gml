draw_set_color(c_dkgray);
draw_rectangle(0, 0, panel_left_width, portrait_height, false);

if (instance_exists(obj_visitor)) {
    with (obj_visitor) {
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
    }
}

var table_width = room_width - panel_left_width;
draw_sprite_stretched(spr_table, 0, panel_left_width, 0, table_width, room_height);

draw_set_color(make_color_rgb(40, 40, 40));
draw_rectangle(0, portrait_height, panel_left_width, room_height, false);

draw_set_color(make_color_rgb(150, 150, 150));
draw_rectangle(10, portrait_height + 10, panel_left_width - 10, room_height - 10, true);

if (instance_exists(obj_visitor) && obj_visitor.arrived) {
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_text_ext(20, portrait_height + 20, obj_visitor.dialogue, 20, panel_left_width - 40);
}