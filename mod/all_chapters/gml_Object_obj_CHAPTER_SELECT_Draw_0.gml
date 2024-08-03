/// PATCH

/// REPLACE
if global.is_console
{
    if chapter_is_loading
    {
        draw_set_font(fnt_mainbig)
        draw_set_halign(fa_center)
        draw_text(320, 250, "LOADING...")
    }
}
/// CODE
if chapter_is_loading
{
    draw_set_font(fnt_mainbig)
    draw_set_halign(fa_center)
    draw_text(320, 250, (global.lang == "en" ? "SE ÎNCARCĂ..." : "LOADING..."))
}
/// END

/// REPLACE
    my_stringset = (global.lang == "en" ? "Would you like to start from Chapter 1?" : "Chapter 1から始めますか？")
/// CODE
    my_stringset = (global.lang == "en" ? "Vrei să începi de la Capitolul 1?" : "Chapter 1から始めますか？")
/// END

/// REPLACE
    my_stringset = "Chapter " + string(highestCompletedChapter) + " was completed."
    stringset2 = "Play Chapter " + (string(highestCompletedChapter + 1))
/// CODE
    my_stringset = "Capitolul " + string(highestCompletedChapter) + " a fost completat."
    stringset2 = "Începe Capitolul " + (string(highestCompletedChapter + 1))
/// END

/// REPLACE
    var select_text = (global.lang == "en" ? "Chapter Select" : "チャプター選択")
/// CODE
    var select_text = (global.lang == "en" ? "Cuprins" : "チャプター選択")
/// END

/// REPLACE
    my_stringset = "Continue from Chapter " + string(highestUncompletedChapter) + "?"
/// CODE
    my_stringset = "Continui de la Capitolul " + string(highestUncompletedChapter) + "?"
/// END

/// REPLACE
    quit = (global.lang == "en" ? "Quit" : "とじる")
    chapterstring = "Chapter"
/// CODE
    quit = (global.lang == "en" ? "Ieși" : "とじる")
    chapterstring = (global.lang == "en" ? "Capitolul" : "Chapter")
/// END

/// REPLACE
        draw_text_transformed(xx, ((-fadescaled) + yy + mspace * i + 3 * scale), (chapterstring + " " + (string(i + 1))), scale, scale, 0)
/// CODE
        draw_text_transformed((xx - 15), ((-fadescaled) + yy + mspace * i + 3 * scale), (chapterstring + " " + (string(i + 1))), scale, scale, 0)
/// END

/// REPLACE
    var heart_xpos = xx - 15 * scale
/// CODE
    var heart_xpos = xx - 25 * scale
/// END

/// REPLACE
    stringPlay = (global.lang == "en" ? "Play" : "プレイする")
    stringDoNot = (global.lang == "en" ? "Do Not" : "しない")
/// CODE
    stringPlay = (global.lang == "en" ? "Joacă" : "プレイする")
    stringDoNot = (global.lang == "en" ? "Nu juca" : "しない")
/// END

/// REPLACE
        draw_text_transformed(xx, ((-fade) + yy + mspace * i + 3 * scale), (chapterstring + " " + (string(i + 1))), scale, scale, 0)
/// CODE
        draw_text_transformed((xx - 15), ((-fade) + yy + mspace * i + 3 * scale), (chapterstring + " " + (string(i + 1))), scale, scale, 0)
/// END