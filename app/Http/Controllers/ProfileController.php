<?php

namespace App\Http\Controllers;

use App\Models\Profile;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class ProfileController extends Controller
{
    // Fungsi untuk menyimpan profil baru
    public function index()
    {
        $profiles = Profile::all();
        return response()->json($profiles, Response::HTTP_OK);
    }
    
    public function store(Request $request)
    {
        $request->validate([
            'user_id' => 'required|exists:users,id',
            'class' => 'nullable|string',
            'birthdate' => 'nullable|date',
            'bio' => 'nullable|string'
        ]);

        $profile = Profile::create($request->all());
        return response()->json($profile, 201);
    }

    // Fungsi untuk memperbarui profil
    public function update(Request $request, Profile $profile)
    {
        $request->validate([
            'class' => 'nullable|string',
            'birthdate' => 'nullable|date',
            'bio' => 'nullable|string'
        ]);

        $profile->update($request->all());
        return response()->json($profile);
    }

    // Fungsi untuk menghapus profil
    public function destroy(Profile $profile)
    {
        $profile->delete();
        return response()->json(['message' => 'Profile deleted successfully']);
    }
}

