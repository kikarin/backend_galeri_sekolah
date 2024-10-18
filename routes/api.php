<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Http\Controllers\UserController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\PhotoController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\InfoController;
use App\Http\Controllers\AgendaController;
use App\Http\Controllers\AlbumController;
use App\Http\Controllers\PictureController;
use App\Http\Controllers\LikeController;

/*
|--------------------------------------------------------------------------
| Public Routes (No Authentication Required)
|--------------------------------------------------------------------------
*/
Route::post('/login', [UserController::class, 'login']);
Route::post('/register', [UserController::class, 'register']);
Route::delete('/comments/{id}', [CommentController::class, 'destroy']);

/*
|--------------------------------------------------------------------------
| Resource Routes for Basic CRUD
|--------------------------------------------------------------------------
*/
Route::apiResource('users', UserController::class);
Route::apiResource('galleries', GalleryController::class);
Route::apiResource('photos', PhotoController::class);
Route::apiResource('comments', CommentController::class);
Route::apiResource('infos', InfoController::class);
Route::apiResource('agendas', AgendaController::class);
Route::apiResource('albums', AlbumController::class);
Route::apiResource('pictures', PictureController::class);
Route::apiResource('profiles', ProfileController::class);

/*
|--------------------------------------------------------------------------
| Route Groups with Middleware (Authenticated Routes)
|--------------------------------------------------------------------------
*/
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    Route::post('/check-email', [UserController::class, 'checkEmail']);

    Route::middleware('auth:sanctum')->group(function () {
        Route::post('/photos/{id}/like', [LikeController::class, 'toggleLike']);
    });
    
    // Get photos by gallery (with authentication)
    Route::get('/galleries/{gallery}/photos', [PhotoController::class, 'getPhotosByGallery']);
});

/*
|--------------------------------------------------------------------------
| Album and Picture Specific Routes
|--------------------------------------------------------------------------
*/
// Route for listing pictures in a specific album
Route::get('/albums/{album}/pictures', [PictureController::class, 'index']);

// Route for storing pictures inside an album
Route::post('/albums/{album}/pictures', [PictureController::class, 'store']);

// Route for downloading a specific picture
Route::get('/pictures/{picture}/download', [PictureController::class, 'download']);


Route::post('/photos/{photo}/update', [PhotoController::class, 'update']);

Route::get('/photos', [PhotoController::class, 'index']); // List Semua Foto
Route::get('/photos/{id}', [PhotoController::class, 'show']); // Detail Foto


