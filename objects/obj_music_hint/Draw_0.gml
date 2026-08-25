draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (show_hint) {
    draw_set_alpha(1);
    draw_text(room_width / 2, room_height / 2, "CTRL + M TO MUTE");
}

draw_set_alpha(1);