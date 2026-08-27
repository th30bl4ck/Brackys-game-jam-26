draw_self();

if (position_meeting(mouse_x, mouse_y, id)) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    
    draw_set_color(c_black);
    draw_text(x + 2, bbox_top - 8, "Right click to accept");
    
    draw_set_color(c_white);
    draw_text(x, bbox_top - 10, "Right click to accept");
}