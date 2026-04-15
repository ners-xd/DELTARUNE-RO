/// PATCH

/// REPLACE

      if (con == 10 && customcon == 1 && !d_ex())
      {
          con = 11;
    
          with (spotlight_fx)
              instance_destroy();
    
          with (blackall)
              depth = 5000;
    
          camerax_set(0);
          cameray_set(0);
          global.choice = -1;
          global.choicemsg[0] = (global.lang == "ja") ? "#VTRを#スキップ" : "#Skip the#video";
          global.choicemsg[1] = (global.lang == "ja") ? "#それでも#まだ見る" : "#Try and#watch anyway";
          global.choicemsg[2] = stringset("");
          global.choicemsg[3] = stringset("");
          var prompt_text = (global.lang == "ja") ? "＊ おーっとぉ！&　 VTRの様子がおかしいぞ！/" : "* W-Wait^1! The VHS isn't working!/";
          scr_speaker("tenna");
          msgset(0, prompt_text);
          msgnext("\\C2 ");
          var d = d_make();
          d.zurasu = 0;
      }

/// CODE
      if (con == 10 && customcon == 1 && !d_ex())
      {
          con = 11;
    
          with (spotlight_fx)
              instance_destroy();
    
          with (blackall)
              depth = 5000;
    
          camerax_set(0);
          cameray_set(0);
          global.choice = -1;
          global.choicemsg[0] = (global.lang == "ja") ? "#VTRを#スキップ" : "#Treci peste#video";
          global.choicemsg[1] = (global.lang == "ja") ? "#それでも#まだ見る" : "#Încearcă#să vezi oricum";
          global.choicemsg[2] = stringset("");
          global.choicemsg[3] = stringset("");
          var prompt_text = (global.lang == "ja") ? "＊ おーっとぉ！&　 VTRの様子がおかしいぞ！/" : "* St-stai^1! Caseta nu merge!/";
          scr_speaker("tenna");
          msgset(0, prompt_text);
          msgnext("\\C2 ");
          var d = d_make();
          d.zurasu = 0;
      }
