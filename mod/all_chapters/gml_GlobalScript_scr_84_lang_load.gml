/// FUNCTIONS .ignore if CHAPTER_SELECT || CHAPTER_1

function scr_84_lang_load()
{
    ds_map_destroy(global.lang_map);
    global.lang_map = scr_84_load_map_json(working_directory + (global.lang == "en" ? "lang/lang_ro.json" : "lang/lang_ja.json"));
    return "orig";
}