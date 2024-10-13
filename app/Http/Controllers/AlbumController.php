<?php

namespace App\Http\Controllers;

use App\Models\Album;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log; 

class AlbumController extends Controller
{
    public function index()
    {
        $albums = Album::with('pictures')->get();
        return response()->json($albums);
    }

    public function store(Request $request)
    {
        Log::info('Request Data:', ['data' => $request->all()]);

        $validated = $request->validate([
            'title' => 'required|max:255',
            'user_id' => 'required|exists:users,id',
        ]);

        Log::info('Validated Data:', ['data' => $validated]);

        $album = Album::create($validated);

        return response()->json([
            'message' => 'Album created successfully',
            'data' => $album
        ], 201);
    }

    public function show(Album $album)
    {
        $album = Album::with('pictures')->findOrFail($album->id);
        return response()->json($album);
    }

    public function update(Request $request, Album $album)
    {
        $validated = $request->validate([
            'title' => 'required|max:255',
            'user_id' => 'required|exists:users,id',
        ]);

        $album->update($validated);

        return response()->json([
            'message' => 'Album updated successfully',
            'data' => $album
        ], 200);
    }

    public function destroy(Album $album)
    {
        $album->delete();
        return response()->json([
            'message' => 'Album deleted successfully'
        ], 200);
    }
}

