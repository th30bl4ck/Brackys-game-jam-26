if (keyboard_check_pressed(vk_control) && keyboard_check_pressed(ord("M"))) {
    music_muted = !music_muted;

    if (music_muted) {
        audio_sound_gain(music_track, 0, 10);
    } else {
        audio_sound_gain(music_track, 1, 10);
    }
}