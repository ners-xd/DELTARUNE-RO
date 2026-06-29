/// PATCH .ignore if CHAPTER_1

// :D
/// REPLACE
#if CHAPTER_1 || CHAPTER_2 || CHAPTER_3 || CHAPTER_4
        if (x >= 256)
            global.msg[0] = stringsetloc("* (It's a primitive drawing of your mom.)/%", "obj_readable_room1_slash_Other_10_gml_530_0");
#else
        if (x >= 256)
        {
            scr_speaker("no_name");
            global.msg[0] = stringsetloc("* (It's a primitive drawing of your mom.)/%", "obj_readable_room1_slash_Other_10_gml_530_0");
        }
#endif
/// CODE
        if (x >= 256)
        {
        #if !CHAPTER_1 && !CHAPTER_2 && !CHAPTER_3 && !CHAPTER_4
            scr_speaker("no_name");
        #endif
            global.msg[0] = stringsetloc("* (It's a primitive drawing of your mom.)/%", "obj_readable_room1_slash_Other_10_gml_530_0");

            if (global.lang == "en" && irandom(99) == 69)
                global.msg[0] = "* (E un desen primitiv cu mă-ta.)/%";
        }
/// END
