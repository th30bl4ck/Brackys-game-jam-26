if (array_length(dialogue_array) > 0) {
    var _gw = display_get_gui_width();
    var _gh = display_get_gui_height();
    
    draw_set_color(c_black);
    draw_rectangle(0, _gh - 150, _gw, _gh, false);
    
    draw_set_color(c_white);
    draw_rectangle(0, _gh - 150, _gw, _gh, true);
    
    draw_text_ext(20, _gh - 130, dialogue_array[current_line], 20, _gw - 40);
}