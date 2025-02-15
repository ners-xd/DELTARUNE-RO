/// PATCH .ignore if CHAPTER_1

/// REPLACE
        LANGUAGETEXT = (global.lang == "en") ? stringset("日本語") : stringset("English");
/// CODE
        LANGUAGETEXT = (global.lang == "en") ? stringset("日本語") : stringset("Română");
/// END

/// REPLACE
    draw_text_shadow(40, 30, TEMPCOMMENT);
/// CODE
    draw_text_shadow(40, (string_count("#", TEMPCOMMENT)) ? 18 : 30, TEMPCOMMENT);
/// END

/// REPLACE
draw_text_shadow(camerax() + 8, cameray() + 4, "CHAPTER " + string(global.chapter));
/// CODE
if(global.lang == "en")
    draw_text_shadow(camerax() + 8, cameray() + 4, "CAPITOLUL " + string(global.chapter));
else
    draw_text_shadow(camerax() + 8, cameray() + 4, "CHAPTER " + string(global.chapter)); 
/// END