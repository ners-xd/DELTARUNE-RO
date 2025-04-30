/// PATCH .ignore if CHAPTER_1

/// REPLACE
        window_set_caption("DELTARUNE Chapter " + string(global.chapter));
/// CODE
        if (global.lang == "en")
            window_set_caption("DELTARUNE Capitolul " + string(global.chapter));
        else
            window_set_caption("DELTARUNE Chapter " + string(global.chapter));
/// END
