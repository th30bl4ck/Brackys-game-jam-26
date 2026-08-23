switch(button_action)
{
    case "play":
        room_goto(rm_starting);
    break;

    case "quit":
        game_end();
    break;
}
