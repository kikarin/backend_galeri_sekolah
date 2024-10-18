<?php

namespace App\Http\Controllers;

use App\Models\Photo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class LikeController extends Controller
{
    public function toggleLike($id)
    {
        if (!Auth::check()) {
            Log::error('User not authenticated'); // Debug log
            return response()->json(['message' => 'Unauthorized'], 401);
        }
    
        $user = Auth::user();
        Log::info('User authenticated: ' . $user->id); // Debug log
    
        $photo = Photo::findOrFail($id);
        $existingLike = $photo->likes()->where('user_id', $user->id)->first();
    
        if ($existingLike) {
            $existingLike->delete();
            return response()->json(['message' => 'Photo unliked.'], 200);
        } else {
            $photo->likes()->create(['user_id' => $user->id]);
            return response()->json(['message' => 'Photo liked.'], 201);
        }
    }
    
}
