if (instance_exists(obj_visitor) && obj_visitor.arrived && !obj_visitor.leaving) {
    
    image_speed = 1; 

    obj_visitor.leaving = true;
    obj_visitor.dialogue = ""; 
    
    //========================
    // Play button click sound
    //========================
    audio_play_sound(snd_click, 1, false);
    audio_play_sound(snd_yes, 1, false);

    if (instance_exists(obj_paper)) {
        instance_destroy(obj_paper);
    }
}
//=======================
// tick button animation
//=======================

    image_index = 1;
    image_speed = 1;
