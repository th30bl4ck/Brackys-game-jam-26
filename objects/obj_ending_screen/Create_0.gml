depth = -300; 

ending_title = "";
ending_desc = "";
ending_number = "";

if (global.wife_alive) {
    if (global.world_karma > 0) {
        ending_title = "THE MASTERPIECE";
        ending_desc = "You paid the medical bills without compromising the world. Your wife lives, and the world is safe.";
        ending_number = "Ending 1 of 4";
    } else {
        ending_title = "THE CORRUPT SURVIVOR";
        ending_desc = "You saved your wife, but the world burns. You approved dangerous agendas and took dirty money to survive.";
        ending_number = "Ending 2 of 4";
    }
} else {
    if (global.world_karma > 0) {
        ending_title = "THE MARTYR";
        ending_desc = "You held your morals and protected the world from corruption, but at the ultimate personal cost. Your wife is gone.";
        ending_number = "Ending 3 of 4";
    } else {
        ending_title = "THE TOTAL FAILURE";
        ending_desc = "You failed at your job and destroyed the world, yet still couldn't afford to save your wife. Complete ruin.";
        ending_number = "Ending 4 of 4";
    }
}