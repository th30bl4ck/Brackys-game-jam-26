if (mouse_check_button_pressed(mb_left)) {
    
    if (!wife_bill_paid && mouse_x >= pay_button_x && mouse_x <= pay_button_x + button_w && mouse_y >= pay_button_y && mouse_y <= pay_button_y + button_h) {
        if (global.money >= bill_amount) {
            global.money -= bill_amount;
            wife_bill_paid = true;
        }
    }
    
    if (mouse_x >= button_x && mouse_x <= button_x + button_w && mouse_y >= button_y && mouse_y <= button_y + button_h) {
        
        if (!wife_bill_paid) {
            global.wife_alive = false;
        }
        
        if (global.current_visitor_index >= array_length(global.visitor_database)) {
            instance_create_depth(0, 0, -300, obj_ending_screen);
            instance_destroy(); 
        } else {
            global.visitors_seen = 0;
            global.daily_earnings = 0;
            global.daily_penalties = 0;
            global.daily_bribes = 0;
            
            instance_activate_object(obj_visitor); 
            
            if (instance_exists(obj_visitor)) {
                with (obj_visitor) { load_next_visitor(); }
            }
            
            instance_destroy();
        }
    }
}