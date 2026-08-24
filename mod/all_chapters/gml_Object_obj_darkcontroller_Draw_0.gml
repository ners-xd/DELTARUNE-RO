/// PATCH .ignore if CHAPTER_1

/// REPLACE
        draw_sprite_ext(menu_sprite, global.menucoord[0], xx + 20, (yy + tp) - 56, 2, 2, 0, c_white, 1);
/// CODE
        if (global.menucoord[0] == 1 && global.lang == "en")
            draw_sprite_ext(menu_sprite, global.menucoord[0], xx + 20, (yy + tp) - 62, 2, 2, 0, c_white, 1);
        else
            draw_sprite_ext(menu_sprite, global.menucoord[0], xx + 20, (yy + tp) - 56, 2, 2, 0, c_white, 1);
/// END

#if CHAPTER_1 || CHAPTER_2 || CHAPTER_3 || CHAPTER_4
/// REPLACE
    draw_sprite_ext(_spr_dmenu_captions, 0, xx + 124, yy + 84, 2, 2, 0, c_white, 1);
/// CODE
    if (global.lang == "ja")
        draw_sprite_ext(_spr_dmenu_captions, 0, xx + 124, yy + 84, 2, 2, 0, c_white, 1);
    else
        draw_sprite_ext(_spr_dmenu_captions, 0, xx + 124, yy + 80, 2, 2, 0, c_white, 1);
/// END
#else
/// REPLACE
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, xx + 124, yy + 84, 2, 2, 0, c_white, 1);
/// CODE
    if (global.lang == "ja")
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, xx + 124, yy + 84, 2, 2, 0, c_white, 1);
    else
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, xx + 124, yy + 80, 2, 2, 0, c_white, 1);
/// END
#endif

#if CHAPTER_2
/// REPLACE
    draw_sprite_ext(spr, 0, xx + 118, yy + 86, 2, 2, 0, c_white, 1);
/// CODE
    if (global.lang == "ja")
        draw_sprite_ext(spr, 0, xx + 118, yy + 86, 2, 2, 0, c_white, 1);
    else
        draw_sprite_ext(spr, 0, xx + 118, yy + 82, 2, 2, 0, c_white, 1);
/// END
#elsif CHAPTER_1 || CHAPTER_3 || CHAPTER_4
/// REPLACE
    draw_sprite_ext(_spr_dmenu_captions, 0, xx + 118, yy + 86, 2, 2, 0, c_white, 1);
/// CODE
    if (global.lang == "ja")
        draw_sprite_ext(_spr_dmenu_captions, 0, xx + 118, yy + 86, 2, 2, 0, c_white, 1);
    else
        draw_sprite_ext(_spr_dmenu_captions, 0, xx + 118, yy + 82, 2, 2, 0, c_white, 1);
/// END
#else
/// REPLACE
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, xx + 118, yy + 86, 2, 2, 0, c_white, 1);
/// CODE
    if (global.lang == "ja")
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, xx + 118, yy + 86, 2, 2, 0, c_white, 1);
    else
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, xx + 118, yy + 82, 2, 2, 0, c_white, 1);
/// END
#endif

#if CHAPTER_2
/// REPLACE
    draw_sprite_ext(_spr_dmenu_captions, 5, xx + 380, yy + 210, 2, 2, 0, c_white, 1);
    
    if (global.lang == "ja")
        draw_sprite_ext(spr_dmenu_captions, 6, xx + 310, yy + 225, 1, 1, 0, c_white, 1);
    else
        draw_sprite_ext(spr_dmenu_captions, 6, xx + 340, yy + 225, 1, 1, 0, c_white, 1);
/// CODE
    if (global.lang == "ja")
    {
        draw_sprite_ext(_spr_dmenu_captions, 5, xx + 380, yy + 210, 2, 2, 0, c_white, 1);
        draw_sprite_ext(spr_dmenu_captions, 6, xx + 310, yy + 225, 1, 1, 0, c_white, 1);
    }
    else
    {
        draw_sprite_ext(_spr_dmenu_captions, 5, xx + 380, yy + 206, 2, 2, 0, c_white, 1);
        draw_sprite_ext(spr_dmenu_captions, 6, xx + 340, yy + 225, 1, 1, 0, c_white, 1);
    }
/// END
#elsif CHAPTER_1 || CHAPTER_3 || CHAPTER_4
/// REPLACE
    draw_sprite_ext(_spr_dmenu_captions, 5, xx + 380, yy + 210, 2, 2, 0, c_white, 1);
    
    if (global.lang == "ja")
        draw_sprite_ext(_spr_dmenu_captions, 6, xx + 310, yy + 225, 1, 1, 0, c_white, 1);
    else
        draw_sprite_ext(_spr_dmenu_captions, 6, xx + 340, yy + 225, 1, 1, 0, c_white, 1);
