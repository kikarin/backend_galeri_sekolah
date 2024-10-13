<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function index()
    {
        $comments = Comment::with('user', 'photo')->paginate(10);  // Ambil dengan paginasi 10 comments per halaman
        return response()->json($comments);
    }
    


    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'photo_id' => 'required|exists:photos,id',
            'user_id' => 'required|exists:users,id',
            'content' => 'required|string'
        ]);
    
        $comment = Comment::create($validatedData);
    
        // Muat relasi user
        $comment->load('user');
    
        return response()->json([
            'message' => 'Comment created successfully',
            'comment' => $comment
        ], 201);
    }
    

    public function edit(Comment $comment)
    {
        return view('comments.edit', compact('comment'));
    }

    public function update(Request $request, Comment $comment)
    {
        $request->validate([
            'content' => 'required|string'  // Tambahkan validasi untuk field yang di-update jika perlu
        ]);
    
        $comment->update($request->all());
    
        return response()->json([
            'message' => 'Comment updated successfully',
            'comment' => $comment
        ], 200);
    }
    

    public function destroy($id)
    {
        $comment = Comment::find($id);
        if ($comment) {
            $comment->delete();
            return response()->json(['message' => 'Comment deleted successfully']);
        } else {
            return response()->json(['message' => 'Comment not found'], 404);
        }
    }
    
}

