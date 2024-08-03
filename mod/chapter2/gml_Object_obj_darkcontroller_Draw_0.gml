/// PATCH

/// REPLACE
        draw_sprite_ext(menu_sprite, global.menucoord[0], (xx + 20), (yy + tp - 56), 2, 2, 0, c_white, 1)
/// CODE
        if (global.menucoord[0] == 1 && global.lang == "en")
            draw_sprite_ext(menu_sprite, global.menucoord[0], (xx + 20), (yy + tp - 62), 2, 2, 0, c_white, 1)
        else
            draw_sprite_ext(menu_sprite, global.menucoord[0], (xx + 20), (yy + tp - 56), 2, 2, 0, c_white, 1)
/// END

/// REPLACE
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, (xx + 124), (yy + 84), 2, 2, 0, c_white, 1)
/// CODE
    if (global.lang == "ja")
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, (xx + 124), (yy + 84), 2, 2, 0, c_white, 1)
    else
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, (xx + 124), (yy + 80), 2, 2, 0, c_white, 1)
/// END

// Bug fix din vanilla - Linia aceasta este prea lungă și iese din meniu
/// REPLACE
    draw_rectangle((xx + 59), (yy + 221), (xx + (langopt(584, 628))), (yy + 221 + 5), false)
/// CODE
    draw_rectangle((xx + 59), (yy + 221), (xx + (langopt(579, 625))), (yy + 221 + 5), false)
/// END

/// REPLACE
    draw_sprite_ext(spr_dmenu_captions, 0, (xx + 118), (yy + 86), 2, 2, 0, c_white, 1)
/// CODE
    if (global.lang == "ja")
        draw_sprite_ext(spr_dmenu_captions, 0, (xx + 118), (yy + 86), 2, 2, 0, c_white, 1)
    else
        draw_sprite_ext(spr_dmenu_captions, 0, (xx + 118), (yy + 82), 2, 2, 0, c_white, 1)
/// END    

/// REPLACE
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 5, (xx + 380), (yy + 210), 2, 2, 0, c_white, 1)
    if (global.lang == "ja")
        draw_sprite_ext(spr_dmenu_captions, 6, (xx + 310), (yy + 225), 1, 1, 0, c_white, 1)
    else
        draw_sprite_ext(spr_dmenu_captions, 6, (xx + 340), (yy + 225), 1, 1, 0, c_white, 1)
/// CODE
    if (global.lang == "ja")
    {
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 5, (xx + 380), (yy + 210), 2, 2, 0, c_white, 1)
        draw_sprite_ext(spr_dmenu_captions, 6, (xx + 310), (yy + 225), 1, 1, 0, c_white, 1)
    }
    else
    {
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 5, (xx + 380), (yy + 206), 2, 2, 0, c_white, 1)
        draw_sprite_ext(spr_dmenu_captions, 6, (xx + 340), (yy + 225), 1, 1, 0, c_white, 1)
    }
/// END

/// REPLACE
        draw_text((xx + 230), ch_y[3], string_hash_to_newline(rude_amount))
/// CODE
        draw_text((xx + 240), ch_y[3], string_hash_to_newline(rude_amount))
/// END

/// REPLACE
            draw_text_transformed((xx + 100), ch_y[4], string_hash_to_newline(stringsetloc("Purple ", "obj_darkcontroller_slash_Draw_0_gml_311_0")), langopt(0.8, 1), 1, 0)
            draw_item_icon((xx + 74), (ch_y[4] + 6), 13)
            draw_text((xx + 230), ch_y[4], string_hash_to_newline(stringsetloc("Yes", "obj_darkcontroller_slash_Draw_0_gml_312_0")))
/// CODE
            draw_text_transformed((xx + 100), ch_y[4], string_hash_to_newline(stringsetloc("Purple ", "obj_darkcontroller_slash_Draw_0_gml_311_0")), langopt(0.8, 1), 1, 0)
            draw_item_icon((xx + 74), (ch_y[4] + 6), 13)
            draw_text((xx + 240), ch_y[4], string_hash_to_newline(stringsetloc("Yes", "obj_darkcontroller_slash_Draw_0_gml_312_0")))
