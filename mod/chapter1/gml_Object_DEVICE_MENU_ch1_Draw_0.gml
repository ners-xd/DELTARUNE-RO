/// PATCH

/// REPLACE
        draw_text_shadow_ch1(80, 190, CANCELTEXT)
/// CODE
        draw_text_shadow_ch1(55, 190, CANCELTEXT)
/// END

/// REPLACE
        CHSELECTTEXT = (TYPE == 1 ? "Chapter Select" : "CHAPTER SELECT")
        if (global.lang == "ja")
        {
            CHSELECTTEXT = "チャプター選択"
            LANGUAGETEXT = "ENGLISH"
            if (TYPE == 1)
                LANGUAGETEXT = "English"
        }
/// CODE
        CHSELECTTEXT = (TYPE == 1 ? "Cuprins" : "CUPRINS")
        if (global.lang == "ja")
        {
            CHSELECTTEXT = "チャプター選択"
            LANGUAGETEXT = "ROMÂNĂ"
            if (TYPE == 1)
                LANGUAGETEXT = "Română"
        }
/// END

/// REPLACE
        draw_text_transformed(195, 230, ("DELTARUNE " + version_text + "(C) Toby Fox 2018-2022 "), 0.5, 0.5, 0)
/// CODE
        draw_text_transformed(195, 230, ("DELTARUNE " + version_text + "(C) Toby Fox 2018-" + string(current_year)), 0.5, 0.5, 0)
/// END

/// REPLACE
draw_text_shadow_ch1(((__view_get((0 << 0), 0)) + 8), ((__view_get((1 << 0), 0)) + 4), "CHAPTER 1")
/// CODE
draw_text_shadow_ch1(((__view_get((0 << 0), 0)) + 8), ((__view_get((1 << 0), 0)) + 4), (global.lang == "en" ? "CAPITOLUL 1" : "CHAPTER 1"))
/// END