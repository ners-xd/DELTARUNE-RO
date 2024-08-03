/// PATCH

/// REPLACE
        LANGUAGETEXT = (global.lang == "en" ? stringset("日本語") : stringset("English"))
/// CODE
        LANGUAGETEXT = (global.lang == "en" ? stringset("日本語") : stringset("Română"))
/// END

/// REPLACE
        draw_text_transformed(195, 230, ("DELTARUNE " + version_text + " (C) Toby Fox 2018-2022 "), 0.5, 0.5, 0)
/// CODE
        draw_text_transformed(195, 230, ("DELTARUNE " + version_text + " (C) Toby Fox 2018-" + string(current_year)), 0.5, 0.5, 0)
/// END

/// REPLACE
    draw_text_shadow(40, 30, TEMPCOMMENT)
/// CODE
    draw_text_shadow(40, (string_count("#", TEMPCOMMENT) ? 18 : 30), TEMPCOMMENT)
/// END

/// REPLACE
draw_text_shadow((camerax() + 8), (cameray() + 4), ("CHAPTER " + string(global.chapter)))
/// CODE
draw_text_shadow((camerax() + 8), (cameray() + 4), (global.lang == "en" ? "CAPITOLUL 2" : "CHAPTER 2"))
/// END