/// CODE
    if (global.lang == "ja")
    {
        draw_sprite_ext(_spr_dmenu_captions, 5, xx + 380, yy + 210, 2, 2, 0, c_white, 1);
        draw_sprite_ext(_spr_dmenu_captions, 6, xx + 310, yy + 225, 1, 1, 0, c_white, 1);
    }
    else
    {
        draw_sprite_ext(_spr_dmenu_captions, 5, xx + 380, yy + 206, 2, 2, 0, c_white, 1);
        draw_sprite_ext(_spr_dmenu_captions, 6, xx + 340, yy + 225, 1, 1, 0, c_white, 1);
    }
/// END
#else
/// REPLACE
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 5, xx + 380, yy + 210, 2, 2, 0, c_white, 1);
    
    if (global.lang == "ja")
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 6, xx + 310, yy + 225, 1, 1, 0, c_white, 1);
    else
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 6, xx + 340, yy + 225, 1, 1, 0, c_white, 1);
/// CODE
    if (global.lang == "ja")
    {
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 5, xx + 380, yy + 210, 2, 2, 0, c_white, 1);
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 6, xx + 310, yy + 225, 1, 1, 0, c_white, 1);
    }
    else
    {
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 5, xx + 380, yy + 206, 2, 2, 0, c_white, 1);
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 6, xx + 340, yy + 225, 1, 1, 0, c_white, 1);
    }
/// END
#endif

/// REPLACE
        draw_text(xx + 230, ch_y[3], string_hash_to_newline(rude_amount));
/// CODE
        draw_text(xx + 240, ch_y[3], string_hash_to_newline(rude_amount));
/// END

#if CHAPTER_2
/// REPLACE
            draw_text_transformed(xx + 100, ch_y[4], string_hash_to_newline(stringsetloc("Purple ", "obj_darkcontroller_slash_Draw_0_gml_311_0")), langopt(0.8, 1), 1, 0);
            draw_item_icon(xx + 74, ch_y[4] + 6, 13);
            draw_text(xx + 230, ch_y[4], string_hash_to_newline(stringsetloc("Yes", "obj_darkcontroller_slash_Draw_0_gml_312_0")));
/// CODE
            draw_text_transformed(xx + 100, ch_y[4], string_hash_to_newline(stringsetloc("Purple ", "obj_darkcontroller_slash_Draw_0_gml_311_0")), langopt(0.8, 1), 1, 0);
            draw_item_icon(xx + 74, ch_y[4] + 6, 13);
            draw_text(xx + 240, ch_y[4], string_hash_to_newline(stringsetloc("Yes", "obj_darkcontroller_slash_Draw_0_gml_312_0")));
/// END

/// REPLACE
            draw_text(xx + 230, ch_y[3], string_hash_to_newline(kindness_amount));
/// CODE
            draw_text(xx + 240, ch_y[3], string_hash_to_newline(kindness_amount));
/// END

/// REPLACE
                draw_text(xx + 230, ch_y[3], string_hash_to_newline("97"));
/// CODE
                draw_text(xx + 240, ch_y[3], string_hash_to_newline("97"));
/// END
#endif

/// REPLACE
            draw_item_icon(xx + 230 + (i * 20), ch_y[4] + 6, 12);
/// CODE
            draw_item_icon(xx + 240 + (i * 20), ch_y[4] + 6, 12);
/// END

/// REPLACE
        draw_text(xx + 230, ch_y[3], string_hash_to_newline(coldness_amount));
        draw_text_transformed(xx + 100, ch_y[4], string_hash_to_newline(stringsetloc("Boldness", "obj_darkcontroller_slash_Draw_0_gml_391_0")), langopt(0.8, 1), 1, 0);
        draw_item_icon(xx + 74, ch_y[4] + 6, 16);
        var boldness_amount = min(-12 + ((global.plot - 70) * 3), 100);
        draw_text(xx + 230, ch_y[4], string_hash_to_newline(boldness_amount));
    }
    
    draw_text(xx + 320, yy + 105, string_hash_to_newline(char_desc));
    var guts_xoff = langopt(0, 16);
    
#if CHAPTER_2 || CHAPTER_3
    for (i = 0; i < guts_amount; i += 1)
#else
    for (var i = 0; i < guts_amount; i += 1)
