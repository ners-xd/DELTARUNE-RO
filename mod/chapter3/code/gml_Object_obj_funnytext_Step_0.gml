/// PATCH

/// REPLACE
    init = 1;
    
    if (playsound)
        snd_play(typingnoise);
/// CODE
    init = 1;
    
    if (sprite_index == spr_funnytext_love && !instance_exists(obj_ch3_GSA02))
        image_index = 1;
    
    if (sprite_index == spr_funnytext_grand_prize && instance_exists(obj_ch3_PTB02))
        image_index = 1;
    
    if (sprite_index == spr_funnytext_board && instance_exists(obj_ch3_GSB03))
        image_index = 1;
    
    if (playsound)
        snd_play(typingnoise);
/// END

/// REPLACE
    if (writerfinished)
    {
        image_xscale = idealxscale;
        image_yscale = idealyscale;
        
        with (lerpa)
            instance_destroy();
        
        with (lerpb)
            instance_destroy();
    }
    
    image_index += 1;
/// CODE
    if (writerfinished)
    {
        image_xscale = idealxscale;
        image_yscale = idealyscale;
        
        with (lerpa)
            instance_destroy();
        
        with (lerpb)
            instance_destroy();
    }
    
    if (sprite_index != spr_funnytext_love && sprite_index != spr_funnytext_grand_prize && sprite_index != spr_funnytext_board)
        image_index += 1;
/// END