#load "ump.csx"

using System.Linq;
using System.Drawing;

string gameDir = Path.GetDirectoryName(FilePath);
string scriptDir = Path.GetDirectoryName(ScriptPath);
string modDir = Path.Combine(scriptDir, "mod");

string umtScriptsDir = Path.Combine(scriptDir, "scripts");
string gameFile = "";

class ROLoader : UMPLoader
{
    public override string CodePath => "mod/";

    public override bool UseGlobalScripts => true;

    public override string[] GetCodeNames(string filePath)
    {
        return new string[] { Path.GetFileNameWithoutExtension(filePath) };
    }

    public ROLoader(UMPWrapper wrapper) : base(wrapper) {}
}

void BuildMod()
{
    ROLoader loader = new ROLoader(UMP_WRAPPER);

    // Importarea fișierelor json în joc
    if(ScriptQuestion("Dorești să fie înlocuite fișierele lang_ro_ch1.json și lang_ro.json cu cele din mod (sau să fie adăugate dacă nu sunt deja)?"))
    {
        foreach(FileInfo langFile in new DirectoryInfo(Path.Combine(modDir, "lang")).GetFiles())
        {
            gameFile = Path.Combine(gameDir, "lang", langFile.Name);
            File.Delete(gameFile);
            langFile.CopyTo(gameFile);
        }
    }

    // Celelalte scripturi pentru importarea fișierelor
    RunUMTScript(Path.Combine(umtScriptsDir, "ImportASound.csx"));
    RunUMTScript(Path.Combine(umtScriptsDir, "ImportFontData.csx"));
    RunUMTScript(Path.Combine(umtScriptsDir, "ImportGraphics.csx"));
    RunUMTScript(Path.Combine(umtScriptsDir, "ImportAllTilesets.csx"));

    loader.Load();
    
    ScriptMessage("DELTARUNE Capitolul 1&2 în Română a fost importat cu succes!");
}