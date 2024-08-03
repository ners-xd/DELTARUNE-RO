// Adapted from original script by Grossley
// Modified by NERS for UMP usage

using System.Text;
using System;
using System.IO;
using System.Drawing;
using System.Threading;
using System.Threading.Tasks;

EnsureDataLoaded();

string subPath = Path.Combine(Path.GetDirectoryName(ScriptPath), "../mod/tilesets");
await ImportTilesets();

async Task ImportTilesets()
{
    await Task.Run(() => Parallel.ForEach(Data.Backgrounds, ImportTileset));
}

void ImportTileset(UndertaleBackground tileset)
{
    try
    {
        string path = Path.Combine(subPath, tileset.Name.Content + ".png");
        if(File.Exists(path))
        {
            Bitmap img = new Bitmap(path);
            tileset.Texture.ReplaceTexture((Image)img);
        }
    }
    catch(Exception ex)
    {
        ScriptMessage($"Failed to import file {tileset.Name} (index - {Data.Backgrounds.IndexOf(tileset)}) due to: " + ex.Message);
    }
}