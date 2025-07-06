/// PATCH

/// REPLACE
        draw_sprite_ext(spr_ui_star, star_index, x + 180, y + 26 + (i * 12), 1, 1, 0, c_white, _alpha);
/// CODE
        draw_sprite_ext(spr_ui_star, star_index, (global.lang == "en") ? (x + 208) : (x + 180), y + 26 + (i * 12), 1, 1, 0, c_white, _alpha);
/// END