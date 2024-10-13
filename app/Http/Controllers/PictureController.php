<?php


namespace App\Http\Controllers;

use App\Models\Picture;
use App\Models\Album;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class PictureController extends Controller
{
    public function index(Album $album)
    {
        $pictures = $album->pictures;
        return response()->json($pictures);
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required|image',  // memastikan file adalah gambar
            'album_id' => 'required|exists:albums,id'
        ]);
    
        if ($request->hasFile('image') && $request->file('image')->isValid()) {
            $path = $request->file('image')->store('public/images');
            $picture = new Picture;
            $picture->image_url = Storage::url($path);  // Menyimpan URL ke database
            $picture->album_id = $request->album_id;
            $picture->save();
    
            return response()->json([
                'message' => 'Picture added successfully',
                'picture' => $picture
            ], 201);
        } else {
            return response()->json(['error' => 'Invalid image upload'], 422);
        }
    }
    
    
    public function update(Request $request, Picture $picture)
    {
        $request->validate([
            'image_url' => 'required|url'
        ]);
        
        // Hanya memperbarui 'image_url' jika perlu
        $picture->image_url = $request->image_url;
        $picture->save();
    
        return response()->json([
            'message' => 'Picture updated successfully',
            'data' => $picture
        ], 200);
    }
    

    public function download(Picture $picture)
    {
        $filePath = 'images/' . $picture->image_url; // Sesuaikan 'images/' jika perlu
        $fullPath = public_path('storage/' . $filePath); // Menggunakan public_path untuk direktori public
    
        if (!file_exists($fullPath)) {
            return response()->json(['error' => 'File not found.'], 404);
        }
    
        $file = file_get_contents($fullPath);
        $type = File::mimeType($fullPath); // Gunakan File::mimeType
    
        return response()->make($file, 200, [
            'Content-Type' => $type,
            'Content-Disposition' => 'attachment; filename="' . basename($fullPath) . '"'
        ]);
    }
    

    public function destroy(Picture $picture)
    {
        $filePath = 'images/' . $picture->image_url;
        if (Storage::disk('public')->exists($filePath)) {
            Storage::disk('public')->delete($filePath);
        }
    
        $picture->delete();
        return response()->json([
            'message' => 'Picture deleted successfully'
        ], 200);
    }
    
}