/// END

/// REPLACE
            draw_text((xx + 230), ch_y[3], string_hash_to_newline(kindness_amount))
/// CODE
            draw_text((xx + 240), ch_y[3], string_hash_to_newline(kindness_amount))
/// END

/// REPLACE
                draw_text((xx + 230), ch_y[3], string_hash_to_newline("97"))
/// CODE
                draw_text((xx + 240), ch_y[3], string_hash_to_newline("97"))
/// END

/// REPLACE
            draw_item_icon((xx + 230 + i * 20), (ch_y[4] + 6), 12)
/// CODE
            draw_item_icon((xx + 240 + i * 20), (ch_y[4] + 6), 12)
/// END

/// REPLACE
        draw_text((xx + 230), ch_y[3], string_hash_to_newline(coldness_amount))
        draw_text_transformed((xx + 100), ch_y[4], string_hash_to_newline(stringsetloc("Boldness", "obj_darkcontroller_slash_Draw_0_gml_391_0")), langopt(0.8, 1), 1, 0)
        draw_item_icon((xx + 74), (ch_y[4] + 6), 16)
        var boldness_amount = min((-12 + (global.plot - 70) * 3), 100)
        draw_text((xx + 230), ch_y[4], string_hash_to_newline(boldness_amount))
    }
    draw_text((xx + 320), (yy + 105), string_hash_to_newline(char_desc))
    var guts_xoff = langopt(0, 16)
    for (i = 0; i < guts_amount; i += 1)
        draw_item_icon((xx + 190 + i * 20 + guts_xoff), (ch_y[5] + 6), 9)
/// CODE
        draw_text((xx + 240), ch_y[3], string_hash_to_newline(coldness_amount))
        draw_text_transformed((xx + 100), ch_y[4], string_hash_to_newline(stringsetloc("Boldness", "obj_darkcontroller_slash_Draw_0_gml_391_0")), langopt(0.8, 1), 1, 0)
        draw_item_icon((xx + 74), (ch_y[4] + 6), 16)
        var boldness_amount = min((-12 + (global.plot - 70) * 3), 100)
        draw_text((xx + 240), ch_y[4], string_hash_to_newline(boldness_amount))
    }
    draw_text((xx + 270), (yy + 105), string_hash_to_newline(char_desc))
    var guts_xoff = langopt(0, 16)
    for (i = 0; i < guts_amount; i += 1)
        draw_item_icon((xx + 240 + i * 20 + guts_xoff), (ch_y[5] + 6), 9)
/// END

/// REPLACE
    draw_text((xx + 230), ch_y[0], string_hash_to_newline(floor(atsum)))
    draw_text((xx + 230), ch_y[1], string_hash_to_newline(floor(dfsum)))
    draw_text((xx + 230), ch_y[2], string_hash_to_newline(floor(magsum)))
/// CODE
    draw_text((xx + 240), ch_y[0], string_hash_to_newline(floor(atsum)))
    draw_text((xx + 240), ch_y[1], string_hash_to_newline(floor(dfsum)))
    draw_text((xx + 240), ch_y[2], string_hash_to_newline(floor(magsum)))
/// END

/// REPLACE
            draw_item_icon((xx + 364 + eq_xoff), (yy + 236 + j * ch_vspace), weaponicon[i])
            if (global.weapon[i] != 0)
                draw_text((xx + 384 + eq_xoff), (yy + 230 + j * ch_vspace), string_hash_to_newline(weaponname[i]))
            else
            {
                draw_set_color(c_dkgray)
                draw_text((xx + 384 + eq_xoff), (yy + 230 + j * ch_vspace), string_hash_to_newline(stringsetloc("---------", "obj_darkcontroller_slash_Draw_0_gml_585_0")))
            }
