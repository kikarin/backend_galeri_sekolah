<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Gallery extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'user_id', // Tambahkan user_id ke fillable
    ];

    public function photos()
    {
        return $this->hasMany(Photo::class);
    }
}
