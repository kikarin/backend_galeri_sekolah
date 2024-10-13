<?php

namespace App\Http\Controllers;

use App\Models\Photo;
use App\Models\Gallery;
use Illuminate\Http\Request;
use App\Http\Requests\PhotoRequest;
use Illuminate\Support\Facades\Log;

class PhotoController extends Controller
{
    public function index(Gallery $gallery)
    {
        $photos = Photo::all(); // Mengambil semua data dari tabel photos
        return response()->json($photos);
    }

    public function create(Gallery $gallery)
    {
        return view('photos.create', compact('gallery'));
    }

    public function getPhotosByGallery($galleryId)
    {
        $photos = Photo::where('gallery_id', $galleryId)->get();
        return response()->json($photos, 200);
    }
    public function store(Request $request)
    {
        // Log data request
        Log::info('Request received:', $request->all());
    
        // Validasi input
        $validated = $request->validate([
            'title' => 'required|string|max:255', // Menambahkan validasi untuk title
            'description' => 'nullable|string', // Menambahkan validasi untuk description
            'image_url' => 'required|url',
            'gallery_id' => 'required|exists:galleries,id'
        ]);
    
        // Log data yang divalidasi
        Log::info('Validated data:', $validated);
    
        // Membuat photo baru
        try {
            $photo = Photo::create($validated);
            Log::info('Photo created:', $photo->toArray());
    
            return response()->json([
                'message' => 'Photo added successfully',
                'photo' => $photo
            ], 201);
        } catch (\Exception $e) {
            Log::error('Error creating photo:', ['error' => $e->getMessage()]);
            return response()->json(['error' => 'Failed to create photo'], 500);
        }
    }
    
    

    public function show(Photo $photo)
    {
        // Eager loading comments dan relasi user
        $photo = Photo::with('comments.user')->findOrFail($photo->id);
        return response()->json($photo);
    }
    
    

    public function edit(Photo $photo)
    {
        return view('photos.edit', compact('photo'));
    }

    public function update(Request $request, Photo $photo)
    {
        $request->validate([
            'title' => 'required|string|max:255', // Validasi title
            'description' => 'nullable|string',   // Validasi description
            'image_url' => 'required|url'
        ]);
    
        // Update photo dengan data yang di-validate
        $photo->update($request->all());
    
        return response()->json([
            'message' => 'Photo updated successfully',
            'photo' => $photo
        ], 200);
    }
    


    public function destroy(Photo $photo)
    {
        $photo->delete();
        return redirect()->route('photos.index', $photo->gallery_id)->with('success', 'Photo deleted successfully');
    }
}
