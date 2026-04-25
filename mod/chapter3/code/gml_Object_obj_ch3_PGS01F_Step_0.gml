/// PATCH

/// REPLACE
    global.choicemsg[0] = (global.lang == "ja") ? "#VTRを#スキップ" : "#Skip the#video";
    global.choicemsg[1] = (global.lang == "ja") ? "#それでも#まだ見る" : "#Try and#watch anyway";
    global.choicemsg[2] = stringset("");
    global.choicemsg[3] = stringset("");
    var prompt_text = (global.lang == "ja") ? "＊ おーっとぉ！&　 VTRの様子がおかしいぞ！/" : "* W-Wait^1! The VHS isn't working!/";
/// CODE
    global.choicemsg[0] = (global.lang == "ja") ? "#VTRを#スキップ" : "#Treci peste#video";
    global.choicemsg[1] = (global.lang == "ja") ? "#それでも#まだ見る" : "#Încearcă#să vezi oricum";
    global.choicemsg[2] = stringset("");
    global.choicemsg[3] = stringset("");
    var prompt_text = (global.lang == "ja") ? "＊ おーっとぉ！&　 VTRの様子がおかしいぞ！/" : "* St-stai^1! Caseta nu merge!/";
/// END