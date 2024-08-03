/// PATCH

/// AFTER
        window_set_caption(argument0)
/// CODE
    if (window_get_caption() == "DELTARUNE")
        window_set_caption((global.lang == "en" ? "DELTARUNE Capitolul 1" : "DELTARUNE Chapter 1"))
/// END