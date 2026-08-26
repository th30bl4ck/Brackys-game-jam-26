persistent = true;
music_muted = false;

global.music_volume = 1; 
global.music_track = audio_play_sound(snd_music, 1, true);

audio_sound_gain(global.music_track, global.music_volume, 0);