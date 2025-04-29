/// PATCH

// Punem titlul ferestrei la final ca să fie în funcție de limba selectată
/// REPLACE
window_set_caption("DELTARUNE Chapter 1&2");
/// CODE

/// END

/// REPLACE
    yes = (global.lang == "en") ? "Yes" : "はい";
    no = (global.lang == "en") ? "No" : "いいえ";
    chapname[1] = (global.lang == "en") ? "The Beginning" : "はじまり";
    chapname[2] = (global.lang == "en") ? "A Cyber's World" : "サイバーワールド";
/// CODE
    yes = (global.lang == "en") ? "Da" : "はい";
    no = (global.lang == "en") ? "Nu" : "いいえ";
    chapname[1] = (global.lang == "en") ? "Începutul" : "はじまり";
    chapname[2] = (global.lang == "en") ? "O lume cibernetică" : "サイバーワールド";
/// END

/// APPEND
window_set_caption((global.lang == "en") ? "DELTARUNE Capitolul 1&2" : "DELTARUNE Chapter 1&2");
/// END