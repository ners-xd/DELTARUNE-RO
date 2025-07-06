/// PATCH

/// REPLACE
        draw_text_shadow(80, 190, CANCELTEXT);
/// CODE
        draw_text_shadow(55, 190, CANCELTEXT);
/// END

/// REPLACE
        CHSELECTTEXT = (TYPE == 1) ? "Chapter Select" : "CHAPTER SELECT";
        
        if (global.lang == "ja")
        {
            CHSELECTTEXT = "チャプター選択";
            LANGUAGETEXT = "ENGLISH";
            
            if (TYPE == 1)
                LANGUAGETEXT = "English";
        }
/// CODE
        CHSELECTTEXT = (TYPE == 1) ? "Cuprins" : "CUPRINS";
        
        if (global.lang == "ja")
        {
            CHSELECTTEXT = "チャプター選択";
            LANGUAGETEXT = "ROMÂNĂ";
            
            if (TYPE == 1)
                LANGUAGETEXT = "Română";
        }
/// END

/// REPLACE
            QUITTEXT = "End Program";
/// CODE
            QUITTEXT = "Închide Programul";
/// END

/// REPLACE
draw_text_shadow(__view_get(e__VW.XView, 0) + 8, __view_get(e__VW.YView, 0) + 4, "CHAPTER 1");
/// CODE
draw_text_shadow(__view_get(e__VW.XView, 0) + 8, __view_get(e__VW.YView, 0) + 4, (global.lang == "en") ? "CAPITOLUL 1" : "CHAPTER 1");
/// END