/// PATCH

/// REPLACE
    if (global.lang == "ja")
    {
        c_customfunc(function()
        {
            global.writersnd[0] = snd_flowery_voiceclip_sorrytokeepyouwaiting3_ja;
        });
        c_msgset(0, "\\E2\\Vz＊ おっとっと^1。これは\n　 大変失礼しました^1　お嬢さま。/%");
    }
    else
    {
        c_msgset(0, "\\E2\\VO* Ah^1, sorry^1, m'lady./%");
    }
/// CODE
    if (global.lang == "ja")
    {
        c_customfunc(function()
        {
            global.writersnd[0] = snd_flowery_voiceclip_sorrytokeepyouwaiting3_ja;
        });
        c_msgset(0, "\\E2\\Vz＊ おっとっと^1。これは\n　 大変失礼しました^1　お嬢さま。/%");
    }
    else
    {
        c_msgset(0, "\\E2\\VO* Ah^1, iartă-mă^1, draga mea./%");
    }
/// END

/// REPLACE
    if (global.lang == "ja")
    {
        c_customfunc(function()
        {
            global.writersnd[0] = snd_flowery_voiceclip_yourdadsmybestfriend2_ja;
        });
        c_msgset(0, "\\E0\\Vz＊ …親友だった。/");
    }
    else
    {
        c_msgset(0, "\\E0\\VH* ..^1. and best friend./");
    }
/// CODE
    if (global.lang == "ja")
    {
        c_customfunc(function()
        {
            global.writersnd[0] = snd_flowery_voiceclip_yourdadsmybestfriend2_ja;
        });
        c_msgset(0, "\\E0\\Vz＊ …親友だった。/");
    }
    else
    {
        c_msgset(0, "\\E0\\VH* ..^1. și cel mai bun prieten al lui./");
    }
/// END

/// REPLACE
    if (global.lang == "ja")
        c_msgnext("\\E0\\VO＊ へへっ^1。\n　 お待たせしちゃって\n　 ゴメンゴメン。/");
    else
        c_msgnext("\\E0\\V1* Heh^1. Sorry to keep you waiting^1, old pal./");
/// CODE
    if (global.lang == "ja")
        c_msgnext("\\E0\\VO＊ へへっ^1。\n　 お待たせしちゃって\n　 ゴメンゴメン。/");
    else
        c_msgnext("\\E0\\V1* Heh^1. Nu vreau să te fac să aștepți^1, prietene./");
/// END