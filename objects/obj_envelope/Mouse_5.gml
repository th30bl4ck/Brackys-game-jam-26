if (instance_exists(obj_visitor) && obj_visitor.arrived && !obj_visitor.leaving) {
    global.daily_bribes += bribe_amount;
    
    if (instance_exists(obj_tick)) {
        obj_tick.image_speed = 1; 
    }
    
    var _text = string_lower(obj_visitor.article_text);
    
    var _mentions_funds = (string_pos("fund", _text) != 0 || string_pos("donation", _text) != 0);
    var _mentions_drugs = (string_pos("drug", _text) != 0 || string_pos("marijuana", _text) != 0);
    
    var is_valid = (obj_visitor.has_certificate && obj_visitor.is_stamped && !obj_visitor.is_forged && !_mentions_funds && !_mentions_drugs);
    if (is_valid) {
        global.daily_earnings += 5; 
    } else {
        global.daily_penalties += 3; 
    }
    
    global.world_karma += obj_visitor.karma_impact;
    
    global.visitors_seen++;
    
    obj_visitor.leaving = true;
    obj_visitor.dialogue = obj_visitor.dialogue_yes;
    
    if (instance_exists(obj_paper)) instance_destroy(obj_paper);
    if (instance_exists(obj_certificate)) instance_destroy(obj_certificate);
    if (instance_exists(obj_wife_letter)) instance_destroy(obj_wife_letter);
}

instance_destroy();
