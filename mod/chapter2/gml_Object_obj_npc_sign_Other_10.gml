/// PATCH

/// REPLACE
                    msgnextsubloc("* ~1 LEFT./%", string(strong_check), "obj_npc_sign_slash_Other_10_gml_642_0_b")
/// CODE
                    if (global.lang == "en" && strong_check == 1)
                        global.msg[5] = "* MAI ESTE 1./%"
                    else
                        msgnextsubloc("* ~1 LEFT./%", string(strong_check), "obj_npc_sign_slash_Other_10_gml_642_0_b")
/// END

/// REPLACE
                    msgnextsubloc("* ~1 LEFT./%", string(strong_check), "obj_npc_sign_slash_Other_10_gml_649_0")
/// CODE
                    if (global.lang == "en" && strong_check == 1)
                        global.msg[3] = "* MAI ESTE 1./%"
                    else
                        msgnextsubloc("* ~1 LEFT./%", string(strong_check), "obj_npc_sign_slash_Other_10_gml_649_0")
/// END