#endif
        draw_item_icon(xx + 190 + (i * 20) + guts_xoff, ch_y[5] + 6, 9);
/// CODE
        draw_text(xx + 240, ch_y[3], string_hash_to_newline(coldness_amount));
        draw_text_transformed(xx + 100, ch_y[4], string_hash_to_newline(stringsetloc("Boldness", "obj_darkcontroller_slash_Draw_0_gml_391_0")), langopt(0.8, 1), 1, 0);
        draw_item_icon(xx + 74, ch_y[4] + 6, 16);
        var boldness_amount = min(-12 + ((global.plot - 70) * 3), 100);
        draw_text(xx + 240, ch_y[4], string_hash_to_newline(boldness_amount));
    }

    draw_text(xx + 270, yy + 105, string_hash_to_newline(char_desc));
    var guts_xoff = langopt(0, 16);

    for (var i = 0; i < guts_amount; i += 1)
#if CHAPTER_2
        draw_item_icon(xx + 240 + (i * 20) + guts_xoff, ch_y[5] + 6, 9);
#elsif CHAPTER_3
        draw_item_icon(xx + 230 + (i * 20) + guts_xoff, ch_y[5] + 6, 9);
#elsif CHAPTER_4
        draw_item_icon(xx + 210 + (i * 20) + guts_xoff, ch_y[5] + 6, 9);
#endif
/// END

/// REPLACE
    draw_text(xx + 230, ch_y[0], string_hash_to_newline(floor(atsum)));
    draw_text(xx + 230, ch_y[1], string_hash_to_newline(floor(dfsum)));
    draw_text(xx + 230, ch_y[2], string_hash_to_newline(floor(magsum)));
/// CODE
    draw_text(xx + 240, ch_y[0], string_hash_to_newline(floor(atsum)));
    draw_text(xx + 240, ch_y[1], string_hash_to_newline(floor(dfsum)));
    draw_text(xx + 240, ch_y[2], string_hash_to_newline(floor(magsum)));
/// END

/// REPLACE
            draw_item_icon(xx + 364 + eq_xoff, yy + 236 + (j * ch_vspace), weaponicon[i]);
            
            if (global.weapon[i] != 0)
            {
                draw_text(xx + 384 + eq_xoff, yy + 230 + (j * ch_vspace), string_hash_to_newline(weaponname[i]));
            }
            else
            {
                draw_set_color(c_dkgray);
                draw_text(xx + 384 + eq_xoff, yy + 230 + (j * ch_vspace), string_hash_to_newline(stringsetloc("---------", "obj_darkcontroller_slash_Draw_0_gml_585_0")));
            }
/// CODE
            draw_item_icon(xx + 354 + eq_xoff, yy + 236 + (j * ch_vspace), weaponicon[i]);
            
            if (global.weapon[i] != 0)
            {
                draw_text(xx + 374 + eq_xoff, yy + 230 + (j * ch_vspace), string_hash_to_newline(weaponname[i]));
            }
            else
            {
                draw_set_color(c_dkgray);
                draw_text(xx + 374 + eq_xoff, yy + 230 + (j * ch_vspace), string_hash_to_newline(stringsetloc("---------", "obj_darkcontroller_slash_Draw_0_gml_585_0")));
            }
/// END

#if CHAPTER_2
/// REPLACE
            draw_item_icon(xx + 364, yy + 236 + (j * ch_vspace), armoricon[i]);
            
            if (global.armor[i] != 0)
            {
                draw_text(xx + 384, yy + 230 + (j * ch_vspace), string_hash_to_newline(armorname[i]));
            }
            else
            {
                draw_set_color(c_dkgray);
                draw_text(xx + 384, yy + 230 + (j * ch_vspace), string_hash_to_newline(stringsetloc("---------", "obj_darkcontroller_slash_Draw_0_gml_609_0")));
            }
/// CODE
            draw_item_icon(xx + 354, yy + 236 + (j * ch_vspace), armoricon[i]);
            
            if (global.armor[i] != 0)
            {
                draw_text(xx + 374, yy + 230 + (j * ch_vspace), string_hash_to_newline(armorname[i]));
            }
            else
            {
                draw_set_color(c_dkgray);
                draw_text(xx + 374, yy + 230 + (j * ch_vspace), string_hash_to_newline(stringsetloc("---------", "obj_darkcontroller_slash_Draw_0_gml_609_0")));
            }
