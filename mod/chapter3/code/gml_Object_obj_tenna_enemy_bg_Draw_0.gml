/// PATCH

/// REPLACE
if (minigametimecon == 0)
    draw_text_transformed_outline(camerax() + 320, cameray() + 50, "SCORE", 2 + (sin(siner / 4) * 0.05), 1.5 + (sin(siner / 4) * 0.1), 16711680);
/// CODE
if (minigametimecon == 0)
    draw_text_transformed_outline(camerax() + 320, cameray() + 50, "SCOR", 2 + (sin(siner / 4) * 0.05), 1.5 + (sin(siner / 4) * 0.1), 16711680);
/// END

/// REPLACE
else if (minigametimecon > 1)
{
    draw_text_transformed_outline(camerax() + 330, cameray() + 66, "GAME TIME!", 2 + (sin(siner / 4) * 0.05), 1.5 + (sin(siner / 4) * 0.1), 16711680);
}
/// CODE
else if (minigametimecon > 1)
{
    draw_text_transformed_outline(camerax() + 330, cameray() + 66, "TIMPUL JOCULUI!", 2 + (sin(siner / 4) * 0.05), 1.5 + (sin(siner / 4) * 0.1), 16711680);
}
/// END