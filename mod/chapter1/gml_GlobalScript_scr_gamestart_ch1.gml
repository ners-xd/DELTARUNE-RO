/// PATCH

// Bug fix din vanilla - Chapter 1 nu își schimbă volumul și este implicit la 100% nu 60% ca Chapter 2
/// AFTER
    global.disable_border = false
/// CODE
    global.flag[16] = 0.85
    global.flag[17] = 0.6
    audio_set_master_gain(0, global.flag[17])
/// END