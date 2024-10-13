<?php
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Http\Controllers\UserController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\PhotoController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\ProfileController; // Import ProfileController
use App\Http\Controllers\InfoController;
use App\Http\Controllers\AgendaController;
use App\Http\Controllers\AlbumController;
use App\Http\Controllers\PictureController;

// Define API resources
Route::apiResource('users', UserController::class);
Route::apiResource('galleries', GalleryController::class);
Route::apiResource('photos', PhotoController::class);
Route::apiResource('comments', CommentController::class);
Route::apiResource('infos', InfoController::class);
Route::apiResource('agendas', AgendaController::class);
Route::apiResource('albums', AlbumController::class);
Route::apiResource('pictures', PictureController::class);
Route::apiResource('profiles', ProfileController::class); 


Route::post('/login', [UserController::class, 'login']);
Route::post('/register', [UserController::class, 'register']);
Route::delete('/comments/{id}', [CommentController::class, 'destroy']);

// Sanctum Authenticated Routes
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/user', function (Request $request) {
        return $request->user();
    });
    Route::post('/check-email', [UserController::class, 'checkEmail']);
});

Route::middleware('auth:sanctum')->group(function () {
    Route::get('/galleries/{gallery}/photos', [PhotoController::class, 'getPhotosByGallery']);
});

Route::get('/albums/{album}/pictures', [PictureController::class, 'index']);

Route::post('/albums/{album}/pictures', [PictureController::class, 'store']);

Route::get('/pictures/{picture}/download', [PictureController::class, 'download']);
