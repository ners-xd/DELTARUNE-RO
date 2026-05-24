/// PATCH

/// REPLACE
if (minigametimecon == 0)
    draw_text_transformed_outline(camerax() + 320, cameray() + 50, "SCORE", 2 + (sin(siner / 4) * 0.05), 1.5 + (sin(siner / 4) * 0.1), 16711680);

if (addscore < 0)
{
    draw_text_transformed_outline(camerax() + 320 + 110, cameray() + 50, "bet", 1 + (sin(siner / 6) * 0.2), 1.5, 255);
    draw_text_transformed_outline(camerax() + 320 + 110, cameray() + 80, string(addscore), 1 + (sin(siner / 6) * 0.2), 1.5, 255);
}

else if (minigametimecon > 1)
{
    draw_text_transformed_outline(camerax() + 330, cameray() + 66, "GAME TIME!", 2 + (sin(siner / 4) * 0.05), 1.5 + (sin(siner / 4) * 0.1), 16711680);
}
/// CODE
if (minigametimecon == 0)
    draw_text_transformed_outline(camerax() + 320, cameray() + 50, "SCOR", 2 + (sin(siner / 4) * 0.05), 1.5 + (sin(siner / 4) * 0.1), 16711680);

if (addscore < 0)
{
    draw_text_transformed_outline(camerax() + 320 + 110, cameray() + 50, "pariu", 1 + (sin(siner / 6) * 0.2), 1.5, 255);
    draw_text_transformed_outline(camerax() + 320 + 110, cameray() + 80, string(addscore), 1 + (sin(siner / 6) * 0.2), 1.5, 255);
}

else if (minigametimecon > 1)
{
    draw_text_transformed_outline(camerax() + 330, cameray() + 66, "TIMPUL JOCULUI!", 2 + (sin(siner / 4) * 0.05), 1.5 + (sin(siner / 4) * 0.1), 16711680);
}
/// END
