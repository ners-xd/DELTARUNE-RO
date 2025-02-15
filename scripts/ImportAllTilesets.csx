// Adapted from original script by Grossley
// Modified by NERS for UMP usage (Underanalyzer)

using System.Text;
using System;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using UndertaleModLib.Util;
using ImageMagick;

EnsureDataLoaded();

string subPath = "";
switch(Data?.GeneralInfo?.DisplayName?.Content)
{
    case "DELTARUNE Chapter Select":
        subPath = Path.Combine(Path.GetDirectoryName(ScriptPath), "../mod/chapter_select/tilesets");
        break;

    case "DELTARUNE Chapter 1":
        subPath = Path.Combine(Path.GetDirectoryName(ScriptPath), "../mod/chapter1/tilesets");
        break;

    case "DELTARUNE Chapter 2":
        subPath = Path.Combine(Path.GetDirectoryName(ScriptPath), "../mod/chapter2/tilesets");
        break;

    case "DELTARUNE Chapter 3":
        subPath = Path.Combine(Path.GetDirectoryName(ScriptPath), "../mod/chapter3/tilesets");
        break;

    case "DELTARUNE Chapter 4":
        subPath = Path.Combine(Path.GetDirectoryName(ScriptPath), "../mod/chapter4/tilesets");
        break;

    case "DELTARUNE Chapter 5":
        subPath = Path.Combine(Path.GetDirectoryName(ScriptPath), "../mod/chapter5/tilesets");
        break;

    case "DELTARUNE Chapter 6":
        subPath = Path.Combine(Path.GetDirectoryName(ScriptPath), "../mod/chapter6/tilesets");
        break;

    case "DELTARUNE Chapter 7":
        subPath = Path.Combine(Path.GetDirectoryName(ScriptPath), "../mod/chapter7/tilesets");
        break;
}

ImportTilesets();

async Task ImportTilesets()
{
    await Task.Run(() => Parallel.ForEach(Data.Backgrounds, ImportTileset));
}

void ImportTileset(UndertaleBackground tileset)
{
    string filename = $"{tileset.Name.Content}.png";
    try
    {
        string path = Path.Combine(subPath, filename);
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
