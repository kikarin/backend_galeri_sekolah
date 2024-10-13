<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class UserController extends Controller
{
    public function index()
    {
        $users = User::where('role', 'user')->get();
        return response()->json($users);
    }
    

    public function show(User $user)
    {
        return response()->json($user);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:6',
            'role' => 'required|in:user,admin',
        ]);

        // Menghilangkan bcrypt, menyimpan password sebagai plaintext
        $user = User::create($validatedData);

        return response()->json([
            'message' => 'User created successfully',
            'user' => $user
        ], 201);
    }

    public function login(Request $request)
    {
        Log::info('Login request received', ['email' => $request->email]); 
        try {
            $request->validate([
                'email' => 'required|email',
                'password' => 'required'
            ]);
    
            $user = User::where('email', $request->email)->first();
    
            if (!$user) {
                Log::error('User not found', ['email' => $request->email]);
                return response()->json(['message' => 'Unauthorized'], 401);
            }
    
            // Membandingkan password plaintext
            if ($request->password !== $user->password) {
                Log::error('Invalid password', ['email' => $request->email]);
                return response()->json(['message' => 'Unauthorized'], 401);
            }
    
            $token = $user->createToken('auth_token')->plainTextToken;
            Log::info('User authenticated successfully', ['email' => $request->email]);
    
            return response()->json([
                'access_token' => $token,
                'token_type' => 'Bearer',
                'user' => $user
            ], 200);
        } catch (\Exception $e) {
            Log::error('Login failed', ['error' => $e->getMessage()]);
            return response()->json(['message' => 'Server error'], 500);
        }
    }
    

    public function register(Request $request)
    {
        try {
            $validatedData = $request->validate([
                'name' => 'required|max:255',
                'email' => 'required|email|unique:users,email',
                'password' => 'required|min:6',
            ]);
    
            // Tetapkan role menjadi 'user' secara otomatis
            $validatedData['role'] = 'user';
    
            // Membuat user dengan data yang tervalidasi
            $user = User::create($validatedData);
    
            return response()->json([
                'message' => 'User registered successfully',
                'user' => $user
            ], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Server Error', 'error' => $e->getMessage()], 500);
        }
    }
    
    
    public function update(Request $request, User $user)
    {
        $validatedData = $request->validate([
            'name' => 'sometimes|required|max:255',
            'email' => 'sometimes|required|email|unique:users,email,' . $user->id,
            'password' => 'sometimes|required|min:6',
            'role' => 'sometimes|required|in:user,admin',
        ]);
        
        // Memperbarui user tanpa mengubah password menjadi hash
        $user->update($validatedData);

        return response()->json([
            'message' => 'User updated successfully',
            'user' => $user
        ]);
    }

    public function destroy(User $user)
    {
        $user->delete();
        return response()->json(['message' => 'User deleted successfully']);
    }
}
