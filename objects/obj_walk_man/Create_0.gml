inserted_tape = noone;
music = noone;

// Find the cassette that starts inside the Walkman
with (obj_cassette)
{
    if (in_walkman)
    {
        other.inserted_tape = id;
        visible = false;
    }
}

// Start music for the starting cassette
if (inserted_tape != noone)
{
    if (inserted_tape.tape_id == 1)
    {
        music = audio_play_sound(snd_song_1, 1, true);
    }
    else if (inserted_tape.tape_id == 2)
    {
        music = audio_play_sound(snd_song_2, 1, true);
    }
}