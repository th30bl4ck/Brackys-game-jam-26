if (keyboard_check_pressed(vk_escape)) {
    is_paused = !is_paused; 
    
    if (is_paused) {
        pause_sprite = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
        instance_deactivate_all(true);
    } else {
        instance_activate_all();
        if (sprite_exists(pause_sprite)) {
            sprite_delete(pause_sprite);
        }
    }
}

if (is_paused) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    
    var sl_x = (display_get_gui_width() / 2) - 100;
    var sl_y = (display_get_gui_height() / 2) + 100;
    var sl_w = 200;
    var sl_h = 20; 
    
    if (mouse_check_button_pressed(mb_left)) {
        if (point_in_rectangle(mx, my, sl_x, sl_y - 10, sl_x + sl_w, sl_y + sl_h + 10)) {
            slider_dragging = true;
        }
    }
    
    if (mouse_check_button(mb_left) && slider_dragging) {
        global.music_volume = clamp((mx - sl_x) / sl_w, 0, 1);
        audio_sound_gain(global.music_track, global.music_volume, 0);
    }
    
    if (mouse_check_button_released(mb_left)) {
        slider_dragging = false;
    }
}