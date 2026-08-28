if (inserted_tape != noone)
{
    // STOP CURRENT MUSIC
    if (music != noone)
    {
        audio_stop_sound(music);
        music = noone;
    }

    // Eject cassette
    inserted_tape.in_walkman = false;
    inserted_tape.visible = true;

    // Put cassette beside Walkman
    inserted_tape.x = x + 60;
    inserted_tape.y = y;

    // Walkman is empty
    inserted_tape = noone;
}