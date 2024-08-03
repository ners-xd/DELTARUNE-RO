/// PATCH

// :D
/// REPLACE
        if (x >= 256)
            global.msg[0] = stringsetloc("* (It's a primitive drawing of your mom.)/%", "obj_readable_room1_slash_Other_10_gml_530_0")
/// CODE
        if (x >= 256)
        {
            global.msg[0] = stringsetloc("* (It's a primitive drawing of your mom.)/%", "obj_readable_room1_slash_Other_10_gml_530_0")
            if (global.lang == "en" && irandom(99) == 69)
                global.msg[0] = "* (E un desen primitiv cu mă-ta.)/%"
        }
/// END