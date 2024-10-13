<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log; 

class GalleryController extends Controller
{
public function index()
{
    $galleries = Gallery::with('photos')->get(); // Sertakan foto
    return response()->json($galleries);
}

    

    public function create()
    {
        return view('galleries.create');
    }

    public function store(Request $request)
    {
        Log::info('Request Data:', ['data' => $request->all()]);  // Memperbaiki cara log

        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'user_id' => 'required|exists:users,id',
        ]);

        Log::info('Validated Data:', ['data' => $validatedData]);

        $gallery = Gallery::create($validatedData);

        Log::info('Gallery Created:', ['data' => $gallery->toArray()]);

        return response()->json([
            'message' => 'Gallery created successfully',
            'data' => $gallery
        ], 201);
    }
    

public function show(Gallery $gallery)
{
    // Eager loading photos agar performa lebih baik
    $gallery = Gallery::with('photos')->findOrFail($gallery->id);
    return response()->json($gallery);
}

    

    public function edit(Gallery $gallery)
    {
        return view('galleries.edit', compact('gallery'));
    }

    public function update(Request $request, Gallery $gallery)
    {
        // Validasi input
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'user_id' => 'required|exists:users,id', // Pastikan user_id valid
        ]);

        // Update galeri dengan data yang divalidasi
        $gallery->update($validatedData);

        return redirect()->route('galleries.index')->with('success', 'Gallery updated successfully');
    }

    public function destroy(Gallery $gallery)
    {
        $gallery->delete();
        return redirect()->route('galleries.index')->with('success', 'Gallery deleted successfully');
    }
}

