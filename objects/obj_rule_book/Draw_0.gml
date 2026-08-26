draw_self();

if (is_open) {
    draw_set_color(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1.0); 
    
    var page_w = 700;
    var page_h = 500;
    var page_x = (room_width / 2) - (page_w / 2);
    var page_y = (room_height / 2) - (page_h / 2);
    
    draw_set_color(make_color_rgb(240, 235, 215)); 
    draw_rectangle(page_x, page_y, page_x + page_w, page_y + page_h, false);
    
    draw_set_color(c_black);
    draw_rectangle(page_x, page_y, page_x + page_w, page_y + page_h, true);
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_text_transformed(room_width / 2, page_y + 30, "EDITORIAL GUIDELINES", 1.5, 1.5, 0);
    
    draw_set_halign(fa_left);
    var text_start_y = page_y + 100;
    
    for (var i = 0; i < array_length(rules); i++) {
        draw_text_ext(page_x + 50, text_start_y + (i * 50), rules[i], 25, page_w - 100);
    }
}