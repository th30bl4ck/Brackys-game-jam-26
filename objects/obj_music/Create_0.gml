
persistent = true;
music_muted = false;
music_track = audio_play_sound(snd_music, 1, true);
audio_sound_gain(music_track, 1, 0);

if (instance_exists(obj_music)) {
    instance_destroy();
    exit;
}

persistent = true;

music_muted = false;

music_track = audio_play_sound(snd_music, 1, true);
audio_sound_gain(music_track, 1, 0);