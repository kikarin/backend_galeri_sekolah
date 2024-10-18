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
        // Validasi apakah input berupa file gambar atau URL
        $request->validate([
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'image_url' => 'nullable|url',
            'album_id' => 'required|exists:albums,id'
        ]);
    
        $picture = new Picture;
    
        // Jika file gambar diunggah
        if ($request->hasFile('image') && $request->file('image')->isValid()) {
            $path = $request->file('image')->store('public/images'); // Simpan di storage
            $picture->image_url = Storage::url($path); // URL gambar
        } 
        // Jika URL diberikan dan tidak ada file gambar
        elseif ($request->filled('image_url')) {
            $picture->image_url = $request->input('image_url'); // Simpan URL dari input
        } else {
            return response()->json(['error' => 'Either image or image_url is required'], 422);
        }
    
        // Simpan ID album dan simpan ke database
        $picture->album_id = $request->album_id;
        $picture->save();
    
        return response()->json([
            'message' => 'Picture added successfully',
            'picture' => $picture
        ], 201);
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

