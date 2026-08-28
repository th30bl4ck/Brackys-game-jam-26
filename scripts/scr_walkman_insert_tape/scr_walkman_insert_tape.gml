function scr_walkman_insert_tape(){

var walkman = argument0;
var tape = argument1;


if (walkman.inserted_tape != noone)
{
    var old_tape = walkman.inserted_tape;
    
    old_tape.in_walkman = false;
    
    old_tape.x = walkman.x + 60;
    old_tape.y = walkman.y;
    
    audio_stop_all();
}


// Insert the new cassette
walkman.inserted_tape = tape;

tape.in_walkman = true;
tape.dragging = false;


// Snap it into the Walkman
tape.x = walkman.x;
tape.y = walkman.y;


// Start the correct song
audio_stop_all();

if (tape.tape_id == 1)
{
    audio_play_sound(snd_music, 1, true);
}
else
if (tape.tape_id == 2)
{
    audio_play_sound(snd_music2, 1, true);
}

walkman.music_playing = true;
}