/// END
#else
/// REPLACE
            draw_item_icon(xx + 364 + eq_xoff, yy + 236 + (j * ch_vspace), armoricon[i]);
            
            if (global.armor[i] != 0)
            {
                draw_text(xx + 384 + eq_xoff, yy + 230 + (j * ch_vspace), string_hash_to_newline(armorname[i]));
            }
            else
            {
                draw_set_color(c_dkgray);
                draw_text(xx + 384 + eq_xoff, yy + 230 + (j * ch_vspace), string_hash_to_newline(stringsetloc("---------", "obj_darkcontroller_slash_Draw_0_gml_609_0")));
            }
/// CODE
            draw_item_icon(xx + 354 + eq_xoff, yy + 236 + (j * ch_vspace), armoricon[i]);
            
            if (global.armor[i] != 0)
            {
                draw_text(xx + 374 + eq_xoff, yy + 230 + (j * ch_vspace), string_hash_to_newline(armorname[i]));
            }
            else
            {
                draw_set_color(c_dkgray);
                draw_text(xx + 374 + eq_xoff, yy + 230 + (j * ch_vspace), string_hash_to_newline(stringsetloc("---------", "obj_darkcontroller_slash_Draw_0_gml_609_0")));
            }
/// END
#endif

/// REPLACE
        draw_sprite(spr_heart, 0, xx + 344 + eq_xoff, yy + 240 + ((global.submenucoord[global.submenu] - pagemax[pm]) * 27));
        draw_set_color(c_dkgray);
#if CHAPTER_2 || CHAPTER_3
        draw_rectangle(xx + 555 + scroll_xoff, yy + 260, xx + 560 + scroll_xoff, yy + 263 + 115, false);
        draw_set_color(c_white);
        draw_rectangle(xx + 555 + scroll_xoff, (yy + 260 + (pagemax[pm] * 2.738095238095238)) - 1, xx + 560 + scroll_xoff, yy + 263 + (pagemax[pm] * 2.738095238095238) + 1, false);
#else
        ossafe_fill_rectangle(xx + 555 + scroll_xoff, yy + 260, xx + 560 + scroll_xoff, yy + 263 + 115, false);
        draw_set_color(c_white);
        ossafe_fill_rectangle(xx + 555 + scroll_xoff, (yy + 260 + (pagemax[pm] * 2.738095238095238)) - 1, xx + 560 + scroll_xoff, yy + 263 + (pagemax[pm] * 2.738095238095238) + 1, false);
#endif
        
        if (pagemax[pm] > 0)
            draw_sprite_ext(spr_morearrow, 0, xx + 551 + scroll_xoff, (yy + 250) - (sin(cur_jewel / 12) * 3), 1, -1, 0, c_white, 1);
        
        if ((5 + pagemax[pm]) < __equipmenumax)
            draw_sprite_ext(spr_morearrow, 0, xx + 551 + scroll_xoff, yy + 385 + (sin(cur_jewel / 12) * 3), 1, 1, 0, c_white, 1);
/// CODE
        draw_sprite(spr_heart, 0, xx + 334 + eq_xoff, yy + 240 + ((global.submenucoord[global.submenu] - pagemax[pm]) * 27));
        draw_set_color(c_dkgray);
#if CHAPTER_2 || CHAPTER_3
        draw_rectangle(xx + 595 + scroll_xoff, yy + 260, xx + 600 + scroll_xoff, yy + 263 + 115, false);
        draw_set_color(c_white);
        draw_rectangle(xx + 595 + scroll_xoff, (yy + 260 + (pagemax[pm] * 2.738095238095238)) - 1, xx + 600 + scroll_xoff, yy + 263 + (pagemax[pm] * 2.738095238095238) + 1, false);
#else
        ossafe_fill_rectangle(xx + 595 + scroll_xoff, yy + 260, xx + 600 + scroll_xoff, yy + 263 + 115, false);
        draw_set_color(c_white);
        ossafe_fill_rectangle(xx + 595 + scroll_xoff, (yy + 260 + (pagemax[pm] * 2.738095238095238)) - 1, xx + 600 + scroll_xoff, yy + 263 + (pagemax[pm] * 2.738095238095238) + 1, false);
#endif   
        if (pagemax[pm] > 0)
            draw_sprite_ext(spr_morearrow, 0, xx + 591 + scroll_xoff, (yy + 250) - (sin(cur_jewel / 12) * 3), 1, -1, 0, c_white, 1);
        
        if ((5 + pagemax[pm]) < __equipmenumax)
            draw_sprite_ext(spr_morearrow, 0, xx + 591 + scroll_xoff, yy + 385 + (sin(cur_jewel / 12) * 3), 1, 1, 0, c_white, 1);
/// END
