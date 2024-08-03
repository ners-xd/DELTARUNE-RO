/// PATCH

/// REPLACE
            draw_sprite_part_ext(chsprite, chnum, 0, i, w, 2, (95 + xoff), (y + i + chyoffset - 9), 1, 1, c_white, ((1 - factor) / 2))
            draw_sprite_part_ext(chsprite, chnum, 0, i, w, 2, (95 + xoff2), (y + i + chyoffset - 9), 1, 1, c_white, ((1 - factor) / 2))
            draw_sprite_part_ext(chsprite, chnum, 0, i, w, 2, (95 + xoff3), (y + i + chyoffset - 9), 1, 1, c_white, ((1 - factor) / 2))
/// CODE
            draw_sprite_part_ext(chsprite, chnum, 0, i, w, 2, (88.5 + xoff), (y + i + chyoffset - 9), 1, 1, c_white, ((1 - factor) / 2))
            draw_sprite_part_ext(chsprite, chnum, 0, i, w, 2, (88.5 + xoff2), (y + i + chyoffset - 9), 1, 1, c_white, ((1 - factor) / 2))
            draw_sprite_part_ext(chsprite, chnum, 0, i, w, 2, (88.5 + xoff3), (y + i + chyoffset - 9), 1, 1, c_white, ((1 - factor) / 2))
/// END

/// REPLACE
        draw_sprite(chsprite, chnum, 160, (y + chyoffset))
/// CODE
        draw_sprite(chsprite, chnum, 153.5, (y + chyoffset))
/// END

/// REPLACE
            scr_windowcaption("DELTARUNE")
/// CODE
            if (global.chapter == 1)
                scr_windowcaption_ch1("")
            else
                scr_windowcaption("")
/// END

/// REPLACE
        draw_sprite_ext(chsprite, chnum, 160, (y + chyoffset), image_xscale, image_yscale, 0, c_white, AB)
/// CODE
        draw_sprite_ext(chsprite, chnum, 153.5, (y + chyoffset), image_xscale, image_yscale, 0, c_white, AB)
/// END

/// REPLACE
            draw_sprite_ext(chsprite, chnum, (x + w / 2 - (sin(siner / 8 + i / 2)) * (i * factor2)), (chyoffset - 17 + y + h / 2 - (cos(siner / 8 + i / 2)) * (i * factor2)), image_xscale, image_yscale, 0, c_white, (mina * AA))
            draw_sprite_ext(chsprite, chnum, (x + w / 2 + (sin(siner / 8 + i / 2)) * (i * factor2)), (chyoffset - 17 + y + h / 2 - (cos(siner / 8 + i / 2)) * (i * factor2)), image_xscale, image_yscale, 0, c_white, (mina * AA))
            draw_sprite_ext(chsprite, chnum, (x + w / 2 - (sin(siner / 8 + i / 2)) * (i * factor2)), (chyoffset - 17 + y + h / 2 + (cos(siner / 8 + i / 2)) * (i * factor2)), image_xscale, image_yscale, 0, c_white, (mina * AA))
            draw_sprite_ext(chsprite, chnum, (x + w / 2 + (sin(siner / 8 + i / 2)) * (i * factor2)), (chyoffset - 17 + y + h / 2 + (cos(siner / 8 + i / 2)) * (i * factor2)), image_xscale, image_yscale, 0, c_white, (mina * AA))
/// CODE
            draw_sprite_ext(chsprite, chnum, (x + w / 2 - (sin(siner / 8 + i / 2)) * i * factor2 - 6.5), (chyoffset - 17 + y + h / 2 - (cos(siner / 8 + i / 2)) * (i * factor2)), image_xscale, image_yscale, 0, c_white, (mina * AA))
            draw_sprite_ext(chsprite, chnum, (x + w / 2 + (sin(siner / 8 + i / 2)) * i * factor2 - 6.5), (chyoffset - 17 + y + h / 2 - (cos(siner / 8 + i / 2)) * (i * factor2)), image_xscale, image_yscale, 0, c_white, (mina * AA))
            draw_sprite_ext(chsprite, chnum, (x + w / 2 - (sin(siner / 8 + i / 2)) * i * factor2 - 6.5), (chyoffset - 17 + y + h / 2 + (cos(siner / 8 + i / 2)) * (i * factor2)), image_xscale, image_yscale, 0, c_white, (mina * AA))
            draw_sprite_ext(chsprite, chnum, (x + w / 2 + (sin(siner / 8 + i / 2)) * i * factor2 - 6.5), (chyoffset - 17 + y + h / 2 + (cos(siner / 8 + i / 2)) * (i * factor2)), image_xscale, image_yscale, 0, c_white, (mina * AA))
/// END

/// REPLACE
            if (ingame == 1)
                room_goto(room_ed)
            else
                room_goto(PLACE_MENU)
/// CODE
            if (ingame == 1)
                room_goto(room_ed)
            else
                room_goto((global.chapter == 1 ? PLACE_MENU_ch1 : PLACE_MENU))
/// END

/// REPLACE
        if (skiptimer >= 30)
            room_goto(PLACE_MENU)
/// CODE
        if (skiptimer >= 30)
            room_goto((global.chapter == 1 ? PLACE_MENU_ch1 : PLACE_MENU))
/// END