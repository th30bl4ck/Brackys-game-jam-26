if (sprite_exists(bg_sprite)) {
    var sw = sprite_get_width(bg_sprite);
    var sh = sprite_get_height(bg_sprite);
    draw_sprite_ext(bg_sprite, 0, 0, 0, room_width / sw, room_height / sh, 0, c_white, 1.0);
} else {
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
}

draw_set_color(c_black);
draw_set_alpha(0.65);
draw_rectangle(room_width / 2 - 350, room_height / 2 - 200, room_width / 2 + 350, room_height / 2 + 200, false);
draw_set_alpha(1.0); 

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(room_width / 2, room_height / 2 - 80, ending_title, 2, 2, 0);
draw_text_ext(room_width / 2, room_height / 2, ending_desc, 30, 600);

draw_set_color(c_gray);
draw_text(room_width / 2, room_height / 2 + 100, ending_number);
draw_text(room_width / 2, room_height / 2 + 140, "Final Karma: " + string(global.world_karma) + "  |  Bank: $" + string(global.money));