if (is_paused) {
    if (sprite_exists(pause_sprite)) {
        draw_sprite_stretched(pause_sprite, 0, 0, 0, display_get_gui_width(), display_get_gui_height());
    }
    
    draw_set_color(c_black);
    draw_set_alpha(0.6); 
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    
    draw_set_alpha(1.0); 
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    
    var center_x = display_get_gui_width() / 2;
    var center_y = display_get_gui_height() / 2;
    
    draw_text_transformed(center_x, center_y, "PAUSED", 3, 3, 0); 
    
    var sl_x = (display_get_gui_width() / 2) - 100;
    var sl_y = (display_get_gui_height() / 2) + 100;
    var sl_w = 200;
    var sl_h = 4; 

    draw_set_halign(fa_center);
    draw_text(sl_x + (sl_w / 2), sl_y - 30, "Music Volume");

    draw_set_color(c_dkgray);
    draw_rectangle(sl_x, sl_y, sl_x + sl_w, sl_y + sl_h, false);

    draw_set_color(c_lime);
    draw_rectangle(sl_x, sl_y, sl_x + (sl_w * global.music_volume), sl_y + sl_h, false);

    draw_set_color(c_white);
    var knob_x = sl_x + (sl_w * global.music_volume);
    var knob_y = sl_y + (sl_h / 2);
    draw_circle(knob_x, knob_y, 8, false);
}