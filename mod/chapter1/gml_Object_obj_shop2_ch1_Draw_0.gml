/// PATCH

/// REPLACE
        draw_text(300, (260 + i * 40), string_hash_to_newline("$" + string(buyvalue[i])))
/// CODE
        draw_text(300, (260 + i * 40), string_hash_to_newline(string(buyvalue[i]) + "$"))
/// END

/// REPLACE
            draw_text(460, 290, ("$" + (string_hash_to_newline(string(buyvalue[menuc[1]]) + scr_84_get_lang_string_ch1("obj_shop2_slash_Draw_0_gml_145_0")))))
/// CODE
            draw_text(460, 290, string_hash_to_newline(string(buyvalue[menuc[1]]) + "$" + scr_84_get_lang_string_ch1("obj_shop2_slash_Draw_0_gml_145_0")))
/// END

/// REPLACE
        draw_text(460, 290, ("$" + (string_hash_to_newline(string(sellvalue) + scr_84_get_lang_string_ch1("obj_shop2_slash_Draw_0_gml_324_0")))))
/// CODE
        draw_text(460, 290, string_hash_to_newline(string(sellvalue) + "$" + scr_84_get_lang_string_ch1("obj_shop2_slash_Draw_0_gml_324_0")))
/// END

/// REPLACE
    draw_text(440, 420, ("$" + string_hash_to_newline(string(global.gold))))
/// CODE
    draw_text(440, 420, (string_hash_to_newline(string(global.gold)) + "$"))
/// END