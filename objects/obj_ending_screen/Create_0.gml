depth = -300;

ending_title = "";
ending_desc = "";
ending_number = "";
bg_sprite = -1; 

if (global.wife_alive) {
    if (global.world_karma > 0) {
        ending_title = "THE MASTERPIECE";
        ending_desc = "You paid the medical bills without compromising the city. Your wife lives, and the world is safe.";
        ending_number = "Ending 1 of 4";
        bg_sprite = spr_master;
    } else {
        ending_title = "THE CORRUPT SURVIVOR";
        ending_desc = "You saved your wife, but the world burns. You approved dangerous agendas and took dirty money to survive.";
        ending_number = "Ending 2 of 4";
        bg_sprite = spr_corrupt_survivor;
    }
} else {
    if (global.world_karma > 0) {
        ending_title = "THE MARTYR";
        ending_desc = "You held your morals and protected the city from corruption, but at the ultimate personal cost. Your wife is gone.";
        ending_number = "Ending 3 of 4";
        bg_sprite = spr_martyr;
    } else {
        ending_title = "THE TOTAL FAILURE";
        ending_desc = "You failed at your job and destroyed the city, yet still couldn't afford to save your wife. Complete ruin.";
        ending_number = "Ending 4 of 4";
        bg_sprite = spr_total_faluire;
    }
}