if (instance_exists(obj_visitor) && obj_visitor.arrived && !obj_visitor.leaving) {
    image_speed = 1; 
    
    var is_valid = (obj_visitor.has_certificate && obj_visitor.is_stamped);
    if (!is_valid) {
        global.daily_earnings += 5; 
    } else {
        global.daily_penalties += 3; 
    }
    
    global.visitors_seen++;
    
    obj_visitor.leaving = true;
    obj_visitor.dialogue = obj_visitor.dialogue_no;
    
    audio_play_sound(snd_click, 1, false);
    audio_play_sound(Snd_no, 1, false);
    
    if (instance_exists(obj_paper)) instance_destroy(obj_paper);
    if (instance_exists(obj_certificate)) instance_destroy(obj_certificate);
    if (instance_exists(obj_envelope)) instance_destroy(obj_envelope);        
}
