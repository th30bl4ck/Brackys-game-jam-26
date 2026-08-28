if (dragging)
{
    x = mouse_x + drag_offset_x;
    y = mouse_y + drag_offset_y;

    // Mouse released
    if (!mouse_check_button(mb_left))
    {
        dragging = false;

        var walkman = instance_place(x, y, obj_walk_man);

        if (walkman != noone)
        {
            // ==========================================
            // EJECT CURRENT TAPE
            // ==========================================

            if (walkman.inserted_tape != noone)
            {
                var old_tape = walkman.inserted_tape;

                // Stop old song
                if (walkman.music != noone)
                {
                    audio_stop_sound(walkman.music);
                    walkman.music = noone;
                }

                // Eject old cassette
                old_tape.in_walkman = false;
                old_tape.visible = true;

                old_tape.x = walkman.x + 60;
                old_tape.y = walkman.y;

                walkman.inserted_tape = noone;
            }


            // ==========================================
            // INSERT NEW TAPE
            // ==========================================

            walkman.inserted_tape = id;

            in_walkman = true;

            // Hide cassette while inside
            visible = false;

            // Snap it to Walkman
            x = walkman.x;
            y = walkman.y;


            // ==========================================
            // START NEW SONG
            // ==========================================

            if (tape_id == 1)
            {
                walkman.music = audio_play_sound(
                    snd_music,
                    1,
                    true
                );
            }
            else if (tape_id == 2)
            {
                walkman.music = audio_play_sound(
                    snd_music2,
                    1,
                    true
                );
            }
        }
    }
}