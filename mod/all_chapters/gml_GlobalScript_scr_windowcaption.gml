/// PATCH .ignore if CHAPTER_1

// De ce nu au folosit global.chapter aici?
/// REPLACE
#if CHAPTER_4
        window_set_caption("DELTARUNE Chapter 4");
#else
        window_set_caption("DELTARUNE Chapter " + string(global.chapter));
#endif
/// CODE
        if (global.lang == "en")
            window_set_caption("DELTARUNE Capitolul " + string(global.chapter));
        else
            window_set_caption("DELTARUNE Chapter " + string(global.chapter));
/// END