/// CODE
            draw_item_icon((xx + 354 + eq_xoff), (yy + 236 + j * ch_vspace), weaponicon[i])
            if (global.weapon[i] != 0)
                draw_text((xx + 374 + eq_xoff), (yy + 230 + j * ch_vspace), string_hash_to_newline(weaponname[i]))
            else
            {
                draw_set_color(c_dkgray)
                draw_text((xx + 374 + eq_xoff), (yy + 230 + j * ch_vspace), string_hash_to_newline(stringsetloc("---------", "obj_darkcontroller_slash_Draw_0_gml_585_0")))
            }
/// END

/// REPLACE
            draw_item_icon((xx + 364), (yy + 236 + j * ch_vspace), armoricon[i])
            if (global.armor[i] != 0)
                draw_text((xx + 384), (yy + 230 + j * ch_vspace), string_hash_to_newline(armorname[i]))
            else
            {
                draw_set_color(c_dkgray)
                draw_text((xx + 384), (yy + 230 + j * ch_vspace), string_hash_to_newline(stringsetloc("---------", "obj_darkcontroller_slash_Draw_0_gml_609_0")))
            }
/// CODE
            draw_item_icon((xx + 354), (yy + 236 + j * ch_vspace), armoricon[i])
            if (global.armor[i] != 0)
                draw_text((xx + 374), (yy + 230 + j * ch_vspace), string_hash_to_newline(armorname[i]))
            else
            {
                draw_set_color(c_dkgray)
                draw_text((xx + 374), (yy + 230 + j * ch_vspace), string_hash_to_newline(stringsetloc("---------", "obj_darkcontroller_slash_Draw_0_gml_609_0")))
            }
/// END

/// REPLACE
        draw_sprite(spr_heart, 0, (xx + 344 + eq_xoff), (yy + 240 + (global.submenucoord[global.submenu] - pagemax[pm]) * 27))
        draw_set_color(c_dkgray)
        draw_rectangle((xx + 555 + scroll_xoff), (yy + 260), (xx + 560 + scroll_xoff), (yy + 263 + 115), false)
        draw_set_color(c_white)
        draw_rectangle((xx + 555 + scroll_xoff), (yy + 260 + pagemax[pm] * 2.738095238095238 - 1), (xx + 560 + scroll_xoff), (yy + 263 + pagemax[pm] * 2.738095238095238 + 1), false)
        if (pagemax[pm] > 0)
            draw_sprite_ext(spr_morearrow, 0, (xx + 551 + scroll_xoff), (yy + 250 - (sin(cur_jewel / 12)) * 3), 1, -1, 0, c_white, 1)
        if ((5 + pagemax[pm]) < __equipmenumax)
            draw_sprite_ext(spr_morearrow, 0, (xx + 551 + scroll_xoff), (yy + 385 + (sin(cur_jewel / 12)) * 3), 1, 1, 0, c_white, 1)
/// CODE
        draw_sprite(spr_heart, 0, (xx + 334 + eq_xoff), (yy + 240 + (global.submenucoord[global.submenu] - pagemax[pm]) * 27))
        draw_set_color(c_dkgray)
        draw_rectangle((xx + 595 + scroll_xoff), (yy + 260), (xx + 600 + scroll_xoff), (yy + 263 + 115), 0)
        draw_set_color(c_white)
        draw_rectangle((xx + 595 + scroll_xoff), (yy + 260 + pagemax[pm] * 2.738095238095238 - 1), (xx + 600 + scroll_xoff), (yy + 263 + pagemax[pm] * 2.738095238095238 + 1), 0)
        if (pagemax[pm] > 0)
            draw_sprite_ext(spr_morearrow, 0, (xx + 591 + scroll_xoff), (yy + 250 - (sin(cur_jewel / 12)) * 3), 1, -1, 0, c_white, 1)
        if ((5 + pagemax[pm]) < __equipmenumax)
            draw_sprite_ext(spr_morearrow, 0, (xx + 591 + scroll_xoff), (yy + 385 + (sin(cur_jewel / 12)) * 3), 1, 1, 0, c_white, 1)
/// END