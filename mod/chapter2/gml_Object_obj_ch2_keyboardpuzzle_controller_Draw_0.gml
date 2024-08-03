/// PATCH

// Mutăm textul "ACORDTOATE" un pic mai la stânga ca să încapă
/// REPLACE
if (room == room_dw_cyber_keyboard_puzzle_2)
    _xx += 40
/// CODE
if (room == room_dw_cyber_keyboard_puzzle_2)
{
    _xx += 40
    if(global.lang == "en")
        _xx -= 5
}
/// END