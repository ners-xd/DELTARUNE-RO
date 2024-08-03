/// PATCH

/// REPLACE
                if (global.itemvalue[i] > 1)
                    draw_text(300, (260 + j * 40), string_hash_to_newline("$" + (string(ceil(global.itemvalue[i] / 2)))))
/// CODE
                if (global.itemvalue[i] > 1)
                    draw_text(300, (260 + j * 40), string_hash_to_newline((string(ceil(global.itemvalue[i] / 2))) + "$"))
/// END

/// REPLACE
                if (weaponvalue[i] > 1)
                    draw_text(300, (260 + j * 40), string_hash_to_newline("$" + (string(ceil(weaponvalue[i] / 2)))))
/// CODE
                if (weaponvalue[i] > 1)
                    draw_text(300, (260 + j * 40), string_hash_to_newline((string(ceil(weaponvalue[i] / 2))) + "$"))
/// END

/// REPLACE
                if (armorvalue[i] > 1)
                    draw_text(300, (260 + j * 40), string_hash_to_newline("$" + (string(ceil(armorvalue[i] / 2)))))
/// CODE
                if (armorvalue[i] > 1)
                    draw_text(300, (260 + j * 40), string_hash_to_newline((string(ceil(armorvalue[i] / 2))) + "$"))
/// END