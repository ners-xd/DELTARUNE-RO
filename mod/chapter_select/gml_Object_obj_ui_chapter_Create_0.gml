/// PATCH

/// REPLACE
    var chapter_text = "Chapter " + string(_chapter);
/// CODE
    if (global.lang == "en")
        chapter_text = "Capitolul " + string(_chapter);
    else
        chapter_text = "Chapter " + string(_chapter);
/// END

/// REPLACE
    var play_text = (global.lang == "en") ? "Play" : "プレイする";
    var cancel_text = (global.lang == "en") ? "Do Not" : "もどる";
/// CODE
    var play_text = (global.lang == "en") ? "Joacă" : "プレイする";
    var cancel_text = (global.lang == "en") ? "Nu juca" : "もどる";
/// END