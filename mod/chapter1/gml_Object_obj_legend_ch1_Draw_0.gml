/// PATCH

// Bug fix din vanilla - Una dintre imagini este dată prea în dreapta și se vede o bară de pixeli negri
/// REPLACE
        if (contimer >= 552)
        {
            xoff = 0
/// CODE
        if (contimer >= 552)
        {
            xoff = 1
/// END

/// REPLACE
            else
                room_goto(PLACE_LOGO_ch1)
/// CODE
            else
                room_goto(PLACE_LOGO)
/// END

/// REPLACE
    if (skiptimer == 20)
        room_goto(PLACE_LOGO_ch1)
/// CODE
    if (skiptimer == 20)
        room_goto(PLACE_LOGO)
/// END