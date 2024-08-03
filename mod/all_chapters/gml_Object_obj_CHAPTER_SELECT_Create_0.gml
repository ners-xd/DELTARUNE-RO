/// PATCH

// Punem titlul ferestrei la final ca să fie în funcție de limba selectată
/// REPLACE
window_set_caption("DELTARUNE Chapter 1&2")
/// CODE

/// END

// Compilatorul dă eroare dacă nu ștergi asta
/// REPLACE
stringset = "0"
/// CODE

/// END

/// REPLACE
    yes = (global.lang == "en" ? "Yes" : "はい")
    no = (global.lang == "en" ? "No" : "いいえ")
    chapname[1] = (global.lang == "en" ? "The Beginning" : "はじまり")
    chapname[2] = (global.lang == "en" ? "A Cyber's World" : "サイバーワールド")
/// CODE
    yes = (global.lang == "en" ? "Da" : "はい")
    no = (global.lang == "en" ? "Nu" : "いいえ")
    chapname[1] = (global.lang == "en" ? "Începutul" : "はじまり")
    chapname[2] = (global.lang == "en" ? "O lume cibernetică" : "サイバーワールド")
/// END

// Schimbăm titlul ferestrei și setăm volumul la 60% să nu fie prea tare
/// APPEND
window_set_caption((global.lang == "en" ? "DELTARUNE Capitolul 1&2" : "DELTARUNE Chapter 1&2"))
audio_set_master_gain(0, 0.6)
/// END