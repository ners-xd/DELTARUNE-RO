/// PATCH

/// REPLACE
    var start_text = (global.lang == "en" ? "Would you like to start from Chapter 1?" : "Chapter 1から始めますか？")
    var yes_text = (global.lang == "en" ? "Yes" : "はい")
    var no_text = (global.lang == "en" ? "No" : "いいえ")
/// CODE
    var start_text = (global.lang == "en") ? "Vrei să începi de la Capitolul 1?" : "Chapter 1から始めますか？";
    var yes_text = (global.lang == "en") ? "Da" : "はい";
    var no_text = (global.lang == "en") ? "Nu" : "いいえ";
/// END

/// REPLACE
    var continue_text = "Continue from Chapter " + string(_chapter_in_progress) + "?"
    if (global.lang == "ja")
        continue_text = "Chapter " + string(_chapter_in_progress) + "から続けますか？"
    var yes_text = (global.lang == "en" ? "Yes" : "はい")
    var no_text = (global.lang == "en" ? "No" : "いいえ")
/// CODE
    var continue_text = "Continui de la Capitolul " + string(_chapter_in_progress) + "?";
    
    if (global.lang == "ja")
        continue_text = "Chapter " + string(_chapter_in_progress) + "から続けますか？";
    
    var yes_text = (global.lang == "en") ? "Da" : "はい";
    var no_text = (global.lang == "en") ? "Nu" : "いいえ";
/// END

/// REPLACE
    var continue_text = "Chapter " + string(_chapter_completed) + " was completed."
    if (global.lang == "ja")
        continue_text = "Chapter " + string(_chapter_completed) + "はクリア済みです。"
    var play_next_text = "Play Chapter " + (string(_chapter_completed + 1))
    if (global.lang == "ja")
        play_next_text = "Chapter " + (string(_chapter_completed + 1)) + "をプレイ"
    var chapter_select_text = (global.lang == "en" ? "Chapter Select" : "チャプター選択")
/// CODE
    var continue_text = "Capitolul " + string(_chapter_completed) + " a fost completat.";
    
    if (global.lang == "ja")
        continue_text = "Chapter " + string(_chapter_completed) + "はクリア済みです。";
    
    var play_next_text = "Începe Capitolul " + string(_chapter_completed + 1);
    
    if (global.lang == "ja")
        play_next_text = "Chapter " + string(_chapter_completed + 1) + "をプレイ";
    
    var chapter_select_text = (global.lang == "en") ? "Cuprins" : "チャプター選択";
/// END

/// REPLACE
            game_change(("/chapter" + chapstring + "_windows"), ("-game data.win" + parameters))
/// CODE
            game_change("/chapter" + chapstring + "_windows", "-game \"data ch" + chapstring + " ro.win\"" + parameters);
/// END

/// AFTER
        room_restart()
/// CODE
    window_set_caption(global.lang == "en" ? "DELTARUNE Capitolul 1&2" : "DELTARUNE Chapter 1&2");
/// END