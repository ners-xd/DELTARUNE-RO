/// PATCH

/// REPLACE
        draw_sprite_ext(scr_84_get_sprite_ch1("spr_darkmenudesc"), global.menucoord[0], (xx + 20), (yy + tp - 56), 2, 2, 0, c_white, 1)
/// CODE
        if (global.menucoord[0] == 1 && global.lang == "en")
            draw_sprite_ext(scr_84_get_sprite_ch1("spr_darkmenudesc"), global.menucoord[0], (xx + 20), (yy + tp - 62), 2, 2, 0, c_white, 1)
        else
            draw_sprite_ext(scr_84_get_sprite_ch1("spr_darkmenudesc"), global.menucoord[0], (xx + 20), (yy + tp - 56), 2, 2, 0, c_white, 1)
/// END

/// REPLACE
        draw_text((xx + 520), (yy + tp - 60), string_hash_to_newline(scr_84_get_lang_string_ch1("obj_darkcontroller_slash_Draw_0_gml_47_0") + string(global.gold)))
/// CODE
        draw_text((xx + 520), (yy + tp - 60), string_hash_to_newline(string(global.gold) + scr_84_get_lang_string_ch1("obj_darkcontroller_slash_Draw_0_gml_47_0")))
/// END

/// REPLACE
    draw_sprite_ext(scr_84_get_sprite_ch1("spr_dmenu_captions"), 0, (xx + 124), (yy + 84), 2, 2, 0, c_white, 1)
/// CODE
    if (global.lang == "ja")
        draw_sprite_ext(scr_84_get_sprite_ch1("spr_dmenu_captions"), 0, (xx + 124), (yy + 84), 2, 2, 0, c_white, 1)
    else
        draw_sprite_ext(scr_84_get_sprite_ch1("spr_dmenu_captions"), 0, (xx + 124), (yy + 80), 2, 2, 0, c_white, 1)
/// END

/// REPLACE
    draw_sprite_ext(scr_84_get_sprite_ch1("spr_dmenu_captions"), 0, (xx + 118), (yy + 86), 2, 2, 0, c_white, 1)
/// CODE
    if (global.lang == "ja")
        draw_sprite_ext(scr_84_get_sprite_ch1("spr_dmenu_captions"), 0, (xx + 118), (yy + 86), 2, 2, 0, c_white, 1)
    else
        draw_sprite_ext(scr_84_get_sprite_ch1("spr_dmenu_captions"), 0, (xx + 118), (yy + 82), 2, 2, 0, c_white, 1)
/// END   

/// REPLACE
    draw_sprite_ext(scr_84_get_sprite_ch1("spr_dmenu_captions"), 5, (xx + 380), (yy + 210), 2, 2, 0, c_white, 1)
/// CODE
    if (global.lang == "ja")
        draw_sprite_ext(scr_84_get_sprite_ch1("spr_dmenu_captions"), 5, (xx + 380), (yy + 210), 2, 2, 0, c_white, 1)
    else
        draw_sprite_ext(scr_84_get_sprite_ch1("spr_dmenu_captions"), 5, (xx + 380), (yy + 206), 2, 2, 0, c_white, 1)
/// END

/// REPLACE
        draw_text((xx + 230), ch_y[3], string_hash_to_newline(rude_amount))
        draw_text((xx + 230), ch_y[4], string_hash_to_newline(crude_amount))
/// CODE
        draw_text((xx + 240), ch_y[3], string_hash_to_newline(rude_amount))
        draw_text((xx + 240), ch_y[4], string_hash_to_newline(crude_amount))
/// END

/// REPLACE
        draw_text((xx + 230), ch_y[3], string_hash_to_newline(kindness_amount))
/// CODE
        draw_text((xx + 240), ch_y[3], string_hash_to_newline(kindness_amount))
/// END

/// REPLACE
            draw_item_icon_ch1((xx + 230 + i * 20), (ch_y[4] + 6), 12)
    }
    draw_text((xx + 320), (yy + 105), string_hash_to_newline(char_desc))
/// CODE
            draw_item_icon_ch1((xx + 240 + i * 20), (ch_y[4] + 6), 12)
    }
    draw_text((xx + 270), (yy + 105), string_hash_to_newline(char_desc))
/// END

/// REPLACE
        draw_item_icon_ch1((xx + 190 + i * 20 + guts_xoff), (ch_y[5] + 6), 9)
/// CODE
        draw_item_icon_ch1((xx + 240 + i * 20 + guts_xoff), (ch_y[5] + 6), 9)
/// END

