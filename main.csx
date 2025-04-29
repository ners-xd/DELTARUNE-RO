#load "ump.csx"

using ImageMagick;
using System;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using UndertaleModLib.Util;

string gameDir = Path.GetDirectoryName(FilePath);
string scriptDir = Path.GetDirectoryName(ScriptPath);
string modDir = Path.Combine(scriptDir, "mod");

string umtScriptsDir = Path.Combine(scriptDir, "scripts");
string gameFile = "";

EnsureDataLoaded();

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

    if(ScriptQuestion("Dorești să fie înlocuite fișierele lang_ro_ch1.json și lang_ro.json cu cele din mod (sau să fie adăugate dacă nu sunt deja)?"))
    {
        foreach(FileInfo langFile in new DirectoryInfo(Path.Combine(modDir, "lang")).GetFiles())
        {
            gameFile = Path.Combine(gameDir, "lang", langFile.Name);
            File.Delete(gameFile);
            langFile.CopyTo(gameFile);
        }
    }

    RunUMTScript(Path.Combine(umtScriptsDir, "ImportASound.csx"));
    RunUMTScript(Path.Combine(umtScriptsDir, "ImportFontData.csx"));
    RunUMTScript(Path.Combine(umtScriptsDir, "ImportGraphics.csx"));
    
    loader.Load();

    ScriptMessage("DELTARUNE Capitolul 1&2 în Română a fost importat cu succes!");
}

// Adapted from original tilesets script by Grossley
// Modified by NERS for UMP usage (doesn't work if used with RunUMTScript for some reason)

await ImportTilesets();

async Task ImportTilesets()
{
    await Task.Run(() => Parallel.ForEach(Data.Backgrounds, ImportTileset));
}

void ImportTileset(UndertaleBackground tileset)
{
    if (tileset is not null)
    {
        string filename = $"{tileset.Name.Content}.png";
        try
        {
            string path = Path.Combine(Path.GetDirectoryName(ScriptPath), "mod/tilesets", filename);
            if (File.Exists(path))
            {
                using MagickImage img = TextureWorker.ReadBGRAImageFromFile(path);
                tileset.Texture.ReplaceTexture(img);
            }
        }
        catch (Exception ex)
        {
            ScriptMessage($"Failed to import {filename} (index {Data.Backgrounds.IndexOf(tileset)}): {ex.Message}");
        }
    }
}
