if (instance_exists(obj_visitor) && obj_visitor.arrived && !obj_visitor.leaving) {
    
    image_speed = 1; 
    
    if (obj_visitor.is_tutorial) {
        obj_visitor.leaving = true;
        obj_visitor.dialogue = obj_visitor.dialogue_yes; 
        audio_play_sound(snd_click, 1, false);
        audio_play_sound(snd_yes, 1, false);
        if (instance_exists(obj_wife_letter)) instance_destroy(obj_wife_letter);
        
    } else {
        var _text = string_lower(obj_visitor.article_text);
        
        var _mentions_funds = (string_pos("fund", _text) != 0 || string_pos("donation", _text) != 0);
        var _mentions_drugs = (string_pos("drug", _text) != 0 || string_pos("marijuana", _text) != 0);
        
        var is_valid = (obj_visitor.has_certificate && obj_visitor.is_stamped && !obj_visitor.is_forged && !_mentions_funds && !_mentions_drugs);
        
        if (is_valid) {
            global.daily_earnings += 5; 
        } else {
            global.daily_penalties += 3; 
        }
        
        audio_play_sound(snd_click, 1, false);
        audio_play_sound(snd_yes, 1, false);
        
        if (!variable_global_exists("world_karma")) {
            global.world_karma = 0;
        }
        
        if (variable_instance_exists(obj_visitor, "karma_impact")) {
            global.world_karma += obj_visitor.karma_impact;
        }
        
        global.visitors_seen++;
        
        if (instance_exists(obj_paper)) instance_destroy(obj_paper);
        if (instance_exists(obj_certificate)) instance_destroy(obj_certificate);
        if (instance_exists(obj_envelope)) instance_destroy(obj_envelope);
        if (instance_exists(obj_wife_letter)) instance_destroy(obj_wife_letter);
        
        if (global.current_visitor_index >= array_length(global.visitor_database)) {
            
            if (!variable_global_exists("wife_bill_paid") || !wife_bill_paid) {
                global.wife_alive = false;
            }

            if (!instance_exists(obj_screen_fade)) {
                instance_create_depth(0, 0, -500, obj_screen_fade);
            }
            
            instance_destroy(obj_visitor);
        } 
        else {
            obj_visitor.leaving = true;
            obj_visitor.dialogue = obj_visitor.dialogue_yes;
        }
    }
}