/// REPLACE
    draw_text((xx + 230), ch_y[0], string_hash_to_newline(atsum))
    draw_text((xx + 230), ch_y[1], string_hash_to_newline(dfsum))
    draw_text((xx + 230), ch_y[2], string_hash_to_newline(magsum))
/// CODE
    draw_text((xx + 240), ch_y[0], string_hash_to_newline(atsum))
    draw_text((xx + 240), ch_y[1], string_hash_to_newline(dfsum))
    draw_text((xx + 240), ch_y[2], string_hash_to_newline(magsum))
/// END

/// REPLACE
            draw_item_icon_ch1((xx + 364 + eq_xoff), (yy + 236 + j * ch_vspace), weaponicon[i])
            if (global.weapon[i] != 0)
                draw_text((xx + 384 + eq_xoff), (yy + 230 + j * ch_vspace), string_hash_to_newline(weaponname[i]))
            else
            {
                draw_set_color(c_dkgray)
                draw_text((xx + 384 + eq_xoff), (yy + 230 + j * ch_vspace), string_hash_to_newline("---------"))
            }
/// CODE
            draw_item_icon_ch1((xx + 354 + eq_xoff), (yy + 236 + j * ch_vspace), weaponicon[i])
            if (global.weapon[i] != 0)
                draw_text((xx + 374 + eq_xoff), (yy + 230 + j * ch_vspace), string_hash_to_newline(weaponname[i]))
            else
            {
                draw_set_color(c_dkgray)
                draw_text((xx + 374 + eq_xoff), (yy + 230 + j * ch_vspace), string_hash_to_newline("---------"))
            }
/// END

/// REPLACE
            draw_item_icon_ch1((xx + 364 + eq_xoff), (yy + 236 + j * ch_vspace), armoricon[i])
            if (global.armor[i] != 0)
                draw_text((xx + 384 + eq_xoff), (yy + 230 + j * ch_vspace), string_hash_to_newline(armorname[i]))
            else
            {
                draw_set_color(c_dkgray)
                draw_text((xx + 384 + eq_xoff), (yy + 230 + j * ch_vspace), string_hash_to_newline("---------"))
            }
/// CODE
            draw_item_icon_ch1((xx + 354 + eq_xoff), (yy + 236 + j * ch_vspace), armoricon[i])
            if (global.armor[i] != 0)
                draw_text((xx + 374 + eq_xoff), (yy + 230 + j * ch_vspace), string_hash_to_newline(armorname[i]))
            else
            {
                draw_set_color(c_dkgray)
                draw_text((xx + 374 + eq_xoff), (yy + 230 + j * ch_vspace), string_hash_to_newline("---------"))
            }
/// END

/// REPLACE
        draw_sprite(spr_heart_ch1, 0, (xx + 344 + eq_xoff), (yy + 240 + (global.submenucoord[global.submenu] - pagemax[pm]) * ch_vspace))
/// CODE
        draw_sprite(spr_heart_ch1, 0, (xx + 334 + eq_xoff), (yy + 240 + (global.submenucoord[global.submenu] - pagemax[pm]) * ch_vspace))
/// END

/// REPLACE
            draw_rectangle((xx + 555 - buff + scroll_xoff), (yy + 260 + i * 10 - buff), (xx + 558 + buff + scroll_xoff), (yy + 263 + i * 10 + buff), false)
        }
        if (pagemax[pm] > 0)
            draw_sprite_ext(spr_morearrow_ch1, 0, (xx + 551 + scroll_xoff), (yy + 250 - (sin(cur_jewel / 12)) * 3), 1, -1, 0, c_white, 1)
        if ((5 + pagemax[pm]) < 11)
            draw_sprite_ext(spr_morearrow_ch1, 0, (xx + 551 + scroll_xoff), (yy + 385 + (sin(cur_jewel / 12)) * 3), 1, 1, 0, c_white, 1)
/// CODE
            draw_rectangle((xx + 595 - buff + scroll_xoff), (yy + 260 + i * 10 - buff), (xx + 598 + buff + scroll_xoff), (yy + 263 + i * 10 + buff), false)
        }
        if (pagemax[pm] > 0)
            draw_sprite_ext(spr_morearrow_ch1, 0, (xx + 591 + scroll_xoff), (yy + 250 - (sin(cur_jewel / 12)) * 3), 1, -1, 0, c_white, 1)
        if ((5 + pagemax[pm]) < 11)
            draw_sprite_ext(spr_morearrow_ch1, 0, (xx + 591 + scroll_xoff), (yy + 385 + (sin(cur_jewel / 12)) * 3), 1, 1, 0, c_white, 1)
/// END