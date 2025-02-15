/// PATCH

/// REPLACE
    var chapter_text = "Chapter " + string(_chapter)
/// CODE
	if(global.lang == "en")
    	var chapter_text = "Capitolul " + string(_chapter);
	else
    	var chapter_text = "Chapter " + string(_chapter);
/// END

/// REPLACE
    var play_text = (global.lang == "en" ? "Play" : "プレイする")
    var cancel_text = (global.lang == "en" ? "Do Not" : "もどる")
/// CODE
    var play_text = (global.lang == "en") ? "Joacă" : "プレイする";
    var cancel_text = (global.lang == "en") ? "Nu juca" : "もどる";
/// END

// UTMT Community Edition compiler bug fix
/// REPLACE
        _completed_files[array_length(_completed_files)] = is_completed
/// CODE
        var len = array_length(_completed_files);
        _completed_files[len] = is_completed;
/// END