<?php

namespace App\Http\Controllers;

use App\Models\Photo;
use App\Models\Gallery;
use App\Models\Like;
use Illuminate\Http\Request;
use App\Http\Requests\PhotoRequest;
use Illuminate\Support\Facades\auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;



class PhotoController extends Controller
{
    public function index(Gallery $gallery)
    {
   
        $photos = Photo::withCount('likes', 'comments')->get();
        return response()->json($photos, 200);
    }



    // Menampilkan Detail Foto berdasarkan ID
    public function show($id)
    {
        $photo = Photo::with(['comments.user', 'likes'])->findOrFail($id);
        $likeCount = $photo->likes()->count();
        $isLiked = Auth::check() && $photo->likes()->where('user_id', Auth::id())->exists();

        return response()->json([
            'photo' => $photo,
            'like_count' => $likeCount,
            'is_liked' => $isLiked,
        ]);
    }


    // **3. Toggle Like: Like dan Unlike Foto**
    public function toggleLike($id)
    {
        $photo = Photo::findOrFail($id);
        $user = Auth::user();

        $existingLike = $photo->likes()->where('user_id', $user->id)->first();

        if ($existingLike) {
            $existingLike->delete();
            return response()->json(['message' => 'Photo unliked.'], 200);
        } else {
            $photo->likes()->create(['user_id' => $user->id]);
            return response()->json(['message' => 'Photo liked.'], 201);
        }
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
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'gallery_id' => 'required|exists:galleries,id',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'image_url' => 'nullable|url',
        ]);
    
        try {
            // Cek apakah file diunggah
            if ($request->hasFile('image')) {
                $path = $request->file('image')->store('public/images');
                $validated['image_url'] = Storage::url($path);
            }
    
            // Cek apakah tidak ada file atau URL
            if (empty($validated['image_url'])) {
                return response()->json(['error' => 'Either an image file or image URL is required.'], 422);
            }
    
            // Simpan data ke database
            $photo = Photo::create($validated);
            return response()->json(['message' => 'Photo added successfully', 'photo' => $photo], 201);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed to create photo', 'details' => $e->getMessage()], 500);
        }
    }
    

    
    
    
    


    
    

    public function edit(Photo $photo)
    {
        return view('photos.edit', compact('photo'));
    }

    public function update(Request $request, Photo $photo)
    {
        if (Str::contains($request->header('Content-Type'), 'multipart/form-data')) {
            $request->method('POST'); // Override metode PUT ke POST untuk multipart/form-data
        }
    
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'image_url' => 'nullable|url',
        ]);
    
        try {
            // Cek apakah file diunggah
            if ($request->hasFile('image')) {
                $path = $request->file('image')->store('public/images');
                $validated['image_url'] = Storage::url($path);
            }
    
            // Perbarui data di database
            $photo->update($validated);
    
            return response()->json(['message' => 'Photo updated successfully', 'photo' => $photo], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed to update photo', 'details' => $e->getMessage()], 500);
        }
    }
    
    
    
    
    
    


    public function destroy(Photo $photo)
    {
        $photo->delete();
        return redirect()->route('photos.index', $photo->gallery_id)->with('success', 'Photo deleted successfully');
    }
}
