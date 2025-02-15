/// PATCH

// :D
/// REPLACE
        if (x >= 256)
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_347_0");
/// CODE
        if (x >= 256)
        {
            global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_347_0");
            if (global.lang == "en" && irandom(99) == 69)
                global.msg[0] = "* (E un desen primitiv cu mă-ta.)/%";
        }
/// END