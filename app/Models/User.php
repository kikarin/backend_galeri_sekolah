<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens,HasFactory, Notifiable;

    protected $fillable = [
        'name',
        'email',
        'password',
        'role',
    ];

    protected $attributes = [
        'role' => 'user', 
    ];
    

    protected $hidden = [
        'password',
        'remember_token',
    ];
    public function galleries() {
        return $this->hasMany(Gallery::class);
    }
    
    public function photos() {
        return $this->hasMany(Photo::class);
    }
       
    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function albums()
    {
        return $this->hasMany(Album::class);
    }
}
