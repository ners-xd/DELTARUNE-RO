/// PATCH .ignore if CHAPTER_1 || CHAPTER_2

/// REPLACE
    var str = ds_map_find_value(global.lang_map, lang_string_id);
/// CODE
    var str = "";
    
    if (variable_global_exists("lang_map"))
        str = ds_map_find_value(global.lang_map, lang_string_id);
/// END