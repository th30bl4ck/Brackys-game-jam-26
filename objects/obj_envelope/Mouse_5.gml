global.daily_bribes += bribe_amount;

if (instance_exists(obj_visitor) && obj_visitor.arrived && !obj_visitor.leaving) {
    
    if (instance_exists(obj_tick)) {
        obj_tick.image_speed = 1; 
    }
    
    var is_valid = (obj_visitor.has_certificate && obj_visitor.is_stamped && !obj_visitor.is_forged);
    if (is_valid) {
        global.daily_earnings += 5; 
    } else {
        global.daily_penalties += 3; 
    }
    
    global.visitors_seen++;
    
    obj_visitor.leaving = true;
    obj_visitor.dialogue = obj_visitor.dialogue_yes;
    
    if (instance_exists(obj_paper)) instance_destroy(obj_paper);
    if (instance_exists(obj_certificate)) instance_destroy(obj_certificate);
}

instance_destroy();