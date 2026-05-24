/// PATCH

/// REPLACE
if (minigametype == "cooking" && (minigamedifficulty == 1 || minigamedifficulty == 3))
{
    draw_text_transformed(camerax() + score_x + 140, ((cameray() + bar_y) - 5) + 70, "ENEMY", 3, 2, 0);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 116 + 190, cameray() + bar_y + 4 + 70, 60, 14, 0, c_red, 1);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 116 + 190, cameray() + bar_y + 4 + 70, barsize, 14, 0, c_white, 1);
}
else if (minigametype == "battle" && minigamedifficulty == 3)
{
    draw_text_transformed(camerax() + score_x + 140, ((cameray() + bar_y) - 5) + 70, "ENEMY", 3, 2, 0);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 116 + 190, cameray() + bar_y + 4 + 70, 150, 14, 0, c_red, 1);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 116 + 190, cameray() + bar_y + 4 + 70, barsize, 14, 0, c_white, 1);
}
else if (minigametype == "susiezilla" && (minigamedifficulty == 3 || minigamedifficulty == 4))
{
    draw_text_transformed(camerax() + score_x, (cameray() + bar_y) - 5, "ENEMY", 3, 2, 0);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 116, cameray() + bar_y + 4, 60, 14, 0, c_red, 1);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 116, cameray() + bar_y + 4, barsize, 14, 0, c_white, 1);
}
else
{
    draw_sprite_ext(spr_tenna_minigame_ui, 0, camerax() + bar_x, cameray() + bar_y, 0.5, 0.5, 0, c_white, 1);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 26, cameray() + bar_y + 4, 150, 14, 0, c_red, 1);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 26, cameray() + bar_y + 4, barsize, 14, 0, c_white, 1);
}

if (minigametype == "battle" && minigamedifficulty == 3)
    exit;

draw_text_transformed(camerax() + score_x, cameray() + score_y, "SCORE", 3, 2, 0);
draw_set_halign(fa_right);
/// CODE
if (minigametype == "cooking" && (minigamedifficulty == 1 || minigamedifficulty == 3))
{
    draw_text_transformed(camerax() + score_x + 140, ((cameray() + bar_y) - 5) + 70, "INAMIC", 3, 2, 0);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 116 + 190, cameray() + bar_y + 4 + 70, 60, 14, 0, c_red, 1);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 116 + 190, cameray() + bar_y + 4 + 70, barsize, 14, 0, c_white, 1);
}
else if (minigametype == "battle" && minigamedifficulty == 3)
{
    draw_text_transformed(camerax() + score_x + 140, ((cameray() + bar_y) - 5) + 70, "INAMIC", 3, 2, 0);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 116 + 190, cameray() + bar_y + 4 + 70, 150, 14, 0, c_red, 1);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 116 + 190, cameray() + bar_y + 4 + 70, barsize, 14, 0, c_white, 1);
}
else if (minigametype == "susiezilla" && (minigamedifficulty == 3 || minigamedifficulty == 4))
{
    draw_text_transformed(camerax() + score_x, (cameray() + bar_y) - 5, "INAMIC", 3, 2, 0);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 116, cameray() + bar_y + 4, 60, 14, 0, c_red, 1);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 116, cameray() + bar_y + 4, barsize, 14, 0, c_white, 1);
}
else
{
    draw_sprite_ext(spr_tenna_minigame_ui, 0, camerax() + bar_x, cameray() + bar_y, 0.5, 0.5, 0, c_white, 1);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 26, cameray() + bar_y + 4, 150, 14, 0, c_red, 1);
    draw_sprite_ext(spr_whitepixel, 0, camerax() + bar_x + 26, cameray() + bar_y + 4, barsize, 14, 0, c_white, 1);
}

if (minigametype == "battle" && minigamedifficulty == 3)
    exit;

draw_text_transformed(camerax() + score_x, cameray() + score_y, "SCOR", 3, 2, 0);
draw_set_halign(fa_right);
draw_text_transformed_color((camerax() + box_x) - 93, cameray() + box_y + 18, "RATĂRI", 3, 2, 0, blend1, blend1, blend1, blend1, 1);
/// END
