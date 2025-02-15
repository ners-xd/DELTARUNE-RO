#load "_underanalyzer_ump_3.0.0.csx"

using System.Linq;
using System.Drawing;

string gameDir = Path.GetDirectoryName(FilePath);
string scriptDir = Path.GetDirectoryName(ScriptPath);
string modDir = Path.Combine(scriptDir, "mod");
string umtScriptsDir = Path.Combine(scriptDir, "scripts");

class ROLoader : UMPLoader
{
    public override string CodePath => "mod/";

    public override bool UseGlobalScripts => true;

    public override string[] Symbols => chnum switch
    {
        0 => new[] { "CHAPTER_SELECT" },
        1 => new[] { "CHAPTER_1" },
        2 => new[] { "CHAPTER_2" },
        3 => new[] { "CHAPTER_3" },
        4 => new[] { "CHAPTER_4" },
        5 => new[] { "CHAPTER_5" },
        6 => new[] { "CHAPTER_6" },
        7 => new[] { "CHAPTER_7" },
        _ => throw new NotImplementedException()
    };

    public override string[] GetCodeNames(string filePath)
    {
        List<string> entries = new List<string>();
        string fileName = Path.GetFileNameWithoutExtension(filePath);
        if((chnum > 0 && filePath.Contains("all_chapters")) || filePath.Contains(chnum == 0 ? "chapter_select" : $"chapter{chnum}"))
            entries.Add(fileName);

        return entries.ToArray();
    }

    public ROLoader(UMPWrapper wrapper, int chapter) : base(wrapper)
    {
        chnum = chapter;
    }

    public int chnum { get; set; }
}

void BuildMod(int chapter)
{
    ROLoader loader = new ROLoader(UMP_WRAPPER, chapter);

    // Importarea fișierului json în joc
    if(chapter > 0)
        if(ScriptQuestion("Dorești să fie înlocuit fișierul lang_ro.json cu cel din mod (sau să fie adăugat dacă nu este deja)?"))
            File.Copy(Path.Combine(modDir, $"chapter{chapter}/lang_ro.json"), Path.Combine(gameDir, "lang/lang_ro.json"), true);

    // Celelalte scripturi pentru importarea fișierelor
    RunUMTScript(Path.Combine(umtScriptsDir, "ImportFontData.csx"));
    
    string tempCheck = "";
    switch(chapter)
    {
        case 0:
            tempCheck = Path.Combine(modDir, "chapter_select");
            break;

        case 1:
            tempCheck = Path.Combine(modDir, "chapter1");
            break;

        case 2:
            tempCheck = Path.Combine(modDir, "chapter2");
            break;

        case 3:
            tempCheck = Path.Combine(modDir, "chapter3");
            break;

        case 4:
            tempCheck = Path.Combine(modDir, "chapter4");
            break;

        case 5:
            tempCheck = Path.Combine(modDir, "chapter5");
            break;

        case 6:
            tempCheck = Path.Combine(modDir, "chapter6");
            break;

        case 7:
            tempCheck = Path.Combine(modDir, "chapter7");
            break;
    }

    if(Directory.Exists(Path.Combine(tempCheck, "sounds")))
        RunUMTScript(Path.Combine(umtScriptsDir, "ImportASound.csx"));

    if(Directory.Exists(Path.Combine(tempCheck, "sprites")))
        RunUMTScript(Path.Combine(umtScriptsDir, "ImportGraphics.csx"));
        
    if(Directory.Exists(Path.Combine(tempCheck, "tilesets")))
        RunUMTScript(Path.Combine(umtScriptsDir, "ImportAllTilesets.csx"));

    loader.Load();

    ScriptMessage(chapter == 0 ? "DELTARUNE (Selectare Capitol) în Română a fost importat cu succes!" : $"DELTARUNE Capitolul {chapter} în Română a fost importat cu succes!");
}
