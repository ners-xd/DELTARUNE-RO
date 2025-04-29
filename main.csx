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

EnsureDataLoaded();

string gameDir = Path.GetDirectoryName(FilePath);
string scriptDir = Path.GetDirectoryName(ScriptPath);
string modDir = Path.Combine(scriptDir, "mod");
string umtScriptsDir = Path.Combine(scriptDir, "scripts");
string tempCheck = "";
switch(Data?.GeneralInfo?.DisplayName?.Content)
{
    case "DELTARUNE Chapter Select":
        tempCheck = Path.Combine(modDir, "chapter_select");
        break;

    case "DELTARUNE Chapter 1":
        tempCheck = Path.Combine(modDir, "chapter1");
        break;

    case "DELTARUNE Chapter 2":
        tempCheck = Path.Combine(modDir, "chapter2");
        break;

    case "DELTARUNE Chapter 3":
        tempCheck = Path.Combine(modDir, "chapter3");
        break;

    case "DELTARUNE Chapter 4":
        tempCheck = Path.Combine(modDir, "chapter4");
        break;

    case "DELTARUNE Chapter 5":
        tempCheck = Path.Combine(modDir, "chapter5");
        break;

    case "DELTARUNE Chapter 6":
        tempCheck = Path.Combine(modDir, "chapter6");
        break;

    case "DELTARUNE Chapter 7":
        tempCheck = Path.Combine(modDir, "chapter7");
        break;
}

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

    if(chapter > 0)
        if(ScriptQuestion("Dorești să fie înlocuit fișierul lang_ro.json cu cel din mod (sau să fie adăugat dacă nu este deja)?"))
            File.Copy(Path.Combine(modDir, $"chapter{chapter}/lang_ro.json"), Path.Combine(gameDir, "lang/lang_ro.json"), true);

    RunUMTScript(Path.Combine(umtScriptsDir, "ImportFontData.csx"));

    if(Directory.Exists(Path.Combine(tempCheck, "sounds")))
        RunUMTScript(Path.Combine(umtScriptsDir, "ImportASound.csx"));

    if(Directory.Exists(Path.Combine(tempCheck, "sprites")))
        RunUMTScript(Path.Combine(umtScriptsDir, "ImportGraphics.csx"));

    loader.Load();

    ScriptMessage(chapter == 0 ? "DELTARUNE (Selectare Capitol) în Română a fost importat cu succes!" : $"DELTARUNE Capitolul {chapter} în Română a fost importat cu succes!");
}

// Adapted from original tilesets script by Grossley
// Modified by NERS for UMP usage (doesn't work if used with RunUMTScript for some reason)

if(Directory.Exists(Path.Combine(tempCheck, "tilesets")))
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
            string path = "";
            switch(Data?.GeneralInfo?.DisplayName?.Content)
            {
                case "DELTARUNE Chapter Select":
                    path = Path.Combine(tempCheck, "tilesets", filename);
                    break;

                case "DELTARUNE Chapter 1":
                    path = Path.Combine(tempCheck, "tilesets", filename);
                    break;

                case "DELTARUNE Chapter 2":
                    path = Path.Combine(tempCheck, "tilesets", filename);
                    break;

                case "DELTARUNE Chapter 3":
                    path = Path.Combine(tempCheck, "tilesets", filename);
                    break;

                case "DELTARUNE Chapter 4":
                    path = Path.Combine(tempCheck, "tilesets", filename);
                    break;

                case "DELTARUNE Chapter 5":
                    path = Path.Combine(tempCheck, "tilesets", filename);
                    break;

                case "DELTARUNE Chapter 6":
                    path = Path.Combine(tempCheck, "tilesets", filename);
                    break;

                case "DELTARUNE Chapter 7":
                    path = Path.Combine(tempCheck, "tilesets", filename);
                    break;
            }

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
