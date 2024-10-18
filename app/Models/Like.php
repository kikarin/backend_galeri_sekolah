<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    protected $fillable = ['photo_id', 'user_id'];

    // Relasi dengan Foto
    public function photo()
    {
        return $this->belongsTo(Photo::class);
    }
}
