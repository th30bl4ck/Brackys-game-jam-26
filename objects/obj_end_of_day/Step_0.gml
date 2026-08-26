if (mouse_check_button_pressed(mb_left)) {
    if (mouse_x >= button_x && mouse_x <= button_x + button_w && mouse_y >= button_y && mouse_y <= button_y + button_h) {
        
        global.visitors_seen = 0;
        global.daily_earnings = 0;
        global.daily_penalties = 0;
        
        instance_activate_object(obj_visitor);
        obj_visitor.load_next_visitor();
        
        instance_destroy();
    }
}