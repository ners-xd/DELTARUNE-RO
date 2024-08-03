/// IMPORT

if instance_exists(obj_mainchara)
    checkX = obj_mainchara.x
timer += 2
c_rainbow = make_color_hsv((timer % 255), 255, 255)
curColor = merge_color(merge_color(c_white, c_rainbow, 0.5), c_black, 0.2)
draw_set_color(curColor)
if (createAndStay == 0)
    bg_w = 1480
else if (checkX > bg_w)
{
    if (checkX >= (base_x + 54))
        bg_w = base_x + 106
    if (checkX >= (base_x + 114))
        bg_w = base_x + 162
    if (checkX >= (base_x + 170))
        bg_w = base_x + 238
    if (checkX >= (base_x + 272))
        bg_w = base_x + 318
    if (checkX >= (base_x + 326))
        bg_w = base_x + 358
    if (checkX >= (base_x + 366))
        bg_w = base_x + 434
    if (checkX >= (base_x + 442))
        bg_w = base_x + 458
    if (checkX >= (base_x + 466))
        bg_w = base_x + 514
    if (checkX >= (base_x + 538))
        bg_w = base_x + 574
    if (checkX >= (base_x + 582))
        bg_w = base_x + 650
    if (checkX >= (base_x + 684))
        bg_w = base_x + 732
    if (checkX >= (base_x + 740))
        bg_w = base_x + 792
    if (checkX >= (base_x + 800))
        bg_w = base_x + 852
    if (checkX >= (base_x + 860))
    {
        bg_w = base_x + 910
        if (global.plot < 67)
            global.plot = 67
    }
}
draw_rectangle(base_x, 90, bg_w, 230, 0)
draw_set_color(c_white)