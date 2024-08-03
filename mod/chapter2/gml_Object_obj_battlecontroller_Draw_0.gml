/// PATCH

/// REPLACE
                    draw_sprite(spr_tiredmark, 0, (xx + 80 + namewidth + 40), (yy + 385 + i * 30))
/// CODE
                    draw_sprite(spr_tiredmark, 0, (xx + 60 + namewidth + 40), (yy + 385 + i * 30))
/// END

/// REPLACE
                    if (global.lang != "ja")
                        draw_text((xx + 80 + namewidth + 60), (yy + 375 + i * 30), string_hash_to_newline(global.monstercomment[i]))
/// CODE
                    if (global.lang != "ja")
                        draw_text((xx + 60 + namewidth + 60), (yy + 375 + i * 30), string_hash_to_newline(global.monstercomment[i]))
/// END

/// REPLACE
                    if (__actname == "S-Action")
                        __actname = __plainactname
                    if (__actname == "R-Action")
                        __actname = __plainactname
                    if (__actname == "N-Action")
                        __actname = __plainactname
/// CODE
                    if (__actname == "Actiune-S")
                        __actname = __plainactname
                    if (__actname == "Actiune-R")
                        __actname = __plainactname
                    if (__actname == "Actiune-N")
                        __actname = __plainactname
/// END

/// REPLACE
    draw_text((xx + spell_offset), (yy + 440), string_hash_to_newline(string(thiscost) + "% TP"))
/// CODE
    draw_text((xx + spell_offset), (yy + 440), string_hash_to_newline(string(thiscost) + "% PT"))
/// END

/// REPLACE
        draw_text((xx + 500), (yy + 440), string_hash_to_newline(string(thiscost) + "% TP"))
/// CODE
        draw_text((xx + 500), (yy + 440), string_hash_to_newline(string(thiscost) + "% PT"))
/// END